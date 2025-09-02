from __future__ import annotations

from rest_framework import generics, permissions
from rest_framework.response import Response
from rest_framework.views import APIView

from .models import Report
from .serializers import ReportCreateSerializer, ReportSerializer


class ReportCreateView(generics.CreateAPIView):
    serializer_class = ReportCreateSerializer
    permission_classes = [permissions.AllowAny]

    def perform_create(self, serializer):
        reporter = self.request.user if self.request.user and self.request.user.is_authenticated else None
        serializer.save(reporter=reporter)


class ModerationQueueView(generics.ListAPIView):
    serializer_class = ReportSerializer
    permission_classes = [permissions.IsAdminUser]

    def get_queryset(self):
        return Report.objects.filter(status=Report.Status.OPEN).order_by("-created_at")

