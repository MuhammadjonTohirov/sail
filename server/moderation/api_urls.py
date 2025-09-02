from django.urls import path

from .views import ModerationQueueView, ReportCreateView

urlpatterns = [
    path("reports", ReportCreateView.as_view(), name="report-create"),
    path("moderation/queue", ModerationQueueView.as_view(), name="moderation-queue"),
]

