from django.urls import path
from rest_framework_simplejwt.views import TokenRefreshView

from .views import (
    MeView,
    OTPRequestView,
    OTPVerifyView,
    ProfileUpdateView,
    ProfileDeleteView,
    ProfileActiveView,
)

urlpatterns = [
    path("auth/otp/request", OTPRequestView.as_view(), name="auth-otp-request"),
    path("auth/otp/verify", OTPVerifyView.as_view(), name="auth-otp-verify"),
    path("auth/refresh", TokenRefreshView.as_view(), name="auth-refresh"),
    path("me", MeView.as_view(), name="me"),
    path("profile", ProfileUpdateView.as_view(), name="profile-update"),
    path("profile/active", ProfileActiveView.as_view(), name="profile-active"),
    path("profile/delete", ProfileDeleteView.as_view(), name="profile-delete"),
]
