from django.contrib.auth.models import User
from rest_framework import serializers

from .models import Profile


class OTPRequestSerializer(serializers.Serializer):
    phone = serializers.CharField(max_length=20)


class OTPVerifySerializer(serializers.Serializer):
    phone = serializers.CharField(max_length=20)
    code = serializers.CharField(max_length=6)


class ProfileSerializer(serializers.ModelSerializer):
    user_id = serializers.IntegerField(source="user.id")
    username = serializers.CharField(source="user.username")

    class Meta:
        model = Profile
        fields = [
            "user_id",
            "username",
            "phone_e164",
            "display_name",
            "avatar_url",
            "about",
            "created_at",
        ]

