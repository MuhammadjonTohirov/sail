# Testing Guide: Telegram Cross-Posting Feature

## Overview
This guide walks you through testing the Telegram cross-posting functionality that allows users to share listings to Telegram channels during the listing creation process.

## Prerequisites Checklist

### 1. Backend Configuration
Check that the following are configured in your environment:

```bash
cd server

# Create .env file if it doesn't exist
cp .env.example .env

# Edit .env and ensure these variables are set:
# TELEGRAM_BOT_TOKEN=your_bot_token_here
# WEB_BASE_URL=https://sail.uz (or your frontend URL)
# REDIS_URL=redis://localhost:6379/0 (for Celery broker)
```

**Required Settings:**
- `TELEGRAM_BOT_TOKEN`: Token from @BotFather for @sail2_bot
- `WEB_BASE_URL`: Frontend base URL for generating listing links
- `REDIS_URL` or `CELERY_BROKER_URL`: Redis connection for Celery tasks

### 2. Services Running
Ensure all required services are running:

```bash
# Terminal 1: Start Redis (if not using Docker)
redis-server

# Terminal 2: Start Django backend
cd server
source venv/bin/activate  # or activate your virtual environment
python3 manage.py runserver

# Terminal 3: Start Celery worker (CRITICAL for async Telegram posting)
cd server
source venv/bin/activate
celery -A config worker --loglevel=info

# Terminal 4: Start Next.js frontend
cd web_client
npm run dev
```

### 3. Telegram Bot Setup
Verify that:
- The bot (@sail2_bot) is created via @BotFather
- Webhook is set: `https://sail.uz/server/api/v1/webhooks/telegram`
- The bot has been added to test Telegram channels/groups
- You have sent `/start` to the bot from channels where you want to post

## Testing Steps

### Phase 1: Verify Configuration

#### Step 1.1: Check Backend Settings
```bash
cd server
python3 manage.py shell

# Run in Django shell:
from django.conf import settings
print(f"Telegram Bot Token: {'✓ SET' if settings.TELEGRAM_BOT_TOKEN else '✗ NOT SET'}")
print(f"Web Base URL: {getattr(settings, 'WEB_BASE_URL', '✗ NOT SET')}")
print(f"Celery Broker: {settings.CELERY_BROKER_URL if hasattr(settings, 'CELERY_BROKER_URL') else '✗ NOT SET'}")
```

**Expected Output:**
```
Telegram Bot Token: ✓ SET
Web Base URL: https://sail.uz
Celery Broker: redis://localhost:6379/0
```

#### Step 1.2: Verify Celery Worker
Check that Celery worker is running and can discover tasks:

```bash
# In the Celery worker terminal, you should see:
[tasks]
  . listings.tasks.share_listing_to_telegram_task
```

#### Step 1.3: Check Telegram Chats in Database
```bash
cd server
python3 manage.py shell

# Run in Django shell:
from accounts.models import TelegramChatConfig
chats = TelegramChatConfig.objects.filter(is_active=True)
print(f"Active Telegram chats: {chats.count()}")
for chat in chats:
    print(f"  - {chat.chat_title} ({chat.chat_type}) - Photo: {'✓' if chat.chat_photo else '✗'}")
```

**Expected Output:**
```
Active Telegram chats: 2
  - My Test Channel (channel) - Photo: ✓
  - Test Group (group) - Photo: ✓
```

If no chats are found, you need to add the bot to channels and trigger the webhook.

### Phase 2: Frontend Testing

#### Step 2.1: Access Listing Creation Page
1. Navigate to: `http://localhost:3000/post`
2. Log in if not already authenticated

#### Step 2.2: Verify Telegram Channel Selector
1. Scroll to the "Share to Telegram" section
2. **Expected UI:**
   - Section appears only if there are active Telegram chats
   - Each chat displays:
     - Chat photo (72x72px circular) or placeholder icon
     - Chat title
     - Chat username (if available) or chat type
     - Checkbox indicator (unchecked by default)

3. **Test Interactions:**
   - Click on a chat card → Should highlight with blue border
   - Click again → Should deselect
   - Select multiple chats → All selected should have blue borders

#### Step 2.3: Fill Out Listing Form
Fill in all required fields:
- **Title**: "Test Listing - Telegram Cross-Post"
- **Category**: Select any category (e.g., Electronics > Phones)
- **Location**: Select a location
- **Price**: 1000000 UZS
- **Description**: "This is a test listing to verify Telegram cross-posting functionality"
- **Upload at least one image** (required for Telegram photo post)

#### Step 2.4: Select Telegram Channels
- Select 1-2 Telegram channels using the TelegramChannelSelector
- Note which channels you selected

#### Step 2.5: Submit Listing
1. Click "Publish" or "Create Listing"
2. **Expected Frontend Behavior:**
   - Success message appears
   - Redirected to listing detail page

### Phase 3: Backend Verification

#### Step 3.1: Monitor Celery Worker Logs
**Immediately after publishing**, check the Celery worker terminal:

**Expected Logs:**
```
[2025-12-08 15:30:45,123: INFO/MainProcess] Task listings.tasks.share_listing_to_telegram_task[abc-123] received
[2025-12-08 15:30:45,456: INFO/ForkPoolWorker-1] Successfully shared listing 42 to chat -1001234567890
[2025-12-08 15:30:45,789: INFO/ForkPoolWorker-1] Successfully shared listing 42 to chat -1009876543210
[2025-12-08 15:30:45,900: INFO/MainProcess] Task listings.tasks.share_listing_to_telegram_task[abc-123] succeeded in 0.8s
```

**Common Errors to Watch For:**

1. **"Listing not found for Telegram sharing"**
   - Issue: Listing wasn't created before task ran
   - Solution: Check database transaction timing

2. **"TELEGRAM_BOT_TOKEN not configured"**
   - Issue: Missing bot token in settings
   - Solution: Add `TELEGRAM_BOT_TOKEN` to .env

3. **"Failed to send to Telegram chat: 400 Bad Request"**
   - Issue: Invalid chat_id or bot not added to channel
   - Solution: Re-add bot to channel and send /start

4. **"Failed to send to Telegram chat: 403 Forbidden"**
   - Issue: Bot doesn't have permission to post
   - Solution: Make bot admin in channel with post messages permission

5. **No logs appear**
   - Issue: Celery worker not running or not connected to broker
   - Solution: Restart Celery worker, check Redis connection

#### Step 3.2: Check Django Logs
In the Django runserver terminal, look for:
```
INFO - Triggering Telegram sharing task for listing 42 to 2 chats
```

#### Step 3.3: Verify Database Entry
```bash
python3 manage.py shell

# Run in Django shell:
from listings.models import Listing
listing = Listing.objects.latest('created_at')
print(f"Listing ID: {listing.id}")
print(f"Title: {listing.title}")
print(f"Images: {listing.media.filter(type='image').count()}")
```

### Phase 4: Telegram Verification

#### Step 4.1: Check Telegram Channels
1. Open Telegram app/web
2. Navigate to each selected channel
3. **Expected Post:**
   - **Photo**: First image from listing
   - **Caption Format**:
     ```
     **Test Listing - Telegram Cross-Post**

     💰 1,000,000 UZS
     📍 Tashkent

     This is a test listing to verify Telegram cross-posting functionality...

     #electronics #phones

     👉 Посмотреть объявление (clickable link)
     ```

#### Step 4.2: Verify Link Functionality
1. Click on "Посмотреть объявление" link in Telegram post
2. Should open: `https://sail.uz/l/{listing_id}`
3. Listing detail page should load correctly

### Phase 5: Edge Case Testing

#### Test 5.1: Listing Without Image
1. Create a new listing without uploading images
2. Select Telegram channels
3. Publish listing
4. **Expected Telegram Post**: Text-only message with all details (no photo)

#### Test 5.2: Multiple Channels
1. Create listing and select ALL available Telegram channels
2. Publish
3. **Expected Result**: Post appears in all selected channels

#### Test 5.3: No Channels Selected
1. Create listing without selecting any Telegram channels
2. Publish
3. **Expected Result**:
   - Listing created successfully
   - No Telegram posts
   - No Celery task triggered

#### Test 5.4: Long Description
1. Create listing with 500+ character description
2. **Expected Telegram Post**: Description truncated to 200 chars + "..."

## Troubleshooting Guide

### Issue: Telegram Channel Selector Not Appearing

**Symptoms:** The "Share to Telegram" section doesn't show up on the post page.

**Diagnosis:**
```bash
# Check if there are active chats
python3 manage.py shell
from accounts.models import TelegramChatConfig
print(TelegramChatConfig.objects.filter(is_active=True).count())
```

**Solutions:**
1. Add bot to Telegram channels
2. Send `/start` to bot from channels
3. Verify webhook is receiving updates
4. Check `TelegramChatConfig` model has entries with `is_active=True`

### Issue: Celery Task Not Running

**Symptoms:** No logs in Celery worker terminal after publishing listing.

**Diagnosis:**
```bash
# Check Celery worker status
celery -A config inspect active

# Check broker connection
redis-cli ping  # Should return PONG
```

**Solutions:**
1. Restart Celery worker: `celery -A config worker --loglevel=info`
2. Verify Redis is running: `redis-cli ping`
3. Check `CELERY_BROKER_URL` in settings
4. Ensure `listings` app is discovered by Celery (check `INSTALLED_APPS`)

### Issue: Telegram Post Fails (403 Forbidden)

**Symptoms:** Celery logs show "403 Forbidden" error.

**Cause:** Bot doesn't have permission to post in channel.

**Solutions:**
1. Go to channel settings
2. Add bot as administrator
3. Grant "Post Messages" permission
4. Try posting again

### Issue: Image Not Appearing in Telegram Post

**Symptoms:** Post appears as text-only, even though listing has images.

**Diagnosis:**
```bash
python3 manage.py shell
from listings.models import Listing
listing = Listing.objects.get(id=YOUR_LISTING_ID)
first_image = listing.media.filter(type="image").first()
print(f"Image URL: {first_image.image.url if first_image else 'No image'}")
```

**Solutions:**
1. Verify image was uploaded successfully
2. Check `ListingMedia` entry exists
3. If using local storage, ensure image file exists
4. If using S3, verify URL is publicly accessible

### Issue: Wrong Listing URL in Telegram Post

**Symptoms:** Link in Telegram post goes to wrong URL or 404.

**Diagnosis:**
Check `WEB_BASE_URL` setting:
```bash
python3 manage.py shell
from django.conf import settings
print(settings.WEB_BASE_URL)
```

**Solution:**
Update `WEB_BASE_URL` in `.env` to match your frontend URL (e.g., `https://sail.uz`).

## Success Criteria

✅ **Backend:**
- Celery worker running and discovering `share_listing_to_telegram_task`
- `TELEGRAM_BOT_TOKEN` and `WEB_BASE_URL` configured
- At least 1 active `TelegramChatConfig` in database

✅ **Frontend:**
- TelegramChannelSelector component appears on post page
- Chat photos display correctly (72x72px)
- Selected chats highlight with blue border
- Selection state persists during form filling

✅ **Integration:**
- Publishing listing triggers Celery task
- Celery logs show successful task execution
- Telegram posts appear in selected channels within 5 seconds
- Posts include image (if available), title, price, location, description, hashtags
- Clickable link navigates to correct listing detail page

✅ **Edge Cases:**
- Listings without images post as text-only
- Long descriptions are truncated properly
- Multiple channel selection works
- No errors when no channels selected

## Next Steps After Successful Testing

Once all tests pass, consider implementing:

1. **User Feedback**: Show success/failure notifications in frontend after Telegram posting
2. **Retry Logic**: Add automatic retry for failed Telegram posts
3. **Admin Dashboard**: Create Django admin interface for managing `TelegramChatConfig`
4. **Default Channels**: Allow users to set default Telegram channels for auto-selection
5. **Post Scheduling**: Schedule Telegram posts for specific times
6. **Analytics**: Track which channels receive the most engagement
7. **i18n**: Localize Telegram messages based on user/channel language preferences

## Rollback Plan

If critical issues are found during testing:

```bash
# Disable Telegram sharing temporarily
python3 manage.py shell

from django.conf import settings
# Set TELEGRAM_BOT_TOKEN to empty in .env and restart Django

# Or deactivate all chats
from accounts.models import TelegramChatConfig
TelegramChatConfig.objects.update(is_active=False)
```

## Contact & Support

For issues or questions:
- Check Celery worker logs first
- Review Django error logs
- Verify Telegram bot permissions
- Consult this testing guide's troubleshooting section
