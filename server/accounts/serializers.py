from django.contrib.auth.models import User
from rest_framework import serializers

from .models import Profile


class OTPRequestSerializer(serializers.Serializer):
    phone = serializers.CharField(max_length=20)


class OTPVerifySerializer(serializers.Serializer):
    phone = serializers.CharField(max_length=20)
    code = serializers.CharField(max_length=6)


class ProfileSerializer(serializers.ModelSerializer):
    user_id = serializers.IntegerField(source="user.id", read_only=True)
    username = serializers.CharField(source="user.username", read_only=True)
    location_id = serializers.IntegerField(source="location.id", read_only=True, allow_null=True)
    location_name = serializers.SerializerMethodField()

    class Meta:
        model = Profile
        fields = [
            "user_id",
            "username",
            "phone_e164",
            "display_name",
            "avatar_url",
            "about",
            "location_id",
            "location_name",
            "logo",
            "banner",
            "last_active_at",
            "created_at",
        ]
        read_only_fields = ["phone_e164", "created_at"]

    def get_location_name(self, obj):
        if obj.location:
            # Return full path like "Ташкент > Мирзо-Улугбекский район"
            parts = []
            loc = obj.location
            while loc:
                parts.insert(0, loc.name)
                loc = loc.parent if hasattr(loc, 'parent') else None
            return " > ".join(parts) if parts else obj.location.name
        return None


class ProfileUpdateSerializer(serializers.ModelSerializer):
    location = serializers.IntegerField(required=False, allow_null=True)

    class Meta:
        model = Profile
        fields = ["display_name", "location", "logo", "banner"]

    def update(self, instance, validated_data):
        # Handle location separately
        location_id = validated_data.pop("location", None)
        if location_id is not None:
            if location_id:
                from taxonomy.models import Location
                try:
                    location = Location.objects.get(id=location_id)
                    instance.location = location
                except Location.DoesNotExist:
                    raise serializers.ValidationError({"location": "Location not found"})
            else:
                instance.location = None

        # Update other fields
        for attr, value in validated_data.items():
            setattr(instance, attr, value)

        instance.save()
        return instance

