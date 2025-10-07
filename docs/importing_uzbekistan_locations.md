# Importing Uzbekistan Location Data

## Overview

The project includes comprehensive location data for Uzbekistan from the `uzbekistan-regions-data-master` repository, which contains:
- **14 Regions** (viloyatlar)
- **210+ Districts/Cities** (tumanlar/shaharlar)
- Data available in multiple formats: JSON, XML, CSV, SQL

## Data Structure

### Regions (regions.json)
```json
{
  "id": 2,
  "soato_id": 1703,
  "name_uz": "Andijon viloyati",
  "name_oz": "Андижон вилояти",
  "name_ru": "Андижанская область"
}
```

### Districts (districts.json)
```json
{
  "id": 16,
  "region_id": 2,
  "soato_id": 1703202,
  "name_uz": "Oltinko'l tumani",
  "name_oz": "Олтинкўл тумани",
  "name_ru": "Алтынкульский район"
}
```

### SOATO (System of Designation of Administrative-Territorial Entities)
- Unique identifier for each administrative unit
- Cities typically have SOATO codes ending in 401, 403, etc.
- Districts have different patterns

## Django Location Model

The existing `Location` model in `taxonomy/models.py` supports:
- Hierarchical structure (parent-child relationships)
- Multiple types: COUNTRY → REGION → CITY/DISTRICT
- Multilingual names (name, name_ru, name_uz)
- Geo-coordinates (lat, lon) - optional
- Auto-generated slugs

## Import Process

### Step 1: Run the Management Command

```bash
cd server
python manage.py import_locations
```

### Options:

```bash
# Clear existing location data before import
python manage.py import_locations --clear

# Specify custom data directory
python manage.py import_locations --data-dir /path/to/data
```

### What the Command Does:

1. **Creates Uzbekistan as root country**
   - name: "Uzbekistan"
   - name_ru: "Узбекистан"
   - name_uz: "O'zbekiston"

2. **Imports all 14 regions**
   - Parent: Uzbekistan
   - Kind: REGION
   - Creates from regions.json

3. **Imports 210+ districts and cities**
   - Parent: Respective region
   - Kind: CITY or DISTRICT (based on SOATO)
   - Creates from districts.json

4. **Auto-generates slugs**
   - Transliterates Uzbek/Cyrillic characters
   - Creates URL-friendly slugs

### Expected Output:

```
✓ Created Uzbekistan country
Importing regions...
  ✓ Created region: Andijon viloyati
  ✓ Created region: Buxoro viloyati
  ...
✓ Imported 14 regions
Importing districts...
✓ Imported 196 districts and 14 cities

✅ Successfully imported all location data!
   Total locations: 225
```

## Using Locations in the Application

### In Django Views/API

```python
from taxonomy.models import Location

# Get all regions
regions = Location.objects.filter(kind=Location.Kind.REGION)

# Get districts of a region
tashkent_region = Location.objects.get(slug='toshkent-viloyati')
districts = tashkent_region.children.filter(kind=Location.Kind.DISTRICT)

# Get hierarchical path
def get_location_path(location):
    path = []
    current = location
    while current:
        path.insert(0, current)
        current = current.parent
    return path
```

### In Listing Creation

```python
# When creating a listing
listing = Listing.objects.create(
    title="Apartment in Tashkent",
    location=Location.objects.get(slug='toshkent-shahri'),
    ...
)
```

### API Response Example

```json
{
  "id": 1,
  "title": "3-room apartment",
  "location": {
    "id": 11,
    "name": "Toshkent shahri",
    "name_ru": "город Ташкент",
    "name_uz": "Toshkent shahri",
    "kind": "CITY",
    "parent": {
      "id": 1,
      "name": "Uzbekistan",
      "kind": "COUNTRY"
    }
  }
}
```

## Frontend Integration

### Location Selector Component

```typescript
// Fetch regions
const regions = await fetch('/api/v1/locations?kind=REGION');

// Fetch districts of selected region
const districts = await fetch(`/api/v1/locations?parent_id=${regionId}`);
```

### Display Location Path

```typescript
// Show breadcrumb: Uzbekistan > Tashkent Region > Tashkent City
const locationPath = listing.location_path.map(loc =>
  locale === 'uz' ? loc.name_uz : loc.name_ru
).join(' > ');
```

## API Endpoints to Create

Add these to `taxonomy/views.py`:

```python
@api_view(['GET'])
def locations(request):
    """
    Get locations with filtering

    Query params:
    - kind: COUNTRY|REGION|CITY|DISTRICT
    - parent_id: Filter by parent location
    - search: Search by name
    """
    queryset = Location.objects.all()

    kind = request.GET.get('kind')
    if kind:
        queryset = queryset.filter(kind=kind)

    parent_id = request.GET.get('parent_id')
    if parent_id:
        queryset = queryset.filter(parent_id=parent_id)

    search = request.GET.get('search')
    if search:
        queryset = queryset.filter(
            Q(name__icontains=search) |
            Q(name_ru__icontains=search) |
            Q(name_uz__icontains=search)
        )

    serializer = LocationSerializer(queryset, many=True)
    return Response(serializer.data)
```

## Maintenance

### Update Data

When the source data is updated:

```bash
# Download latest data
cd resources/uzbekistan-regions-data-master
git pull

# Re-import with clear flag
cd ../../server
python manage.py import_locations --clear
```

### Add Geo-coordinates

Currently, the data doesn't include coordinates. To add them:

1. Manually add for major cities
2. Use a geocoding service API
3. Update the import command to include coordinate mapping

```python
# Example coordinate data
coordinates = {
    'toshkent-shahri': (41.2995, 69.2401),
    'samarqand': (39.6270, 66.9750),
    ...
}
```

## Troubleshooting

### Issue: UnicodeDecodeError
**Solution**: Files use UTF-8 with BOM. The import command handles this with `encoding='utf-8-sig'`

### Issue: Duplicate slugs
**Solution**: Slugs are generated with transliteration. Conflicts are rare but handled by Django's unique constraint

### Issue: Missing parent region
**Solution**: Command skips districts with invalid region_id and logs a warning

## Next Steps

1. ✅ Create import command
2. ⬜ Run import to populate database
3. ⬜ Create location API endpoints
4. ⬜ Build frontend location selector component
5. ⬜ Integrate with listing creation form
6. ⬜ Add location-based search filtering
7. ⬜ Display location breadcrumbs on listings
