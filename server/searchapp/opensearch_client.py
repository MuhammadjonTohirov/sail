from __future__ import annotations

import os
from typing import Optional

from django.conf import settings

try:
    from opensearchpy import OpenSearch
except Exception:  # pragma: no cover - library may be missing in some envs
    OpenSearch = None  # type: ignore


def get_client() -> Optional["OpenSearch"]:
    if OpenSearch is None:
        return None
    url = getattr(settings, "OPENSEARCH_URL", os.environ.get("OPENSEARCH_URL"))
    if not url:
        return None
    return OpenSearch(hosts=[url])

