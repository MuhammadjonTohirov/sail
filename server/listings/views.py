from __future__ import annotations

from django.utils import timezone
from rest_framework import generics, mixins, permissions, status
from rest_framework.parsers import MultiPartParser, FormParser
from rest_framework.response import Response
from rest_framework.views import APIView

from .models import Listing, ListingMedia
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

