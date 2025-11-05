from __future__ import annotations

from datetime import timedelta

from django.conf import settings
from django.contrib.auth import get_user_model
from django.db import models
from django.utils import timezone


User = get_user_model()


def profile_logo_upload_to(instance: "Profile", filename: str) -> str:
    return f"profiles/{instance.user_id}/logo/{filename}"


def profile_banner_upload_to(instance: "Profile", filename: str) -> str:
    return f"profiles/{instance.user_id}/banner/{filename}"


class Profile(models.Model):
    user = models.OneToOneField(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, related_name="profile")
    phone_e164 = models.CharField(max_length=20, unique=True)
    display_name = models.CharField(max_length=255, blank=True, default="")
    avatar_url = models.URLField(blank=True, default="")
    about = models.TextField(blank=True, default="")

    # Settings page fields
    location = models.ForeignKey('taxonomy.Location', on_delete=models.SET_NULL, null=True, blank=True, related_name="user_profiles")
    logo = models.ImageField(upload_to=profile_logo_upload_to, null=True, blank=True)
    banner = models.ImageField(upload_to=profile_banner_upload_to, null=True, blank=True)

    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self) -> str:  # pragma: no cover
        return f"{self.display_name or self.phone_e164}"


class OtpCode(models.Model):
    phone_e164 = models.CharField(max_length=20)
    code = models.CharField(max_length=6)
    created_at = models.DateTimeField(auto_now_add=True)
    expires_at = models.DateTimeField()
    used = models.BooleanField(default=False)
    attempts = models.PositiveSmallIntegerField(default=0)
    ip_addr = models.GenericIPAddressField(null=True, blank=True)

    class Meta:
        indexes = [
            models.Index(fields=["phone_e164", "expires_at"]),
            models.Index(fields=["created_at"]),
        ]

    @classmethod
    def create_new(cls, phone: str, code: str, minutes_valid: int = 5, ip: str | None = None) -> "OtpCode":
        return cls.objects.create(
            phone_e164=phone,
            code=code,
            expires_at=timezone.now() + timedelta(minutes=minutes_valid),
            ip_addr=ip,
        )

