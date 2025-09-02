from django.urls import path

from .views import MeView, OTPRequestView, OTPVerifyView

urlpatterns = [
    path("auth/otp/request", OTPRequestView.as_view(), name="auth-otp-request"),
    path("auth/otp/verify", OTPVerifyView.as_view(), name="auth-otp-verify"),
    path("me", MeView.as_view(), name="me"),
]

