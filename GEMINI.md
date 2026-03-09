# Project Context & Status

**Date:** December 7, 2025
**Operating System:** Darwin
**Project:** OLX-style C2C Classifieds Marketplace

## Overview
This project is a C2C classifieds marketplace (OLX clone) built with a Django REST Framework backend and a Next.js 14 frontend. It follows a Clean Architecture approach on the frontend and a modular app structure on the backend.

## Implementation Status

**Overall Progress:** ~70% (Estimated)

### ✅ Backend (Django)
**Implemented Apps:**
- `accounts`: User authentication (OTP, Password), Profiles.
- `taxonomy`: Categories, Locations, Attributes.
- `listings`: Core listing logic, attributes, signals.
- `searchapp`: OpenSearch integration, indexing tasks.
- `chat`: Real-time messaging, push notifications, attachments.
- `favorites`: User favorites.
- `savedsearches`: Saved search criteria and alerts.
- `moderation`: Moderation queues and logic.
- `currency`: Currency management.
- `uploads`: File upload handling.
- `health`: Health checks.

**Missing/Pending Apps (per Plan):**
- `promotions`: Bump, Top, Spotlight features.
- `orders`: Order management.
- `payments`: Payment gateway integration.
- `audit`: Audit logging (though `logs` dir exists).

### ✅ Frontend (Next.js)
**Implemented Features:**
- **Search & Filters:** Advanced search with OpenSearch, categories, dynamic attributes, price ranges, sorting. (Recently refactored for performance and mobile UX).
- **Listings:** Creation wizard (`/post`), Detail view (`/l/[id]`), Editing.
- **User Dashboard:** Profile management, My Listings (`/u`).
- **Chat:** Real-time chat interface (`/chat`).
- **Auth:** Login/Register with OTP/Password (`/auth`).
- **Favorites & Saved Searches:** UI for managing saved items (`/favorites`, `/saved`).
- **Localization:** i18n support (Russian/Uzbek).
- **Architecture:** Clean Architecture (Domain/Data/Presentation layers) implemented.

**Pending Features:**
- **Promotions UI:** Interface for purchasing/managing promotions.
- **Payments UI:** Checkout and payment flow.
- **Audit/History:** User visible history (if applicable).

## Recent Updates (Dec 7, 2025)
- **Search Refactor:** Fixed double fetching, race conditions, and filter clearing logic. Improved mobile layout for filters.
- **Backend Structure:** Confirmed existence of core apps (`chat`, `moderation`, `savedsearches`) and identified missing commerce-related apps.

## Key Documentation
- `docs/django_react_implementation_plan.md`: Master implementation plan.
- `web_client/GEMINI.md`: Detailed frontend context and recent changes.
- `server/README.md`: Backend specific documentation.

## Next Steps
1.  **Commerce Module:** Implement `promotions`, `orders`, and `payments` apps on the backend.
2.  **Commerce UI:** Build corresponding frontend flows for promotions and payments.
3.  **Refinement:** Continue polishing existing features (Search, Chat, Listings) and ensure mobile responsiveness.
4.  **Testing:** Expand test coverage for both backend and frontend.
