from __future__ import annotations

import os
import uuid
from datetime import datetime, timedelta

from django.conf import settings
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework import permissions


class PresignUploadView(APIView):
    permission_classes = [permissions.IsAuthenticated]

    def post(self, request):
        # If S3 env is configured, return a presigned POST; else, indicate local upload
        bucket = os.environ.get("MEDIA_BUCKET")
        endpoint = os.environ.get("MEDIA_ENDPOINT") or os.environ.get("AWS_S3_ENDPOINT_URL")
        access_key = os.environ.get("MEDIA_ACCESS_KEY") or os.environ.get("AWS_ACCESS_KEY_ID")
        secret_key = os.environ.get("MEDIA_SECRET_KEY") or os.environ.get("AWS_SECRET_ACCESS_KEY")
        region = os.environ.get("AWS_REGION")
        key_prefix = os.environ.get("MEDIA_PREFIX", "uploads/")

        if not (bucket and access_key and secret_key and endpoint):
            return Response({
                "mode": "local",
                "message": "S3 not configured; use local upload endpoint /api/v1/listings/<id>/media",
            })

        try:
            import boto3  # type: ignore
        except Exception:
            return Response({"mode": "local", "message": "boto3 missing; install server requirements"}, status=200)

        s3 = boto3.client(
            "s3",
            endpoint_url=endpoint,
            aws_access_key_id=access_key,
            aws_secret_access_key=secret_key,
            region_name=region,
        )
        key = f"{key_prefix}{uuid.uuid4().hex}"
        conditions = [["content-length-range", 0, 10 * 1024 * 1024]]
        fields = {"acl": "public-read"}
        presigned = s3.generate_presigned_post(
            Bucket=bucket,
            Key=key,
            Fields=fields,
            Conditions=conditions,
            ExpiresIn=3600,
        )
        return Response({"mode": "s3", "presigned": presigned, "public_url": f"{endpoint}/{bucket}/{key}"})

