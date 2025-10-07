from __future__ import annotations

from typing import Any, Dict, List

from django.conf import settings
from rest_framework.response import Response
from rest_framework.views import APIView

from .opensearch_client import get_client
from .index import index_name, ensure_index


def _parse_filters(params) -> Dict[str, Any]:
    filters: Dict[str, Any] = {}
    # Handle repeated keys and comma-separated values
    for k, values in params.lists():
        if k.startswith("attrs."):
            key = k.split(".", 1)[1]
            # Support range suffixes _min/_max
            if key.endswith("_min") or key.endswith("_max"):
                filters.setdefault("attrs_range", {})[key] = values[-1]
            else:
                vals: List[str] = []
                for v in values:
                    if "," in v:
                        vals.extend([s for s in v.split(",") if s])
                    else:
                        vals.append(v)
                filters.setdefault("attrs", {})[key] = vals
        elif k in {"category_slug", "location_slug", "min_price", "max_price", "condition"}:
            filters[k] = values[-1]
    return filters


class ListingSearchView(APIView):
    authentication_classes: list = []
    permission_classes: list = []

    def get(self, request):
        client = get_client()
        if not client:
            return Response({"results": [], "total": 0, "note": "Search backend not configured"}, status=200)

        # Quick connectivity guard to avoid noisy connection errors in dev
        try:  # pragma: no cover
            if not client.ping():
                return Response({"results": [], "total": 0, "note": "Search backend unavailable (ping failed)"}, status=200)
        except Exception:  # pragma: no cover
            return Response({"results": [], "total": 0, "note": "Search backend unavailable"}, status=200)

        # Ensure index exists; ignore errors (still attempt a search)
        try:  # pragma: no cover
            ensure_index()
        except Exception:  # pragma: no cover
            pass

        q = request.query_params.get("q")
        sort = request.query_params.get("sort", "relevance")
        page = int(request.query_params.get("page", 1))
        per_page = int(request.query_params.get("per_page", 20))
        per_page = max(1, min(per_page, 50))
        from_ = (page - 1) * per_page
        filters = _parse_filters(request.query_params)

        must: List[Dict[str, Any]] = []
        filter_clauses: List[Dict[str, Any]] = []

        if q:
            must.append({
                "multi_match": {
                    "query": q,
                    "fields": ["title^2", "description"],
                    "type": "best_fields",
                }
            })

        # Category filter: requires full path slug match; we accept single slug and filter on prefix
        if slug := filters.get("category_slug"):
            filter_clauses.append({"terms": {"category_path": [slug]}})

        if lslug := filters.get("location_slug"):
            filter_clauses.append({"terms": {"location_path": [lslug]}})

        if cnd := filters.get("condition"):
            filter_clauses.append({"term": {"condition": cnd}})

        min_price = filters.get("min_price")
        max_price = filters.get("max_price")
        if min_price or max_price:
            rng: Dict[str, Any] = {}
            if min_price:
                rng["gte"] = float(min_price)
            if max_price:
                rng["lte"] = float(max_price)
            filter_clauses.append({"range": {"price": rng}})

        # Attribute filters
        for key, vals in filters.get("attrs", {}).items():
            # For each value, create a should; if multiple values, OR them
            shoulds_all: List[Dict[str, Any]] = []
            for val in vals:
                shoulds: List[Dict[str, Any]] = [
                    {"term": {"attrs.value_option_key": str(val)}},
                    {"term": {"attrs.value_text": str(val)}},
                ]
                vstr = str(val).lower()
                if vstr in {"true", "false"}:
                    shoulds.append({"term": {"attrs.value_bool": vstr == "true"}})
                try:
                    vnum = float(val)
                    shoulds.append({"term": {"attrs.value_number": vnum}})
                except Exception:
                    pass
                shoulds_all.append({
                    "bool": {"must": [
                        {"term": {"attrs.key": key}},
                        {"bool": {"should": shoulds, "minimum_should_match": 1}},
                    ]}
                })
            nested_query = {
                "nested": {
                    "path": "attrs",
                    "query": {
                        "bool": {"should": shoulds_all, "minimum_should_match": 1}
                    },
                }
            }
            filter_clauses.append(nested_query)

        # Attribute numeric ranges
        for rng_key, val in filters.get("attrs_range", {}).items():
            # rng_key format: <attrkey>_min or <attrkey>_max
            if rng_key.endswith("_min"):
                attr_key = rng_key[:-4]
                rng = {"gte": float(val)}
            elif rng_key.endswith("_max"):
                attr_key = rng_key[:-4]
                rng = {"lte": float(val)}
            else:
                continue
            nested_query = {
                "nested": {
                    "path": "attrs",
                    "query": {
                        "bool": {
                            "must": [
                                {"term": {"attrs.key": attr_key}},
                                {"range": {"attrs.value_number": rng}},
                            ]
                        }
                    },
                }
            }
            filter_clauses.append(nested_query)

        sort_clause: List[Any] = []
        if sort == "newest":
            sort_clause = [{"refreshed_at": {"order": "desc"}}]
        elif sort == "price_asc":
            sort_clause = [{"price": {"order": "asc"}}]
        elif sort == "price_desc":
            sort_clause = [{"price": {"order": "desc"}}]

        # Add aggregations for faceted search
        aggs = {
            "categories": {
                "terms": {"field": "category_path", "size": 50}
            },
            "locations": {
                "terms": {"field": "location_path", "size": 50}
            },
            "conditions": {
                "terms": {"field": "condition", "size": 10}
            },
            "price_stats": {
                "stats": {"field": "price"}
            },
            "attrs": {
                "nested": {"path": "attrs"},
                "aggs": {
                    "attr_keys": {
                        "terms": {"field": "attrs.key", "size": 20},
                        "aggs": {
                            "values": {
                                "terms": {"field": "attrs.value_option_key", "size": 30}
                            },
                            "text_values": {
                                "terms": {"field": "attrs.value_text", "size": 30}
                            }
                        }
                    }
                }
            }
        }

        body: Dict[str, Any] = {
            "from": from_,
            "size": per_page,
            "query": {"bool": {"must": must, "filter": filter_clauses}},
            "aggs": aggs,
        }
        if sort_clause:
            body["sort"] = sort_clause

        try:
            resp = client.search(index=index_name(), body=body)
            hits = resp.get("hits", {}).get("hits", [])
            total = resp.get("hits", {}).get("total", {}).get("value", 0)
            aggregations = resp.get("aggregations", {})
            
            results = [
                {
                    "id": h.get("_id"),
                    "score": h.get("_score"),
                    **h.get("_source", {}),
                }
                for h in hits
            ]
            
            # Process aggregations for frontend
            facets = {}
            if "categories" in aggregations:
                facets["categories"] = [
                    {"key": b["key"], "count": b["doc_count"]}
                    for b in aggregations["categories"]["buckets"]
                ]
            if "locations" in aggregations:
                facets["locations"] = [
                    {"key": b["key"], "count": b["doc_count"]}
                    for b in aggregations["locations"]["buckets"]
                ]
            if "conditions" in aggregations:
                facets["conditions"] = [
                    {"key": b["key"], "count": b["doc_count"]}
                    for b in aggregations["conditions"]["buckets"]
                ]
            if "price_stats" in aggregations:
                facets["price_range"] = {
                    "min": aggregations["price_stats"]["min"],
                    "max": aggregations["price_stats"]["max"]
                }
            if "attrs" in aggregations:
                facets["attributes"] = {}
                for attr_bucket in aggregations["attrs"]["attr_keys"]["buckets"]:
                    attr_key = attr_bucket["key"]
                    values = []
                    for val_bucket in attr_bucket["values"]["buckets"]:
                        values.append({"key": val_bucket["key"], "count": val_bucket["doc_count"]})
                    for val_bucket in attr_bucket["text_values"]["buckets"]:
                        values.append({"key": val_bucket["key"], "count": val_bucket["doc_count"]})
                    facets["attributes"][attr_key] = values
            
            return Response({
                "results": results,
                "total": total,
                "page": page,
                "per_page": per_page,
                "facets": facets,
            })
        except Exception as e:
            # Return a graceful response rather than 500 in dev
            return Response({
                "results": [],
                "total": 0,
                "note": f"Search backend unavailable or index missing: {type(e).__name__}",
            }, status=200)
