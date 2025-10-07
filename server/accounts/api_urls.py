from django.urls import path
from rest_framework_simplejwt.views import TokenRefreshView

from .views import MeView, OTPRequestView, OTPVerifyView

urlpatterns = [
    path("auth/otp/request", OTPRequestView.as_view(), name="auth-otp-request"),
    path("auth/otp/verify", OTPVerifyView.as_view(), name="auth-otp-verify"),
    path("auth/refresh", TokenRefreshView.as_view(), name="auth-refresh"),
    path("me", MeView.as_view(), name="me"),
]
