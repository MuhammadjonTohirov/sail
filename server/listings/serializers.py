from __future__ import annotations

from typing import Any, Dict, List

from rest_framework import serializers

from taxonomy.models import Attribute

from .models import Listing, ListingAttributeValue, ListingMedia


class ListingMediaSerializer(serializers.ModelSerializer):
    image_url = serializers.SerializerMethodField()

    class Meta:
        model = ListingMedia
        fields = ["id", "type", "image", "image_url", "width", "height", "order", "uploaded_at"]
        read_only_fields = ["id", "image_url", "uploaded_at"]

    def get_image_url(self, obj):  # pragma: no cover
        request = self.context.get("request")
        if request:
            return request.build_absolute_uri(obj.image.url)
        return obj.image.url


class ListingSerializer(serializers.ModelSerializer):
    media = ListingMediaSerializer(many=True, read_only=True)
    attributes = serializers.SerializerMethodField()

    class Meta:
        model = Listing
        fields = [
            "id",
            "title",
            "description",
            "price_amount",
            "price_currency",
            "condition",
            "status",
            "category",
            "location",
            "created_at",
            "refreshed_at",
            "expires_at",
            "quality_score",
            "contact_phone_masked",
            "lat",
            "lon",
            "media",
            "attributes",
        ]
        read_only_fields = [
            "status",
            "created_at",
            "refreshed_at",
            "expires_at",
            "quality_score",
            "contact_phone_masked",
        ]

    def get_attributes(self, obj: Listing) -> List[Dict[str, Any]]:  # pragma: no cover
        rows = (
            ListingAttributeValue.objects.filter(listing=obj)
            .select_related("attribute")
            .order_by("attribute_id", "id")
        )
        grouped: Dict[int, Dict[str, Any]] = {}
        for row in rows:
            attr = row.attribute
            if attr.id not in grouped:
                grouped[attr.id] = {
                    "attribute": attr.id,
                    "key": attr.key,
                    "label": attr.label,
                    "type": attr.type,
                    "value": None,
                }
            if attr.type == Attribute.Type.MULTISELECT:
                if grouped[attr.id]["value"] is None:
                    grouped[attr.id]["value"] = []
                grouped[attr.id]["value"].append(row.value_option_key)
            elif attr.type == Attribute.Type.SELECT:
                grouped[attr.id]["value"] = row.value_option_key
            elif attr.type == Attribute.Type.NUMBER or attr.type == Attribute.Type.RANGE:
                grouped[attr.id]["value"] = row.value_number
            elif attr.type == Attribute.Type.BOOLEAN:
                grouped[attr.id]["value"] = row.value_bool
            else:
                grouped[attr.id]["value"] = row.value_text
        return list(grouped.values())


class ListingAttributeInputSerializer(serializers.Serializer):
    attribute = serializers.IntegerField()
    value = serializers.JSONField()

    def validate(self, data):
        attr_id = data["attribute"]
        value = data["value"]
        attrs_by_id: Dict[int, Attribute] = self.context.get("attrs_by_id", {})
        attr = attrs_by_id.get(attr_id)
        if not attr:
            raise serializers.ValidationError({"attribute": "Unknown attribute for this category."})

        typ = attr.type
        if typ == Attribute.Type.TEXT:
            if not isinstance(value, str):
                raise serializers.ValidationError({"value": "Expected string."})
        elif typ in (Attribute.Type.NUMBER, Attribute.Type.RANGE):
            if not isinstance(value, (int, float)):
                raise serializers.ValidationError({"value": "Expected number."})
            # Min/Max validation when configured
            if attr.min_number is not None and float(value) < float(attr.min_number):
                raise serializers.ValidationError({"value": f"Must be >= {attr.min_number}."})
            if attr.max_number is not None and float(value) > float(attr.max_number):
                raise serializers.ValidationError({"value": f"Must be <= {attr.max_number}."})
        elif typ == Attribute.Type.BOOLEAN:
            if not isinstance(value, bool):
                raise serializers.ValidationError({"value": "Expected boolean."})
        elif typ == Attribute.Type.SELECT:
            if not isinstance(value, (str, int)):
                raise serializers.ValidationError({"value": "Expected scalar option key."})
            if attr.options and str(value) not in [str(o) for o in attr.options]:
                raise serializers.ValidationError({"value": "Option not allowed."})
        elif typ == Attribute.Type.MULTISELECT:
            if not isinstance(value, list):
                raise serializers.ValidationError({"value": "Expected list of option keys."})
            if attr.options:
                allowed = set(str(o) for o in attr.options)
                for v in value:
                    if str(v) not in allowed:
                        raise serializers.ValidationError({"value": f"Option not allowed: {v}"})
        else:
            raise serializers.ValidationError({"value": "Unsupported attribute type."})
        return data


class ListingCreateSerializer(serializers.ModelSerializer):
    attributes = ListingAttributeInputSerializer(many=True, required=False)
    class Meta:
        model = Listing
        fields = [
            "title",
            "description",
            "price_amount",
            "price_currency",
            "condition",
            "category",
            "location",
            "lat",
            "lon",
            "attributes",
        ]

    def create(self, validated_data):
        user = self.context["request"].user
        attrs_payload = validated_data.pop("attributes", [])
        listing = Listing.objects.create(user=user, **validated_data)
        # Simple phone masking from username (which is phone in our OTP flow)
        if hasattr(user, "profile") and user.profile.phone_e164:
            phone = user.profile.phone_e164
        else:
            phone = user.username
        listing.contact_phone_masked = phone[:4] + "****" + phone[-2:]
        listing.save(update_fields=["contact_phone_masked"])
        if attrs_payload:
            self._save_attributes(listing, attrs_payload)
        return listing

    def _save_attributes(self, listing: Listing, attrs_payload: List[Dict[str, Any]]):
        # Determine allowed attributes: listing.category and its ancestors
        allowed_category_ids = set()
        cat = listing.category
        while cat:
            allowed_category_ids.add(cat.id)
            cat = cat.parent  # type: ignore[attr-defined]
        # Fetch all attributes for allowed categories
        attrs = Attribute.objects.filter(category_id__in=allowed_category_ids)
        attrs_by_id = {a.id: a for a in attrs}
        # Validate using nested serializer with context
        ser = ListingAttributeInputSerializer(data=attrs_payload, many=True, context={"attrs_by_id": attrs_by_id})
        ser.is_valid(raise_exception=True)
        cleaned = ser.validated_data
        # Required presence validation across payload
        required_ids = {a.id for a in attrs if a.is_required}
        provided_map = {item["attribute"]: item["value"] for item in cleaned}
        missing: List[str] = []
        for rid in required_ids:
            a = attrs_by_id[rid]
            if rid not in provided_map:
                missing.append(a.key)
                continue
            val = provided_map[rid]
            if a.type in (Attribute.Type.TEXT, Attribute.Type.SELECT) and (val is None or str(val) == ""):
                missing.append(a.key)
            elif a.type == Attribute.Type.MULTISELECT and (not isinstance(val, list) or len(val) == 0):
                missing.append(a.key)
            elif a.type in (Attribute.Type.NUMBER, Attribute.Type.RANGE) and val is None:
                missing.append(a.key)
        if missing:
            raise serializers.ValidationError({"attributes": f"Missing required attributes: {', '.join(missing)}"})

        # Clear existing
        ListingAttributeValue.objects.filter(listing=listing).delete()
        # Create rows
        bulk: List[ListingAttributeValue] = []
        for item in cleaned:
            attr = attrs_by_id[item["attribute"]]
            value = item["value"]
            if attr.type == Attribute.Type.MULTISELECT:
                for v in value:
                    bulk.append(
                        ListingAttributeValue(
                            listing=listing,
                            attribute=attr,
                            value_option_key=str(v),
                        )
                    )
            elif attr.type == Attribute.Type.SELECT:
                bulk.append(
                    ListingAttributeValue(
                        listing=listing,
                        attribute=attr,
                        value_option_key=str(value),
                    )
                )
            elif attr.type in (Attribute.Type.NUMBER, Attribute.Type.RANGE):
                bulk.append(
                    ListingAttributeValue(
                        listing=listing,
                        attribute=attr,
                        value_number=float(value),
                    )
                )
            elif attr.type == Attribute.Type.BOOLEAN:
                bulk.append(
                    ListingAttributeValue(
                        listing=listing,
                        attribute=attr,
                        value_bool=bool(value),
                    )
                )
            else:  # TEXT
                bulk.append(
                    ListingAttributeValue(
                        listing=listing,
                        attribute=attr,
                        value_text=str(value),
                    )
                )
        if bulk:
            ListingAttributeValue.objects.bulk_create(bulk)


class ListingUpdateSerializer(serializers.ModelSerializer):
    attributes = ListingAttributeInputSerializer(many=True, required=False)

    class Meta:
        model = Listing
        fields = [
            "title",
            "description",
            "price_amount",
            "price_currency",
            "condition",
            "category",
            "location",
            "lat",
            "lon",
            "attributes",
        ]

    def update(self, instance: Listing, validated_data):
        attrs_payload = validated_data.pop("attributes", None)
        for field, value in validated_data.items():
            setattr(instance, field, value)
        instance.save()
        if attrs_payload is not None:
            # Recompute allowed attributes with possibly new category
            self._save_attributes(instance, attrs_payload)
        return instance

    def _save_attributes(self, listing: Listing, attrs_payload: List[Dict[str, Any]]):
        # Same logic as in create serializer
        allowed_category_ids = set()
        cat = listing.category
        while cat:
            allowed_category_ids.add(cat.id)
            cat = cat.parent  # type: ignore[attr-defined]
        attrs = Attribute.objects.filter(category_id__in=allowed_category_ids)
        attrs_by_id = {a.id: a for a in attrs}
        ser = ListingAttributeInputSerializer(data=attrs_payload, many=True, context={"attrs_by_id": attrs_by_id})
        ser.is_valid(raise_exception=True)
        cleaned = ser.validated_data
        # Required presence validation across payload
        required_ids = {a.id for a in attrs if a.is_required}
        provided_map = {item["attribute"]: item["value"] for item in cleaned}
        missing: List[str] = []
        for rid in required_ids:
            a = attrs_by_id[rid]
            if rid not in provided_map:
                missing.append(a.key)
                continue
            val = provided_map[rid]
            if a.type in (Attribute.Type.TEXT, Attribute.Type.SELECT) and (val is None or str(val) == ""):
                missing.append(a.key)
            elif a.type == Attribute.Type.MULTISELECT and (not isinstance(val, list) or len(val) == 0):
                missing.append(a.key)
            elif a.type in (Attribute.Type.NUMBER, Attribute.Type.RANGE) and val is None:
                missing.append(a.key)
        if missing:
            raise serializers.ValidationError({"attributes": f"Missing required attributes: {', '.join(missing)}"})

        ListingAttributeValue.objects.filter(listing=listing).delete()
        bulk: List[ListingAttributeValue] = []
        for item in cleaned:
            attr = attrs_by_id[item["attribute"]]
            value = item["value"]
            if attr.type == Attribute.Type.MULTISELECT:
                for v in value:
                    bulk.append(ListingAttributeValue(listing=listing, attribute=attr, value_option_key=str(v)))
            elif attr.type == Attribute.Type.SELECT:
                bulk.append(ListingAttributeValue(listing=listing, attribute=attr, value_option_key=str(value)))
            elif attr.type in (Attribute.Type.NUMBER, Attribute.Type.RANGE):
                bulk.append(ListingAttributeValue(listing=listing, attribute=attr, value_number=float(value)))
            elif attr.type == Attribute.Type.BOOLEAN:
                bulk.append(ListingAttributeValue(listing=listing, attribute=attr, value_bool=bool(value)))
            else:
                bulk.append(ListingAttributeValue(listing=listing, attribute=attr, value_text=str(value)))
        if bulk:
            ListingAttributeValue.objects.bulk_create(bulk)
