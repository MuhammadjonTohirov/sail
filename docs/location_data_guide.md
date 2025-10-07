# Location Data Import Guide

## Overview

The Uzbekistan location data has the following hierarchy:
- **Country**: Uzbekistan
- **Regions** (14): Viloyatlar (e.g., Andijan, Tashkent, Fergana)
- **Districts** (~200): Tumanlar (districts within each region)
- **Villages** (~5000): Qishloqlar (villages within districts, optional)
- **Quarters**: Mahallalar (city quarters, optional)

## Location Picker UX Decision

For better user experience, the location picker uses only **2 levels**:
1. **Region** (Viloyat) - First column
2. **District** (Tuman) - Second column

This keeps the UI simple while providing sufficient location granularity for classifieds.

## Data Import

### Step 1: Run Migration

```bash
cd server
python manage.py migrate taxonomy
```

### Step 2: Import Location Data

#### Option A: Import Regions and Districts Only (Recommended)

```bash
python manage.py import_uz_locations --clear --districts-only
```

This will:
- Clear existing location data
- Import 1 country (Uzbekistan)
- Import 14 regions
- Import ~200 districts
- **Skip** villages and quarters (not needed for UI)

#### Option B: Import Complete Hierarchy

```bash
python manage.py import_uz_locations --clear
```

This will import everything including villages (~5000 locations total).

### Step 3: Verify Import

```bash
python manage.py shell
```

```python
from taxonomy.models import Location

# Check counts
print(f"Total locations: {Location.objects.count()}")
print(f"Regions: {Location.objects.filter(kind='REGION').count()}")
print(f"Districts: {Location.objects.filter(kind='DISTRICT').count()}")

# View regions
for region in Location.objects.filter(kind='REGION').order_by('name_uz'):
    print(f"  - {region.name_uz} ({region.name_ru})")
```

## Location Model Structure

```python
class Location(models.Model):
    class Kind(models.TextChoices):
        COUNTRY = "COUNTRY", "Country"
        REGION = "REGION", "Region"      # Viloyat
        DISTRICT = "DISTRICT", "District" # Tuman/Shahar
        VILLAGE = "VILLAGE", "Village"    # Qishloq (optional)
        QUARTER = "QUARTER", "Quarter"    # Mahalla (optional)

    parent = models.ForeignKey("self", ...)  # Hierarchical structure
    kind = models.CharField(max_length=16, choices=Kind.choices)
    name = models.CharField(max_length=255)        # Primary name (Uzbek)
    name_ru = models.CharField(max_length=255, null=True)  # Russian translation
    name_uz = models.CharField(max_length=255, null=True)  # Uzbek (cyrillic/latin)
    slug = models.SlugField(max_length=255)
```

## API Usage

### Get Regions

```
GET /api/v1/locations?lang=uz
```

Response:
```json
[
  {
    "id": 1,
    "name": "Uzbekistan",
    "kind": "COUNTRY",
    "parent": null
  }
]
```

### Get Districts in a Region

```
GET /api/v1/locations?parent_id=2&lang=uz
```

Response:
```json
[
  {
    "id": 16,
    "name": "Oltinko'l tumani",
    "name_uz": "Oltinko'l tumani",
    "name_ru": "Алтынкульский район",
    "kind": "DISTRICT",
    "parent": 2
  },
  ...
]
```

## Frontend LocationPicker Component

The `LocationPicker` component automatically:
1. Loads regions from Uzbekistan
2. Filters only `REGION` kind
3. Sorts alphabetically by locale
4. Loads districts when region is selected
5. Filters only `DISTRICT` kind
6. Returns selected district ID and path

### Usage

```tsx
import LocationPicker from '@/components/ui/LocationPicker';

<LocationPicker
  open={isOpen}
  onClose={() => setIsOpen(false)}
  onSelect={(location) => {
    console.log(location.id);    // District ID for API
    console.log(location.name);  // District name
    console.log(location.path);  // "Tashkent Region / Tashkent"
  }}
  locale="uz" // or "ru"
/>
```

## Troubleshooting

### Issue: Duplicate regions appearing

**Cause**: Old import command created duplicates with different language fields

**Fix**:
```bash
python manage.py import_uz_locations --clear --districts-only
```

### Issue: Cities not loading

**Cause**: Wrong `kind` filter (looking for `CITY` instead of `DISTRICT`)

**Fix**: LocationPicker now filters by `kind === 'DISTRICT'`

### Issue: Too many location levels

**Cause**: Villages and quarters imported but not needed

**Fix**: Use `--districts-only` flag to skip them

## Data Files

Location data is stored in:
```
resources/uzbekistan-regions-data-master/JSON/
├── regions.json     # 14 regions
├── districts.json   # ~200 districts
├── villages.json    # ~5000 villages (optional)
└── quarters.json    # City quarters (optional)
```

## Summary

✅ **Recommended Setup**:
- Run migration: `python manage.py migrate taxonomy`
- Import data: `python manage.py import_uz_locations --clear --districts-only`
- Result: Clean 2-level hierarchy (Region → District)
- UI: Simple, fast location picker

🎯 **Result**: Users select Region → District, which is sufficient for classifieds location data.
