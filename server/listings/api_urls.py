from django.urls import path

from .views import (
    ListingCreateView,
    ListingDetailView,
    ListingMediaUploadView,
    ListingRefreshView,
    ListingUpdateView,
    MyListingsView,
)

urlpatterns = [
    path("listings", ListingCreateView.as_view(), name="listing-create"),
    path("listings/<int:pk>", ListingDetailView.as_view(), name="listing-detail"),
    path("listings/<int:pk>/edit", ListingUpdateView.as_view(), name="listing-update"),
    path("listings/<int:pk>/refresh", ListingRefreshView.as_view(), name="listing-refresh"),
    path("listings/<int:pk>/media", ListingMediaUploadView.as_view(), name="listing-media-upload"),
    path("my/listings", MyListingsView.as_view(), name="my-listings"),
]

