from django.core.management.base import BaseCommand

from listings.models import Listing
from searchapp.index import index_listing


class Command(BaseCommand):
    help = "Reindex all listings into OpenSearch"

    def handle(self, *args, **options):
        qs = Listing.objects.all().only("id")
        count = qs.count()
        self.stdout.write(f"Reindexing {count} listings...")
        for l in qs.iterator():
            index_listing(l.id)
        self.stdout.write(self.style.SUCCESS("Reindex complete."))

