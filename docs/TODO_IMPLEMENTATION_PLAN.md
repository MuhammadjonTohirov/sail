# TODO Implementation Plan

## Overview

This document provides detailed implementation plans for each TODO item, organized by priority and complexity.

---

## 1. Sync Chats to Check Availability

**Priority:** High
**Complexity:** Medium
**Estimated Files:** 6-8

### Problem
When a listing is deleted or deactivated, existing chat threads still show the listing. Need to verify listing availability when viewing chats.

### Implementation

#### Backend Changes

**1. Add endpoint to verify listing status** (`server/listings/views/listing_status_view.py`)
```python
class ListingStatusBulkView(APIView):
    """Check availability status of multiple listings at once."""

    def post(self, request):
        listing_ids = request.data.get('listing_ids', [])
        listings = Listing.objects.filter(id__in=listing_ids).values('id', 'status')
        status_map = {l['id']: l['status'] for l in listings}
        return Response({'statuses': status_map})
```

**2. Update ChatThread model** (`server/chat/models.py`)
- Add `listing_status` field (cached, updated on sync)
- Add `listing_deleted` boolean field

**3. Create sync task** (`server/chat/tasks.py`)
```python
@shared_task
def sync_chat_listing_statuses():
    """Periodic task to update listing statuses in threads."""
    threads = ChatThread.objects.select_related('listing').filter(
        listing_deleted=False
    )
    for thread in threads:
        if not thread.listing or thread.listing.status != 'active':
            thread.listing_deleted = True
            thread.save(update_fields=['listing_deleted'])
```

#### Frontend Changes

**1. Create use case** (`web_client/domain/usecases/chat/SyncChatAvailabilityUseCase.ts`)
- Fetch listing statuses for all visible threads
- Update thread display to show "Listing unavailable" badge

**2. Update ChatPanel** (`web_client/components/chat/ChatPanel.tsx`)
- Show banner when listing is unavailable
- Disable "View Listing" button for deleted listings
- Gray out or strike-through unavailable listings in thread list

**3. Update ThreadList** (`web_client/components/chat/ThreadList.tsx`)
- Add visual indicator for unavailable listings
- Add "Listing deleted" or "Listing deactivated" badge

### API Endpoint
```
POST /api/v1/listings/status/bulk/
Body: { "listing_ids": [1, 2, 3] }
Response: { "statuses": { "1": "active", "2": "closed", "3": null } }
```

---

## 2. Ask for Location Permission While Adding a Listing

**Priority:** Medium
**Complexity:** Low
**Estimated Files:** 3-4

### Problem
Currently location is manually selected. Should offer to auto-detect using browser geolocation.

### Implementation

#### Frontend Changes

**1. Create geolocation hook** (`web_client/hooks/useGeolocation.ts`)
```typescript
export function useGeolocation() {
  const [position, setPosition] = useState<GeolocationPosition | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);

  const requestLocation = useCallback(async () => {
    if (!navigator.geolocation) {
      setError('Geolocation not supported');
      return null;
    }

    setLoading(true);
    return new Promise((resolve) => {
      navigator.geolocation.getCurrentPosition(
        (pos) => {
          setPosition(pos);
          setLoading(false);
          resolve(pos);
        },
        (err) => {
          setError(err.message);
          setLoading(false);
          resolve(null);
        },
        { enableHighAccuracy: true, timeout: 10000 }
      );
    });
  }, []);

  return { position, error, loading, requestLocation };
}
```

**2. Add reverse geocoding** (`web_client/domain/usecases/geocoding/ReverseGeocodeUseCase.ts`)
- Convert lat/lon to location ID
- Match against taxonomy locations

**3. Update LocationSection** (`web_client/app/post/components/LocationSection.tsx`)
- Add "Use my location" button with location icon
- Show loading spinner during detection
- Pre-fill location picker with detected location
- Show permission denied message if blocked

**4. Update i18n** (`web_client/i18n/ru.json`, `uz.json`)
```json
{
  "post.useMyLocation": "Использовать мое местоположение",
  "post.detectingLocation": "Определение местоположения...",
  "post.locationPermissionDenied": "Доступ к местоположению запрещен"
}
```

### Backend Changes

**1. Add reverse geocoding endpoint** (`server/taxonomy/views/reverse_geocode_view.py`)
```python
class ReverseGeocodeView(APIView):
    def get(self, request):
        lat = request.query_params.get('lat')
        lon = request.query_params.get('lon')
        # Find nearest location from taxonomy
        location = Location.objects.annotate(
            distance=...  # Calculate distance
        ).order_by('distance').first()
        return Response(LocationSerializer(location).data)
```

---

## 3. Show Suggested Products on Empty Search/Filter Results

**Priority:** Medium
**Complexity:** Low
**Estimated Files:** 4-5

### Problem
When search returns no results, the page shows empty state. Should show suggested/popular listings.

### Implementation

#### Backend Changes

**1. Create suggested listings endpoint** (`server/listings/views/suggested_listings_view.py`)
```python
class SuggestedListingsView(APIView):
    def get(self, request):
        category_id = request.query_params.get('category_id')
        location_id = request.query_params.get('location_id')

        queryset = Listing.objects.filter(status='active')

        # Priority: same category > same location > promoted > recent
        if category_id:
            queryset = queryset.filter(
                Q(category_id=category_id) |
                Q(category__parent_id=category_id)
            )

        listings = queryset.order_by('-is_promoted', '-refreshed_at')[:12]
        return Response(ListingSerializer(listings, many=True).data)
```

#### Frontend Changes

**1. Create SuggestedListings component** (`web_client/components/search/SuggestedListings.tsx`)
```tsx
export function SuggestedListings({ categoryId, locationId }: Props) {
  const [listings, setListings] = useState<SearchListing[]>([]);

  useEffect(() => {
    // Fetch suggested listings
  }, [categoryId, locationId]);

  return (
    <div className="suggested-listings">
      <h3>{t('search.noResultsSuggestions')}</h3>
      <div className="product-grid">
        {listings.map(listing => <ProductCard key={listing.id} ... />)}
      </div>
    </div>
  );
}
```

**2. Update SearchResultsGrid** (`web_client/components/search/SearchResultsGrid.tsx`)
- When results.length === 0, render SuggestedListings instead of empty state

**3. Update i18n**
```json
{
  "search.noResultsSuggestions": "Ничего не найдено. Возможно, вам понравится:",
  "search.suggestedListings": "Рекомендуемые объявления"
}
```

---

## 4. Daily Telegram Notification for Saved Searches

**Priority:** High
**Complexity:** Medium-High
**Estimated Files:** 8-10

### Problem
Users with saved searches should receive daily Telegram notifications about new matching items.

### Implementation

#### Backend Changes

**1. Update SavedSearch model** (`server/savedsearches/models.py`)
```python
class SavedSearch(models.Model):
    # ... existing fields
    telegram_notify = models.BooleanField(default=True)
    last_notified_at = models.DateTimeField(null=True, blank=True)
    last_result_count = models.PositiveIntegerField(default=0)
```

**2. Create Telegram notification service** (`server/savedsearches/telegram_notify.py`)
```python
import requests
from django.conf import settings

def send_saved_search_notification(profile, saved_search, new_count):
    if not profile.telegram_id:
        return False

    bot_token = settings.TELEGRAM_BOT_TOKEN
    chat_id = profile.telegram_id

    # Build deep link to saved searches page
    url = f"{settings.FRONTEND_URL}/saved?id={saved_search.id}"

    message = (
        f"🔔 По вашему поиску «{saved_search.title}» "
        f"найдено {new_count} новых объявлений за последние 24 часа.\n\n"
        f"👉 Посмотреть: {url}"
    )

    requests.post(
        f"https://api.telegram.org/bot{bot_token}/sendMessage",
        json={
            "chat_id": chat_id,
            "text": message,
            "parse_mode": "HTML",
            "reply_markup": {
                "inline_keyboard": [[
                    {"text": "Открыть поиск", "url": url}
                ]]
            }
        }
    )
    return True
```

**3. Update Celery task** (`server/savedsearches/tasks.py`)
```python
@shared_task(name="savedsearches.daily_telegram_notify")
def task_daily_telegram_notify():
    """Run daily at 9:00 AM to notify users about new items."""
    client = get_client()
    if not client:
        return {"status": "skipped", "reason": "no-opensearch"}

    yesterday = timezone.now() - timedelta(days=1)
    notified = 0

    for search in SavedSearch.objects.filter(
        is_active=True,
        telegram_notify=True,
        user__profile__telegram_id__isnull=False
    ).select_related('user__profile'):

        # Execute search with date filter
        query = search.query.copy()
        query['body']['query']['bool']['filter'] = query['body']['query']['bool'].get('filter', [])
        query['body']['query']['bool']['filter'].append({
            'range': {'created_at': {'gte': yesterday.isoformat()}}
        })

        result = client.search(index=index_name(), body=query['body'])
        new_count = result['hits']['total']['value']

        if new_count > 0:
            send_saved_search_notification(
                search.user.profile,
                search,
                new_count
            )
            notified += 1

        search.last_notified_at = timezone.now()
        search.last_result_count = new_count
        search.save(update_fields=['last_notified_at', 'last_result_count'])

    return {"status": "ok", "notified": notified}
```

**4. Add Celery Beat schedule** (`server/config/celery.py`)
```python
app.conf.beat_schedule = {
    'daily-saved-search-notify': {
        'task': 'savedsearches.daily_telegram_notify',
        'schedule': crontab(hour=9, minute=0),  # 9:00 AM daily
    },
}
```

#### Frontend Changes

**1. Update SavedSearchesSection** (`web_client/app/favorites/components/SavedSearchesSection.tsx`)
- Add toggle for Telegram notifications per search
- Show last notification info

**2. Update i18n**
```json
{
  "savedSearches.telegramNotify": "Уведомления в Telegram",
  "savedSearches.telegramNotifyHint": "Получайте ежедневные уведомления о новых объявлениях"
}
```

---

## 5. Fix Avatar Photo Stretching

**Priority:** High
**Complexity:** Low
**Estimated Files:** 2-3

### Problem
Avatar images stretch when not square/rectangular. Should clip to circle.

### Implementation

**1. Update Avatar component** (`web_client/components/ui/Avatar.tsx`)
```tsx
export default function Avatar({ imageUrl, placeholder, alt, className = '' }: AvatarProps) {
  // ... existing code

  return (
    <div
      className={`avatar-container ${className}`}
      aria-label={alt || fallbackChar}
      style={{
        borderRadius: '50%',
        overflow: 'hidden',
        aspectRatio: '1 / 1',
      }}
    >
      {shouldShowImage ? (
        <img
          src={_trustedImageUrl as string}
          alt={alt || fallbackChar}
          onError={() => setHasError(true)}
          style={{
            width: '100%',
            height: '100%',
            objectFit: 'cover',  // Key fix: cover instead of default
          }}
        />
      ) : (
        <span>{fallbackChar}</span>
      )}
    </div>
  );
}
```

**2. Update CSS** (add to appropriate CSS file or create `web_client/app/styles/avatar.css`)
```css
.avatar-container {
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: 50%;
  overflow: hidden;
  aspect-ratio: 1 / 1;
  flex-shrink: 0;
}

.avatar-container img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  object-position: center;
}

.avatar-container span {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 100%;
  font-weight: 600;
  text-transform: uppercase;
}
```

**3. Check all avatar usages:**
- `TelegramSettings.tsx` - confirmation modal avatar
- `ConnectedChatsList` - chat photo
- `ChatPanel` - participant avatars
- `ThreadList` - thread avatars
- Profile pages

---

## 6. Notification Settings

**Priority:** Medium
**Complexity:** Medium
**Estimated Files:** 8-10

### Problem
Users need to control notification preferences (new messages, saved search updates).

### Implementation

#### Backend Changes

**1. Update Profile model** (`server/accounts/models.py`)
```python
class Profile(models.Model):
    # ... existing fields

    # Notification preferences
    notify_new_message = models.BooleanField(default=True)
    notify_saved_search_daily = models.BooleanField(default=True)
    notify_listing_views = models.BooleanField(default=False)
    notify_favorites = models.BooleanField(default=False)
    notify_channel = models.CharField(
        max_length=20,
        choices=[('telegram', 'Telegram'), ('email', 'Email'), ('both', 'Both')],
        default='telegram'
    )
```

**2. Create migration**
```bash
python manage.py makemigrations accounts
```

**3. Update ProfileSerializer** (`server/accounts/serializers.py`)
```python
class ProfileSerializer(serializers.ModelSerializer):
    class Meta:
        fields = [
            # ... existing fields
            'notify_new_message',
            'notify_saved_search_daily',
            'notify_listing_views',
            'notify_favorites',
            'notify_channel',
        ]
```

#### Frontend Changes

**1. Replace NotificationSettings** (`web_client/app/u/settings/components/NotificationSettings.tsx`)
```tsx
export default function NotificationSettings() {
  const { t } = useI18n();
  const { profile, updateProfile } = useProfile();
  const [saving, setSaving] = useState(false);

  const handleToggle = async (key: string, value: boolean) => {
    setSaving(true);
    await updateProfile({ [key]: value });
    setSaving(false);
  };

  return (
    <div className="settings-card">
      <div className="settings-card-header">
        <h2 className="settings-card-title">{t('settings.notifications')}</h2>
      </div>
      <div className="settings-card-body">
        {/* New Messages */}
        <div className="settings-toggle-row">
          <div>
            <p className="settings-toggle-title">{t('settings.notifyNewMessage')}</p>
            <p className="settings-toggle-desc">{t('settings.notifyNewMessageDesc')}</p>
          </div>
          <ToggleSwitch
            checked={profile?.notifyNewMessage ?? true}
            onChange={(v) => handleToggle('notify_new_message', v)}
            disabled={saving}
          />
        </div>

        {/* Daily Saved Search */}
        <div className="settings-toggle-row">
          <div>
            <p className="settings-toggle-title">{t('settings.notifySavedSearch')}</p>
            <p className="settings-toggle-desc">{t('settings.notifySavedSearchDesc')}</p>
          </div>
          <ToggleSwitch
            checked={profile?.notifySavedSearchDaily ?? true}
            onChange={(v) => handleToggle('notify_saved_search_daily', v)}
            disabled={saving}
          />
        </div>

        {/* Channel Selection */}
        <div className="settings-select-row">
          <label>{t('settings.notifyChannel')}</label>
          <select
            value={profile?.notifyChannel ?? 'telegram'}
            onChange={(e) => handleToggle('notify_channel', e.target.value)}
            disabled={saving}
          >
            <option value="telegram">Telegram</option>
            <option value="email">Email</option>
            <option value="both">{t('settings.notifyBoth')}</option>
          </select>
        </div>
      </div>
    </div>
  );
}
```

**2. Create ToggleSwitch component** (`web_client/components/ui/ToggleSwitch.tsx`)

**3. Update i18n**
```json
{
  "settings.notifications": "Уведомления",
  "settings.notifyNewMessage": "Новые сообщения",
  "settings.notifyNewMessageDesc": "Получать уведомления о новых сообщениях в чате",
  "settings.notifySavedSearch": "Сохраненные поиски",
  "settings.notifySavedSearchDesc": "Ежедневные уведомления о новых объявлениях",
  "settings.notifyChannel": "Способ уведомлений",
  "settings.notifyBoth": "Оба (Telegram и Email)"
}
```

---

## 7. Prevent Telegram Disconnect for Telegram-Only Users

**Priority:** High
**Complexity:** Low
**Estimated Files:** 3-4

### Problem
Users who logged in via Telegram and have no other auth method should not be able to unlink Telegram.

### Implementation

#### Backend Changes

**1. Update unlink endpoint** (`server/accounts/views/telegram_auth.py`)
```python
class UnlinkTelegramView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request):
        profile = request.user.profile

        # Check if user has alternative auth methods
        has_password = request.user.has_usable_password()
        has_phone = bool(profile.phone_e164)
        has_email = bool(profile.email)

        if not (has_password or has_phone):
            return Response(
                {"error": "Cannot unlink Telegram. Please add email/password or phone first."},
                status=400
            )

        # Proceed with unlinking
        profile.telegram_id = None
        profile.telegram_username = ""
        profile.telegram_photo_url = ""
        profile.save()

        return Response({"status": "ok"})
```

#### Frontend Changes

**1. Update TelegramSettings** (`web_client/app/u/settings/components/TelegramSettings.tsx`)
```tsx
// Add check for alternative auth methods
const canUnlink = securityInfo && (
  securityInfo.has_password ||
  securityInfo.has_phone ||
  securityInfo.has_email
);

// Update unlink button
<button
  onClick={handleUnlinkTelegram}
  className="btn-secondary btn-unlink"
  disabled={telegramLinking || !canUnlink}
  title={!canUnlink ? t('settings.telegram.cannotUnlinkHint') : undefined}
>
  {telegramLinking ? t('settings.telegram.unlinking') : t('settings.telegram.unlink')}
</button>

{!canUnlink && (
  <p className="text-sm text-amber-600 mt-2">
    {t('settings.telegram.cannotUnlink')}
  </p>
)}
```

**2. Update i18n**
```json
{
  "settings.telegram.cannotUnlink": "Добавьте пароль или номер телефона перед отключением Telegram",
  "settings.telegram.cannotUnlinkHint": "Сначала добавьте альтернативный способ входа"
}
```

---

## 8. Validate Telegram Chats on Page Visit

**Priority:** Medium
**Complexity:** Medium
**Estimated Files:** 5-6

### Problem
Telegram chat configurations may become stale (bot removed, permissions changed). Need to verify on key pages.

### Implementation

#### Backend Changes

**1. Create validation endpoint** (`server/accounts/views/telegram_auth.py`)
```python
class ValidateTelegramChatsView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request):
        profile = request.user.profile
        chats = TelegramChatConfig.objects.filter(profile=profile, is_active=True)

        bot_token = settings.TELEGRAM_BOT_TOKEN
        validated = 0
        deactivated = 0

        for chat in chats:
            try:
                response = requests.get(
                    f"https://api.telegram.org/bot{bot_token}/getChatMember",
                    params={
                        "chat_id": chat.chat_id,
                        "user_id": bot_token.split(':')[0]  # Bot user ID
                    }
                )
                data = response.json()

                if data.get('ok'):
                    status = data['result']['status']
                    chat.update_status(status)
                    validated += 1
                else:
                    chat.deactivate()
                    deactivated += 1

            except Exception:
                chat.deactivate()
                deactivated += 1

        return Response({
            "validated": validated,
            "deactivated": deactivated
        })
```

#### Frontend Changes

**1. Create validation hook** (`web_client/hooks/useTelegramChatValidation.ts`)
```typescript
export function useTelegramChatValidation() {
  const [validating, setValidating] = useState(false);

  const validateChats = useCallback(async () => {
    setValidating(true);
    try {
      const repo = new TelegramRepositoryImpl();
      await repo.validateChats();
    } finally {
      setValidating(false);
    }
  }, []);

  return { validateChats, validating };
}
```

**2. Call validation on page mount:**
- `web_client/app/u/settings/page.tsx` - when telegram tab is active
- `web_client/app/post/page.tsx` - when entering listing creation

**3. Update TelegramSettings to refresh after validation**

---

## 9. Mobile-First Chat Design (WhatsApp-like)

**Priority:** High
**Complexity:** High
**Estimated Files:** 6-8

### Problem
Current mobile chat layout is functional but not optimized for mobile UX like WhatsApp.

### Implementation

#### Design Changes

**1. Full-screen thread list on mobile**
- Remove page header on mobile
- Thread items span full width
- Larger touch targets (minimum 56px height)
- Swipe actions (archive, delete)

**2. Full-screen chat panel**
- Fixed header with back button
- Sticky composer at bottom
- Safe area insets for notched phones

**3. Visual improvements**
- Round avatar on left
- Preview text with ellipsis
- Unread count badge (pill shape)
- Time on right side
- Online/offline indicator

#### CSS Changes (`web_client/app/styles/chat.css`)
```css
/* Mobile-first redesign */
@media (max-width: 768px) {
  .chat-page {
    padding: 0;
    height: 100dvh; /* Dynamic viewport height */
    display: flex;
    flex-direction: column;
  }

  .chat-shell {
    flex: 1;
    display: flex;
    flex-direction: column;
  }

  .chat-sidebar {
    flex: 1;
    border: none;
    border-radius: 0;
    padding: 0;
  }

  .chat-thread-item {
    display: flex;
    align-items: center;
    padding: 12px 16px;
    gap: 12px;
    min-height: 72px;
    border-bottom: 1px solid var(--border);
  }

  .chat-thread-avatar {
    width: 56px;
    height: 56px;
    border-radius: 50%;
    flex-shrink: 0;
  }

  .chat-thread-content {
    flex: 1;
    min-width: 0;
  }

  .chat-thread-header {
    display: flex;
    justify-content: space-between;
    align-items: baseline;
    margin-bottom: 4px;
  }

  .chat-thread-name {
    font-weight: 600;
    font-size: 16px;
  }

  .chat-thread-time {
    font-size: 12px;
    color: var(--muted);
  }

  .chat-thread-preview {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  .chat-thread-message {
    font-size: 14px;
    color: var(--muted);
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    flex: 1;
  }

  .chat-thread-unread {
    background: var(--brand);
    color: white;
    border-radius: 12px;
    padding: 2px 8px;
    font-size: 12px;
    font-weight: 600;
    min-width: 20px;
    text-align: center;
  }

  /* Chat panel mobile */
  .chat-main {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 100;
    border-radius: 0;
    border: none;
  }

  .chat-panel__header {
    position: sticky;
    top: 0;
    z-index: 10;
    background: white;
    padding: 8px 16px;
    padding-top: env(safe-area-inset-top, 8px);
  }

  .chat-panel__composer {
    position: sticky;
    bottom: 0;
    padding-bottom: env(safe-area-inset-bottom, 16px);
  }

  .chat-panel__messages {
    flex: 1;
    padding: 8px 16px;
  }

  /* Message bubbles */
  .chat-message {
    max-width: 85%;
    border-radius: 18px;
  }

  .chat-message--own {
    border-bottom-right-radius: 4px;
  }

  .chat-message:not(.chat-message--own) {
    border-bottom-left-radius: 4px;
  }
}
```

#### Component Updates

**1. Update ThreadList** - Add WhatsApp-like item layout
**2. Update ChatPanel** - Fixed positioning, safe areas
**3. Add touch gestures** - Optional: swipe to archive

---

## 10. Fix Input Zoom on Focus (iOS Safari)

**Priority:** High
**Complexity:** Low
**Estimated Files:** 2

### Problem
iOS Safari zooms in when focusing input fields with font-size < 16px.

### Implementation

**1. Update global styles** (`web_client/app/styles/base.css`)
```css
/* Prevent iOS zoom on input focus */
@media screen and (-webkit-min-device-pixel-ratio: 0) {
  input, select, textarea {
    font-size: 16px !important; /* Minimum to prevent zoom */
  }
}

/* Alternative: use touch-action */
input, select, textarea {
  touch-action: manipulation;
}
```

**2. Add viewport meta** (`web_client/app/layout.tsx`)
```tsx
export const metadata = {
  // ... existing metadata
  viewport: {
    width: 'device-width',
    initialScale: 1,
    maximumScale: 1,
    userScalable: false,
  }
};
```

Or in head:
```html
<meta
  name="viewport"
  content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
/>
```

**Note:** `user-scalable=no` is controversial for accessibility. Better approach is ensuring all inputs have `font-size: 16px`.

**3. Check all input components:**
- Search inputs
- Form fields in post page
- Chat composer textarea
- Login/registration forms

---

## 11. Show Seller Name on Listing Cards

**Priority:** Medium
**Complexity:** Low
**Estimated Files:** 4-5

### Problem
ProductCard doesn't show seller/owner information.

### Implementation

#### Backend Changes

**1. Update search index** (`server/searchapp/index.py`)
- Add `seller_display_name` field to index mapping

**2. Update listing serializer** (`server/listings/serializers.py`)
- Include `owner_display_name` in search results

#### Frontend Changes

**1. Update ProductHit type** (`web_client/components/search/ProductCard.tsx`)
```typescript
export type ProductHit = {
  // ... existing fields
  seller_name?: string;
  seller_id?: string;
};
```

**2. Update ProductCard** (`web_client/components/search/ProductCard.tsx`)
```tsx
{/* Add after location/time */}
{hit.seller_name && (
  <div className="product-card-seller">
    <svg className="w-3 h-3" ...>{/* User icon */}</svg>
    <span>{hit.seller_name}</span>
  </div>
)}
```

**3. Update SearchListing model** (`web_client/domain/models/SearchListing.ts`)
```typescript
export interface SearchListing {
  // ... existing fields
  sellerName?: string;
  sellerId?: string;
}
```

**4. Update mapper** (`web_client/data/mappers/ListingMapper.ts`)

**5. Add CSS**
```css
.product-card-seller {
  display: flex;
  align-items: center;
  gap: 4px;
  font-size: 0.8rem;
  color: var(--muted);
  margin-top: 4px;
}
```

---

## Priority Summary

### Immediate (This Week)
1. **Fix Avatar Stretching** - Quick win, affects UX
2. **Fix Input Zoom** - Quick win, affects iOS users
3. **Prevent Telegram Disconnect** - Security/UX issue

### High Priority (Next 2 Weeks)
4. **Mobile Chat Redesign** - Major UX improvement
5. **Daily Telegram Notifications** - Key feature for engagement
6. **Sync Chat Availability** - Data consistency

### Medium Priority (Next Month)
7. **Notification Settings** - User control
8. **Location Permission** - Nice to have
9. **Suggested Products** - Better empty states
10. **Show Seller Name** - Additional info
11. **Validate Telegram Chats** - Data freshness

---

## Implementation Order Recommendation

1. Avatar fix + Input zoom fix (quick wins)
2. Telegram disconnect prevention
3. Notification settings (enables #4)
4. Daily Telegram notifications
5. Mobile chat redesign
6. Seller name on cards
7. Chat availability sync
8. Location permission
9. Suggested products
10. Telegram chat validation
