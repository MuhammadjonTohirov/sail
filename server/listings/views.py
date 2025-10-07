from __future__ import annotations

from django.utils import timezone
from rest_framework import generics, mixins, permissions, status
from rest_framework.parsers import MultiPartParser, FormParser
from rest_framework.response import Response
from rest_framework.views import APIView

from .models import Listing, ListingMedia
from taxonomy.models import Category, Location
from .permissions import IsOwnerOrReadOnly
from .serializers import (
    ListingCreateSerializer,
    ListingMediaSerializer,
    ListingSerializer,
    ListingUpdateSerializer,
)


class ListingCreateView(generics.CreateAPIView):
    queryset = Listing.objects.all()
    serializer_class = ListingCreateSerializer
    permission_classes = [permissions.IsAuthenticated]


class ListingDetailView(generics.RetrieveAPIView):
    queryset = Listing.objects.select_related("category", "location", "user").prefetch_related("media")
    serializer_class = ListingSerializer
    permission_classes = [permissions.AllowAny]


class ListingUpdateView(generics.UpdateAPIView):
    queryset = Listing.objects.all()
    serializer_class = ListingUpdateSerializer
    permission_classes = [permissions.IsAuthenticated, IsOwnerOrReadOnly]


class MyListingsView(generics.ListAPIView):
    serializer_class = ListingSerializer
    permission_classes = [permissions.IsAuthenticated]

    def get_queryset(self):
        return Listing.objects.filter(user=self.request.user).prefetch_related("media")


class ListingRefreshView(APIView):
    permission_classes = [permissions.IsAuthenticated]

    def post(self, request, pk: int):
        try:
            listing = Listing.objects.get(pk=pk, user=request.user)
        except Listing.DoesNotExist:
            return Response({"detail": "Not found"}, status=404)
        listing.refreshed_at = timezone.now()
        listing.save(update_fields=["refreshed_at"])
        return Response({"status": "refreshed", "refreshed_at": listing.refreshed_at})


class ListingMediaUploadView(APIView):
    parser_classes = (MultiPartParser, FormParser)
    permission_classes = [permissions.IsAuthenticated]

    def post(self, request, pk: int):
        try:
            listing = Listing.objects.get(pk=pk, user=request.user)
        except Listing.DoesNotExist:
            return Response({"detail": "Not found"}, status=404)

        file_obj = request.FILES.get("file")
        if not file_obj:
            return Response({"detail": "No file uploaded"}, status=400)

        media = ListingMedia(listing=listing, image=file_obj)
        media.save()
        serializer = ListingMediaSerializer(media, context={"request": request})
        return Response(serializer.data, status=201)


class ListingCreateRawView(APIView):
    permission_classes = [permissions.IsAuthenticated]

    def post(self, request):
        data = request.data or {}

        # Required fields
        title = data.get("title")
        category_id = data.get("category")
        location_id = data.get("location")
        if not title or not category_id or not location_id:
            return Response({
                "detail": "'title', 'category', and 'location' are required."
            }, status=400)

        # Validate category/location exist
        try:
            category_id = int(category_id)
        except Exception:
            return Response({"category": "Must be an integer id."}, status=400)
        try:
            location_id = int(location_id)
        except Exception:
            return Response({"location": "Must be an integer id."}, status=400)

        if not Category.objects.filter(pk=category_id).exists():
            return Response({"category": "Not found."}, status=400)
        if not Location.objects.filter(pk=location_id).exists():
            return Response({"location": "Not found."}, status=400)

        # Optional fields and coercion
        description = data.get("description", "")
        price_amount = data.get("price_amount", 0)
        price_currency = data.get("price_currency", "UZS")
        is_price_negotiable = data.get("is_price_negotiable", False)
        condition = data.get("condition", Listing.Condition.USED)
        deal_type = data.get("deal_type", Listing.DealType.SELL)
        seller_type = data.get("seller_type", Listing.SellerType.PERSON)
        lat = data.get("lat")
        lon = data.get("lon")
        attributes = data.get("attributes", [])

        # Coerce booleans/numbers/enums
        def to_bool(v):
            if isinstance(v, bool):
                return v
            if isinstance(v, str):
                return v.strip().lower() in {"1", "true", "yes", "on"}
            return False

        def to_float_or_none(v):
            if v is None or v == "":
                return None
            try:
                return float(v)
            except Exception:
                return None

        try:
            price_amount = float(price_amount)
        except Exception:
            return Response({"price_amount": "Must be a number."}, status=400)

        is_price_negotiable = to_bool(is_price_negotiable)
        lat = to_float_or_none(lat)
        lon = to_float_or_none(lon)

        if condition not in dict(Listing.Condition.choices):
            return Response({"condition": f"Invalid. Allowed: {list(dict(Listing.Condition.choices).keys())}"}, status=400)
        if deal_type not in dict(Listing.DealType.choices):
            return Response({"deal_type": f"Invalid. Allowed: {list(dict(Listing.DealType.choices).keys())}"}, status=400)
        if seller_type not in dict(Listing.SellerType.choices):
            return Response({"seller_type": f"Invalid. Allowed: {list(dict(Listing.SellerType.choices).keys())}"}, status=400)

        # Create listing
        listing = Listing.objects.create(
            user=request.user,
            title=title,
            description=description,
            price_amount=price_amount,
            price_currency=price_currency,
            is_price_negotiable=is_price_negotiable,
            condition=condition,
            deal_type=deal_type,
            seller_type=seller_type,
            category_id=category_id,
            location_id=location_id,
            lat=lat,
            lon=lon,
        )

        # Phone mask (same logic as serializer.create)
        user = request.user
        if hasattr(user, "profile") and getattr(user.profile, "phone_e164", None):
            phone = user.profile.phone_e164
        else:
            phone = user.username
        listing.contact_phone_masked = (phone[:4] + "****" + phone[-2:]) if phone else ""
        listing.save(update_fields=["contact_phone_masked"])

        # Save attributes using existing logic for consistency
        if isinstance(attributes, list) and attributes:
            from .serializers import ListingCreateSerializer, ListingSerializer
            helper = ListingCreateSerializer(context={"request": request})
            helper._save_attributes(listing, attributes)

        # Respond with full listing payload
        from .serializers import ListingSerializer as OutSerializer
        output = OutSerializer(listing, context={"request": request}).data
        return Response(output, status=201)
