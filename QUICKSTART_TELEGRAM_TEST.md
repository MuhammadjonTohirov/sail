# Quick Start: Testing Telegram Cross-Posting

## 5-Minute Test Guide

### Step 1: Verify Setup (2 minutes)

```bash
cd server
python3 scripts/verify_telegram_setup.py
```

This script checks:
- ✓ Django settings (bot token, web URL, Celery)
- ✓ Telegram chats in database
- ✓ Bot API connection
- ✓ Celery task registration
- ✓ API endpoints

**Expected output:** "All checks passed! Telegram cross-posting is ready to test."

### Step 2: Start Services (1 minute)

Open 3 terminals:

**Terminal 1 - Django:**
```bash
cd server
python3 manage.py runserver
```

**Terminal 2 - Celery Worker (REQUIRED!):**
```bash
cd server
celery -A config worker --loglevel=info
```

**Terminal 3 - Frontend:**
```bash
cd web_client
npm run dev
```

### Step 3: Create Test Listing (2 minutes)

1. Go to: http://localhost:3000/post
2. Fill in:
   - Title: "Test Telegram Post"
   - Category: Any category
   - Location: Any location
   - Price: 1000000 UZS
   - Description: "Testing Telegram cross-posting"
   - **Upload 1 image** (important!)
3. **Select Telegram channels** in "Share to Telegram" section
4. Click "Publish"

### Step 4: Verify (immediate)

**Watch Celery terminal** for logs:
```
Task listings.tasks.share_listing_to_telegram_task received
Successfully shared listing X to chat Y
```

**Check Telegram channels** - should see post with:
- Photo
- Title and price
- Location
- Description
- Clickable link

## Quick Troubleshooting

| Issue | Fix |
|-------|-----|
| No "Share to Telegram" section | Add bot to channels, send /start |
| Celery task not running | Check Celery worker is running |
| 403 Forbidden in logs | Make bot admin in channel |
| No image in Telegram | Check image uploaded to listing |

## What's Next?

After successful testing, see [TESTING_TELEGRAM_CROSSPOSTING.md](TESTING_TELEGRAM_CROSSPOSTING.md) for:
- Detailed testing procedures
- Edge case testing
- Comprehensive troubleshooting
- Future enhancements

---

**Need help?** Run the verification script first:
```bash
cd server
python3 scripts/verify_telegram_setup.py
```
