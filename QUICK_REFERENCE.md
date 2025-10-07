# Quick Reference - Favorites & Filters

## ⚡ Quick Start

### 1. Favorite Any Listing (Already Working!)

The favorite button is **automatically included** in all listing cards. No additional setup needed!

**Pages where it works:**
- ✅ Homepage (`/`)
- ✅ Search Results (`/search`)
- ✅ Category Pages
- ✅ Listing Detail (`/l/123`)
- ✅ User Listings
- ✅ Favorites Page (`/favorites`)

### 2. Save Your Search

On the search page (`/search`), after applying filters:
1. Click **"Save Search"** button (next to sort dropdown)
2. Get notifications when new listings match your filters!

### 3. View History

Recently viewed listings are **automatically tracked**. View them at:
- Go to `/favorites`
- Click **"Recently Viewed"** tab

---

## 🔑 Key Components

### For Developers:

```tsx
// 1. Add favorite button anywhere
import { FavoriteButton } from '@/components/FavoriteButton';
<FavoriteButton listingId={123} size="sm" />

// 2. Add save search button
import { SaveSearchButton } from '@/components/SaveSearchButton';
<SaveSearchButton searchParams={{q: 'phone'}} />

// 3. Track listing views
import { RecentlyViewedTracker } from '@/components/RecentlyViewedTracker';
<RecentlyViewedTracker listingId={123} />
```

---

## 📍 Where Everything Is

### Client Components:
```
web_client/
├── components/
│   ├── FavoriteButton.tsx          ← Heart icon button
│   ├── SaveSearchButton.tsx        ← Save search button
│   ├── RecentlyViewedTracker.tsx   ← Auto view tracker
│   ├── SearchFilters.tsx           ← Filter UI
│   └── search/ProductCard.tsx      ← Listing card (has favorite button)
│
├── hooks/
│   ├── useFavorites.ts             ← Favorites hook
│   └── useRecentlyViewed.ts        ← Recently viewed hook
│
├── app/
│   ├── favorites/page.tsx          ← Favorites management page
│   ├── search/page.tsx             ← Search with filters (has save button)
│   └── l/[id]/page.tsx             ← Detail (has favorite + tracking)
│
└── lib/api.ts                      ← All API functions
```

### Server:
```
server/
├── favorites/
│   ├── models.py                   ← FavoriteListing, RecentlyViewedListing
│   ├── views.py                    ← API endpoints
│   ├── api_urls.py                 ← URL routing
│   └── migrations/0001_initial.py  ← Database schema
│
└── savedsearches/
    └── (similar structure)
```

---

## 🎯 API Quick Reference

### Favorites:
```bash
# List favorites
GET /api/v1/favorites
Authorization: Bearer {token}

# Toggle favorite
POST /api/v1/favorites/123/toggle
Authorization: Bearer {token}
# Returns: {"favorited": true|false}

# Remove favorite
DELETE /api/v1/favorites/123
Authorization: Bearer {token}
```

### Recently Viewed:
```bash
# List recently viewed (works without auth!)
GET /api/v1/recently-viewed

# Track view (works without auth!)
POST /api/v1/recently-viewed/123

# Clear history
DELETE /api/v1/recently-viewed/clear
```

### Saved Searches:
```bash
# List saved searches
GET /api/v1/saved-searches
Authorization: Bearer {token}

# Create saved search
POST /api/v1/saved-searches
Authorization: Bearer {token}
{
  "title": "iPhone in Tashkent",
  "query": {"q": "iPhone", "location_slug": "tashkent"},
  "frequency": "daily"
}

# Delete saved search
DELETE /api/v1/saved-searches/123
Authorization: Bearer {token}
```

---

## 🎨 Component Props

### FavoriteButton
```tsx
<FavoriteButton
  listingId={number}        // Required
  size="sm"|"md"|"lg"       // Optional, default: "md"
  variant="icon"|"button"   // Optional, default: "icon"
  className={string}        // Optional
/>
```

### SaveSearchButton
```tsx
<SaveSearchButton
  searchParams={{            // Required
    q?: string,
    category_slug?: string,
    min_price?: string,
    ...any
  }}
  title={string}             // Optional (auto-generated)
  locale="ru"|"uz"          // Optional, default: "ru"
  variant="icon"|"button"   // Optional, default: "button"
  className={string}        // Optional
/>
```

### RecentlyViewedTracker
```tsx
<RecentlyViewedTracker
  listingId={number}        // Required
/>
```

---

## 🐛 Troubleshooting

### "No such table: favorites_favoritelisting"
**Solution:** Run migrations
```bash
cd server
source venv/bin/activate
python manage.py makemigrations favorites
python manage.py migrate
```

### Favorite button doesn't work
**Check:**
1. User is authenticated (check token in localStorage)
2. Server is running
3. Network tab shows API call
4. No CORS errors in console

### Save search requires authentication
**This is expected!** Saved searches require login.

### Recently viewed not tracking
**Check:**
1. RecentlyViewedTracker is mounted on detail page
2. API call succeeds (check network tab)
3. Session is active (check cookies)

---

## 📊 Testing Checklist

- [ ] Click heart on listing card → Heart fills
- [ ] Refresh page → Heart stays filled
- [ ] Go to `/favorites` → Listing appears
- [ ] Click heart again → Heart empties
- [ ] Apply filters on `/search` → Click "Save Search"
- [ ] Go to favorites → Saved search appears
- [ ] Visit listing detail → Check network tab for track call
- [ ] Go to favorites → Recently viewed shows listing

---

## 🎓 Learn More

**Full Documentation:**
- [FAVORITES_AND_FILTERS_COMPLETE.md](FAVORITES_AND_FILTERS_COMPLETE.md) - Complete implementation details
- [web_client/components/USAGE.md](web_client/components/USAGE.md) - Component usage guide
- [web_client/INTEGRATION_EXAMPLE.md](web_client/INTEGRATION_EXAMPLE.md) - Integration examples
- [server/TEST_FAVORITES.md](server/TEST_FAVORITES.md) - API testing guide
- [IMPLEMENTATION_SUMMARY.md](IMPLEMENTATION_SUMMARY.md) - Original implementation summary

---

**That's it! Everything is working and ready to use! 🚀**
