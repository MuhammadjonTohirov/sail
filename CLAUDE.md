# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**Sail** is a modern C2C classifieds marketplace with Django REST Framework backend and Next.js frontend. The platform enables users to buy, sell, and exchange items with advanced search, real-time chat, and multi-currency support. The project follows clean architecture principles and modular design patterns.

## Commands

### Backend (Django)
```bash
cd server
python manage.py runserver
python manage.py migrate
python manage.py createsuperuser
python manage.py collectstatic
python manage.py shell
python manage.py test
celery -A config worker --loglevel=info
```

### Frontend (Next.js)
```bash
cd web_client
npm run dev
npm run build
npm run start
npm run lint
```

### Development Environment
```bash
docker-compose up -d  # Start PostgreSQL, Redis, OpenSearch, MinIO
```

## Architecture

### Backend Structure
- **Django Apps**: accounts, taxonomy, listings, searchapp, chat, favorites, savedsearches, moderation, currency, uploads, health
- **Key Models**:
  - User, Profile, OTPCode (accounts)
  - Listing, ListingAttributeValue, ListingMedia (listings)
  - Category, Location, Attribute, AttributeOption (taxonomy)
  - ChatThread, ChatThreadParticipant, ChatMessage, ChatAttachment (chat)
  - FavoriteListing, RecentlyViewedListing (favorites)
  - SavedSearch (savedsearches)
  - Report (moderation)
  - Currency, ExchangeRate (currency)
- **Search**: OpenSearch for faceted search, filtering, and ranking (searchapp)
- **Queue**: Celery with Redis for background tasks (async indexing, notifications)
- **Storage**: S3-compatible (MinIO/CloudFlare R2) for media uploads
- **Database**: SQLite (development), PostgreSQL (production-ready)
- **Authentication**:
  - Phone OTP authentication (SMS-based verification)
  - Email/Password authentication
  - Telegram authentication (Login Widget + Mini App)
  - JWT token management (access/refresh)
  - Rate limiting on OTP and login endpoints
- **Views Architecture**: Modular views structure with separate files per feature
  - Accounts: 5 modular view files (`otp_auth.py`, `password_auth.py`, `telegram_auth.py`, `profile.py`, `base.py`)
  - Listings: 14 modular view files (create, update, detail, activate, deactivate, delete, refresh, media operations, my/user listings)
  - Chat: 2 modular view files (`chat_thread_viewset.py`, `chat_attachment_upload_view.py`)
  - Taxonomy: 3 modular view files + utilities (`categories_tree_view.py`, `category_attributes_view.py`, `locations_view.py`)
  - Moderation: 3 modular view files (`report_create_view.py`, `report_reasons_view.py`, `moderation_queue_view.py`)
  - Search: 3 files (`listing_search_view.py`, `index.py`, `opensearch_client.py`)

### Frontend Structure
- **Next.js 14** with App Router
- **Clean Architecture**: domain/data/presentation layers for maintainability
- **State Management**: React Context + Zustand for chat
- **Custom Hooks**: 18 hooks for features (useAuth, useListings, useChat, useFavorites, useChatThreads, useChatMessages, useChatThreadActions, useSendChatMessage, useCurrency, useLocale, useModeration, useProfile, useRecentlyViewed, useSavedSearches, useSearch, useTaxonomy, useChatStore)
- **Key Routes**:
  - `/` - Homepage with categories and featured listings
  - `/search` - Search page with advanced filters and sorting
  - `/l/[id]` - Listing detail page with contact info
  - `/post` - Multi-step listing creation wizard
  - `/u/[userId]` - Public user profile
  - `/u/listings` - User dashboard (my listings management)
  - `/u/settings` - User settings and profile editing
  - `/u/chat` - User chat page
  - `/auth/login` - Email/password login
  - `/auth/register` - Registration with OTP verification
  - `/auth/otp` - Legacy OTP login
  - `/auth/forgot-password` - Password reset flow
  - `/auth/telegram` - Telegram authentication
  - `/favorites` - User's favorited listings with tabs
  - `/saved` - Saved searches management
  - `/chat` - Real-time chat interface
- **Navigation**: Responsive navigation with mobile hamburger menu (≤768px breakpoint)
- **i18n**: Multi-language support (Russian/Uzbek) using i18next
- **Theme**: Customizable theme colors and branding

### Data Flow
1. User creates/edits listing → Django saves to PostgreSQL/SQLite
2. Django signals trigger Celery tasks → Async OpenSearch indexing
3. Media uploads via Django ImageField (future: S3 direct upload)
4. Search queries → OpenSearch with faceted filters and currency normalization
5. Listing refresh (bump) updates `refreshed_at` timestamp for ranking
6. Chat messages → Real-time updates via WebSocket (planned) or polling
7. Currency conversions → Cached exchange rates (1-hour TTL)

## Key Implementation Details

### Authentication System
- **Multiple Auth Methods** (accounts/views/):
  - **Phone OTP** (`otp_auth.py`): SMS-based verification, 5-min expiration, rate limiting (3 codes/10min), dev mode support (OTP_DEV_CODE)
  - **Email/Password** (`password_auth.py` - 11,591 lines): Registration with OTP verification, login with email or phone, password reset flow with `Purpose.PASSWORD_RESET`
  - **Telegram** (`telegram_auth.py` - 8,184 lines): Login Widget integration, HMAC-SHA256 signature verification, auto profile photo sync with `download_telegram_photo()`, timestamp validation (86400s max age)
  - **Profile Management** (`profile.py`): MeView, ProfileUpdateView, ProfileDeleteView, ProfileActiveView, UserProfileView
  - **Base Utilities** (`base.py`): Phone normalization (E.164), email detection, Telegram photo downloader
- **Token Management**: JWT access/refresh tokens using djangorestframework-simplejwt
- **Rate Limiting**: Protection on OTP requests and login endpoints
- **Profile Model**: phone_e164 (nullable), email, display_name, avatar_url, about, telegram_id, telegram_username, telegram_photo_url, location, logo, banner, last_active_at
- **OtpCode Model**: Added `Purpose` enum (PHONE_VERIFY, PASSWORD_RESET), email field for password reset flows, factory method `create_new()`

### Listings System
- **Listing Model Fields**:
  - Core: title, description, price_amount, price_currency, is_price_negotiable
  - Classification: condition (new/used), deal_type (sell/exchange/free), seller_type (person/business)
  - Status: draft → pending_review → active → paused → closed/expired
  - Contact: contact_name, contact_email, contact_phone, contact_phone_masked
  - Location: lat/lon coordinates, location ForeignKey
  - Metadata: quality_score, refreshed_at (for bumping), view counts
- **Category-Specific Attributes**: Polymorphic values (text, number, boolean, select, multiselect, range)
- **Media Management** (ListingMedia model):
  - Multiple photos per listing with ordering
  - Image dimensions stored (width/height)
  - Upload, delete, reorder operations
- **Modular Views** (listings/views/):
  - `listing_create_view.py` / `listing_create_raw_view.py` - Create listing
  - `listing_update_view.py` / `listing_update_raw_view.py` - Edit listing
  - `listing_detail_view.py` - Get listing detail
  - `listing_activate_view.py` / `listing_deactivate_view.py` - Status management
  - `listing_delete_view.py` - Soft/hard delete
  - `listing_refresh_view.py` - Bump listing to top
  - `listing_media_upload_view.py` / `listing_media_delete_view.py` / `listing_media_reorder_view.py` - Media operations
  - `my_listings_view.py` - Current user's listings
  - `user_listings_view.py` - Public user listings

### Search & Filtering (searchapp/)
- **OpenSearch Integration**:
  - Full-text search on title and description
  - Category and location filtering (with hierarchy support)
  - Price range filtering with multi-currency support
  - Attribute-based filtering (nested queries for polymorphic values)
  - Condition filtering (new/used)
  - User-specific listing search
- **Currency-Aware Search**:
  - All prices normalized to base currency (UZS) in index
  - Exchange rate caching (1-hour TTL)
  - Cross-currency price comparisons
- **Sorting Options**: Relevance (default), newest first, price ascending/descending
- **Faceted Search**: Aggregations for categories, locations, attributes
- **Signal-Driven Indexing**: Automatic reindexing via Django signals and Celery tasks
- **Stale Data Prevention**: Verifies listing existence in DB before returning results
- **Graceful Degradation**: Fallback when OpenSearch unavailable

### Favorites & Recently Viewed
- **FavoriteListing**: Toggle favorite/unfavorite, list user's favorites, unique constraint
- **RecentlyViewedListing**: Automatic tracking on listing view, session-based for anonymous users
- **Filter Persistence**: Applied filters saved in URL params
- **Mobile Optimization**: Filter sheet for mobile devices with touch-optimized UI
- **Frontend Components**:
  - `FavoritesTabs.tsx` - Tabbed interface with count badges
  - `LikedItemsSection.tsx` - Favorites display with clear all functionality
  - `RecentItemsSection.tsx` - Recently viewed listings
  - `SavedSearchesSection.tsx` - Saved search queries management
  - `EmptyState.tsx` - Empty state handling
- **Serializers**: Optimized by removing `build_absolute_uri()` calls for better performance

### Chat System (chat/)
- **Models**:
  - **ChatThread**: UUID primary key, listing snapshot fields (title, price_amount, price_currency, thumbnail_url), message preview caching (last_message_at, last_message_preview), status (ACTIVE/ARCHIVED/CLOSED), unique constraint (buyer_id, listing_id), `touch()` method for cache updates
  - **ChatThreadParticipant**: UUID primary key, role-based (BUYER/SELLER), unread tracking (unread_count, last_read_message_id, last_read_at), archive/delete flags (is_archived, is_deleted), profile snapshot (display_name, avatar_url)
  - **ChatMessage**: UUID primary key, soft delete support (deleted_at), attachments (JSON array), metadata (JSON object), `soft_delete()` and `last_attachment_caption()` methods
  - **ChatAttachment**: File attachments (up to 5 per message, configurable via CHAT_MAX_ATTACHMENTS)
- **Services** (chat/services.py):
  - Dataclasses: `ListingSnapshot`, `UserSnapshot`
  - Core functions: `get_or_create_thread()`, `append_message()`, `mark_read()`, `set_archive_state()`, `soft_delete_thread()`
- **Views** (chat/views/):
  - `chat_thread_viewset.py`: ViewSet with filtering (archived, role, my_ads, unread), prefetch_related optimization
  - `chat_attachment_upload_view.py`: File upload endpoint
- **API**: Thread list/retrieve/create, message create/list/mark read, archive/unarchive/delete operations
- **Frontend**:
  - Zustand store (`useChatStore.tsx`) for chat state management
  - Custom hooks: `useChat`, `useChatThreads`, `useChatMessages`, `useChatThreadActions`, `useSendChatMessage`
  - Components: `ChatOverlay`, `ChatPanel`, `ChatShell`, `ThreadList`
  - Real-time updates via polling (WebSocket planned)

### Saved Searches (savedsearches/)
- **SavedSearch Model**: JSON query storage, frequency settings (instant/daily), active/inactive toggle
- **Integration**: SaveSearchButton component on search page
- **Notifications**: Celery tasks for sending notifications based on frequency

### Moderation (moderation/)
- **Report Model**: User-generated reports on listings, reason codes, status tracking (open/resolved), notes field
- **Modular Views** (moderation/views/):
  - `report_create_view.py` - Submit listing report
  - `report_reasons_view.py` - List available report reasons
  - `moderation_queue_view.py` - Moderation dashboard
- **Endpoints**: POST /api/v1/reports, GET /api/v1/reports/reasons, GET /api/v1/moderation/queue
- **Frontend**: `ReportModal.tsx` component, `useModeration` hook
- **Admin**: Django admin integration for moderation queue

### Multi-Currency (currency/)
- **Currency Model**: Currency code, name, symbol, active/inactive status, default flag
- **ExchangeRate Model**: Bidirectional conversion rates, automatic caching (1-hour TTL)
- **CurrencyService**: Active currencies retrieval, default currency, rate lookups, price conversion/normalization
- **Search Integration**: Currency-aware price filtering and normalization

## Development Workflow

1. **Backend Changes**:
   - Always run migrations after model changes: `python manage.py migrate`
   - Create migrations: `python manage.py makemigrations`
   - New Django apps should follow modular views pattern (see accounts/views/, listings/views/)
   - API changes auto-update OpenAPI schema via drf-spectacular
   - Search index changes trigger automatic reindexing via signals

2. **Frontend Changes**:
   - Use TypeScript with proper typing throughout
   - Follow clean architecture: domain/data/presentation layers
   - Localize all user-facing strings in ru.json and uz.json
   - Test responsive behavior at ≤768px breakpoint

3. **Testing**:
   - Backend: `python manage.py test`
   - Frontend: Extend testing as needed (minimal setup currently)

4. **Database**:
   - Development: SQLite with WAL mode
   - Production: PostgreSQL (configure via environment variables)

5. **Search**:
   - OpenSearch automatically indexes on save/delete via signals
   - Manual reindexing: Use Celery tasks if needed
   - Graceful fallback when OpenSearch unavailable

## Coding Standards

### General Principles
- **SOLID Principles**: Follow Single Responsibility, Open/Closed, Liskov Substitution, Interface Segregation, and Dependency Inversion
- **DRY (Don't Repeat Yourself)**: Avoid code duplication
- **Simplicity**: Keep code clean and simple - prefer clarity over cleverness
- **Extensions**: Create extensions for computed properties/methods instead of wrappers when possible

### Frontend Specific
- **Clean Architecture**: Use domain/data/presentation layers
- **Localization**: Always localize user-facing strings using i18n (ru.json, uz.json)
- **TypeScript**: Maintain proper typing throughout the codebase
- **CSS**: Use modular CSS files, avoid inline styles where possible
- **Responsive Design**: Consider mobile-first approach (breakpoint: 768px)

### Backend Specific
- **Modular Views**: Split views into separate files by feature (see `accounts/views/`, `listings/views/`)
- **API Versioning**: Use API versioning for breaking changes
- **Serializers**: Keep serializers focused and reusable
- **Migrations**: Always create and test migrations before committing

## Technology Stack

### Backend
- **Framework**: Django 5.x with Django REST Framework 3.14+
- **Authentication**: djangorestframework-simplejwt 5.3+
- **Database**: PostgreSQL (psycopg 3.x) / SQLite
- **Search**: opensearch-py 2.4+
- **Task Queue**: Celery 5.3+ with Redis 5+
- **Storage**: boto3 1.34+ (S3-compatible)
- **API Docs**: drf-spectacular 0.27+ (OpenAPI)
- **Image Processing**: Pillow 10+
- **CORS**: django-cors-headers 4.x
- **HTTP Client**: requests 2.31+

### Frontend
- **Framework**: Next.js 14.2.33 with React 18.2.0
- **Language**: TypeScript 5.4.5
- **State Management**: React Context + Zustand 4.5.2
- **i18n**: i18next 25.6.0
- **Icons**: @lineiconshq/react-lineicons
- **Image Compression**: browser-image-compression 2.0.2
- **Styling**: Modular CSS with responsive design

### Infrastructure
- **Database**: PostgreSQL (production) / SQLite (development)
- **Cache/Broker**: Redis
- **Search Engine**: OpenSearch
- **File Storage**: S3-compatible (MinIO/CloudFlare R2)
- **Time Zone**: Asia/Tashkent
- **Languages**: Russian (default), Uzbek

## Important Files

### Backend (`server/`)
- `config/settings.py` - Django configuration (database, Celery, OpenSearch, auth, Telegram)
- `config/urls.py` - Main URL routing with API versioning
- **Accounts App**:
  - `accounts/models.py` - User, Profile (with Telegram fields), OTPCode (with Purpose enum)
  - `accounts/views/base.py` - Shared utilities (phone normalization, email detection, Telegram photo download)
  - `accounts/views/otp_auth.py` - Phone OTP authentication (OTPRequestView, OTPVerifyView)
  - `accounts/views/password_auth.py` - Email/password authentication (RegisterView, RegisterVerifyView, LoginView, ForgotPasswordView, ResetPasswordView)
  - `accounts/views/telegram_auth.py` - Telegram authentication (TelegramLoginView with signature verification)
  - `accounts/views/profile.py` - Profile management (MeView, ProfileUpdateView, ProfileDeleteView, ProfileActiveView, UserProfileView)
  - `accounts/serializers.py` - Authentication and profile serializers
  - `accounts/api_urls.py` - Authentication and profile endpoints
- **Listings App**:
  - `listings/models.py` - Listing (with contact fields), ListingAttributeValue, ListingMedia (with dimensions)
  - `listings/views/` - 14 modular view files (create, update, detail, activate, deactivate, delete, refresh, media operations, my/user listings)
  - `listings/serializers.py` - Listing serializers with polymorphic attributes
  - `listings/api_urls.py` - Listing CRUD and media endpoints
- **Taxonomy App**:
  - `taxonomy/models.py` - Category, Location, Attribute, AttributeOption models
  - `taxonomy/views/` - 3 modular view files + utilities (categories tree, category attributes, locations)
- **Search App**:
  - `searchapp/views/listing_search_view.py` - OpenSearch integration (15,453 lines - comprehensive)
  - `searchapp/index.py` - Index creation and management
  - `searchapp/opensearch_client.py` - Client wrapper
- **Chat App**:
  - `chat/models.py` - ChatThread, ChatThreadParticipant, ChatMessage, ChatAttachment models
  - `chat/services.py` - Service layer with dataclasses (ListingSnapshot, UserSnapshot) and core functions
  - `chat/views/` - 2 modular view files (thread viewset, attachment upload)
- **Favorites App**:
  - `favorites/models.py` - FavoriteListing, RecentlyViewedListing models
  - `favorites/serializers.py` - Optimized serializers (removed build_absolute_uri calls)
- **Currency App**:
  - `currency/models.py` - Currency, ExchangeRate models
  - `currency/services.py` - CurrencyService for conversions
- **Moderation App**:
  - `moderation/models.py` - Report model
  - `moderation/views/` - 3 modular view files (report create, reasons, queue)
- **SavedSearches App**:
  - `savedsearches/models.py` - SavedSearch model
  - `savedsearches/tasks.py` - Celery notification tasks
- **Health App**:
  - Health check endpoint

### Frontend (`web_client/`)
- **App Structure**:
  - `app/layout.tsx` - Next.js root layout with providers
  - `app/navbar/ClientNav.tsx` - Responsive navigation with mobile hamburger menu
  - `app/styles/` - 13 modular CSS files (base.css, cards.css, chat.css, favorites.css, forms.css, gallery.css, layout.css, listing-detail.css, modals.css, navigation.css, search.css, thread-list.css, utilities.css)
  - 41 TypeScript files in /app (pages, layouts, view components)
- **Components** (32 files organized by feature):
  - **Root**: FavoriteButton, PriceDisplay, RecentlyViewedTracker, SaveSearchButton
  - **Auth**: TelegramLoginButton
  - **Chat**: ChatOverlay, ChatPanel, ChatShell, ThreadList
  - **Home**: CategoriesGrid, HeroSearch
  - **Layout**: Footer
  - **Listing**: AttributesForm, ReportModal
  - **Providers**: ActiveStatusProvider, CurrencyProvider, FavoritesProvider, I18nProvider, ProfileProvider
  - **Search**: ProductCard, SearchBar, SearchBreadcrumbs, SearchFilters, SearchResultsBar, SearchResultsGrid
  - **UI**: Avatar, CategoryPicker, ConfirmModal, Dropdown, LocationMap, LocationPicker, MultiDropdown
- **Hooks** (18 custom hooks):
  - useAuth, useChat, useChatMessages, useChatStore, useChatThreadActions, useChatThreads
  - useCurrency, useFavorites, useListings, useLocale, useModeration
  - useProfile, useRecentlyViewed, useSavedSearches, useSearch, useSendChatMessage, useTaxonomy
- **Domain Layer** (Clean Architecture):
  - **Models**: 23 interfaces (Listing, User, Category, etc.)
  - **Use Cases**: 48 specialized use cases organized by feature
    - auth/ (4): GetAccessToken, Logout, RefreshToken, SaveTokens
    - chat/ (9): CreateThread, GetThread, ListThreads, SendMessage, etc.
    - currency/ (2): ConvertCurrency, GetCurrencyConfig
    - favorites/ (3): ListFavorites, ToggleFavorite, RemoveFavorite
    - geocoding/ (1): GeocodeLocation
    - listings/ (8): CreateListing, UpdateListing, UploadMedia, etc.
    - locale/ (1): GetCurrentLocale
    - moderation/ (2): GetReportReasons, SubmitReport
    - profile/ (4): GetProfile, UpdateProfile, UpdateLastActive, DeleteAccount
    - recentlyViewed/ (3): GetRecentlyViewed, TrackRecentlyViewed, ClearRecentlyViewed
    - savedSearches/ (4): GetSavedSearches, CreateSavedSearch, UpdateSavedSearch, DeleteSavedSearch
    - search/ (1): SearchListings
    - taxonomy/ (3): GetCategories, GetCategoryAttributes, GetLocations
    - users/ (1): GetUserById
  - **Repositories**: Interface definitions
- **Data Layer**:
  - **Repositories**: 14 implementation classes
  - **Models**: DTOs (ProfileDTO) and mappers
  - **API**: 15 lib API files (api.ts, apiUtils.ts, authApi.ts, chatApi.ts, currencyApi.ts, favoritesApi.ts, listingsApi.ts, moderationApi.ts, photoCompressor.ts, recentlyViewedApi.ts, savedSearchesApi.ts, searchApi.ts, taxonomyApi.ts, usersApi.ts)
- **i18n**:
  - `i18n/config.ts` - i18next initialization
  - `i18n/ru.json` - 22.4 KB Russian translations
  - `i18n/uz.json` - 16.9 KB Uzbek translations
  - Middleware handles legacy /ru/ and /uz/ prefixed URLs
- **Config**:
  - `config/app.config.ts` - Branding, SEO, theme colors, feature flags, API config, Telegram bot, pagination, upload limits, i18n (defaultLocale: 'ru', locales: ['uz', 'ru', 'en']), maps (center: Tashkent, zoom: 12)

### Configuration & Documentation
- `CLAUDE.md` - Project documentation and coding guidelines (this file)
- `docker-compose.yml` - Development services (PostgreSQL, Redis, OpenSearch, MinIO)
- `server/.env` - Backend environment variables
- `web_client/.env.local` - Frontend environment variables
- `docs/` - Implementation plans and blueprints
- `resources/` - Static resources (location data, etc.)

## Implementation Status

**Project Name**: Sail (formerly MHub/OLX Clone)
**Current Progress**: ~80-90% Complete

### ✅ Fully Implemented Features

**Backend (11 Django Apps, 146 Python files)**:
- Complete Django project structure with comprehensive modular views pattern
- **Authentication**: Multi-method (Phone OTP, Email/Password with OTP verification, Telegram Login Widget)
  - 5 modular view files in accounts/views/ (base.py, otp_auth.py, password_auth.py, telegram_auth.py, profile.py)
  - Phone normalization (E.164), email validation, Telegram photo auto-sync
  - JWT token management with refresh
- **Listings**: Full CRUD with 14 modular view files
  - Create (form + raw), update (form + raw), detail, activate, deactivate, delete, refresh
  - Media operations: upload with dimensions, delete, reorder
  - My listings, user listings (public)
  - Contact fields: name, email, phone
- **Taxonomy**: Hierarchical categories and locations
  - 3 modular view files (categories tree, category attributes, locations)
- **Search**: OpenSearch integration (15,453 lines in listing_search_view.py)
  - Full-text search, faceted filtering, multi-currency price normalization
  - Signal-driven indexing, graceful degradation
- **Chat**: Service-layer architecture with dataclasses
  - 2 modular view files (thread viewset, attachment upload)
  - Thread snapshots (listing, user), message preview caching
  - Unread tracking, archive/delete, soft delete messages
- **Favorites**: Optimized serializers
  - Toggle favorite, recently viewed tracking (session-based)
- **Saved Searches**: JSON query storage with notification frequency
- **Moderation**: 3 modular view files
  - Report create, reasons, moderation queue
- **Currency**: Multi-currency with exchange rates and normalization
- **Health**: Health check endpoint
- **API Documentation**: OpenAPI via drf-spectacular

**Frontend (2,872 TypeScript files total, 73 pages/components)**:
- **Architecture**: Next.js 14 with App Router and clean architecture (domain/data/presentation)
  - 41 TypeScript files in /app (pages, layouts, view components)
  - 32 component files in /components (organized by feature)
- **Clean Architecture Implementation**:
  - **Domain**: 23 models, 48 use cases, repository interfaces
  - **Data**: 14 repository implementations, DTOs, 15 API lib files
  - **Presentation**: Pages, components, 18 custom hooks
- **State Management**:
  - React Context (5 providers): ActiveStatus, Currency, Favorites, I18n, Profile
  - Zustand store: Chat state management
  - Custom hooks bridge domain and UI
- **Navigation**: Responsive navigation with mobile hamburger menu (≤768px)
- **i18n**: Multi-language support (Russian default, Uzbek) with i18next
  - ru.json (22.4 KB), uz.json (16.9 KB)
  - Middleware handles legacy locale-prefixed URLs
- **Features**:
  - Advanced search with filters (category, location, price, attributes, condition)
  - Listing creation wizard and editing interface with contact fields
  - User dashboard (my listings, settings, profile)
  - **Favorites management**: Tabbed interface (Liked Items, Saved Searches, Recently Viewed) with count badges
  - Chat interface with ThreadList, ChatOverlay, ChatPanel components
  - Saved searches management
  - Authentication: Telegram Login Widget, email/password, phone OTP
  - Registration with OTP verification, password reset flows
  - Currency selector and multi-currency display
- **Styling**: 13 modular CSS files with responsive design
- **Touch-optimized mobile UI** with filter sheets and mobile-first approach

### ⚠️ Partially Implemented / Needs Work
- **Promotions System**: Backend models exist, frontend integration pending
- **Payment Integration**: Basic structure exists, webhook handling needed
- **Email Notifications**: Basic setup, needs templates and Celery tasks
- **S3 Direct Upload**: Currently using Django ImageField, S3 presigned URLs planned
- **Real-time Chat**: Currently polling-based, WebSocket integration planned
- **Advanced SEO**: Basic meta tags, enhanced optimization needed
- **Analytics**: Basic view counts, comprehensive analytics pending
- **Push Notifications**: Not yet implemented
- **Advanced Moderation**: Basic reporting works, automated spam detection pending

### 🔄 Recent Changes (Last Commits)
- Frontend refresh: auth, search, favorites, posting (commit 2b193cc)
- Refactored all views to modular pattern across accounts, listings, chat, taxonomy, moderation, searchapp
- Enhanced favorites page with tabbed interface (LikedItemsSection, RecentItemsSection, SavedSearchesSection)
- Added contact fields to listings (contact_name, contact_email, contact_phone)
- Profile.phone_e164 field made nullable (migration 0007) for Telegram-only users
- Enhanced OtpCode with Purpose enum (PHONE_VERIFY, PASSWORD_RESET) and email field
- Chat service layer with dataclasses (ListingSnapshot, UserSnapshot)
- Favorites serializer optimized (removed build_absolute_uri calls)
- Telegram authentication with profile photo auto-sync
- Clean architecture improvements with 48 use cases and 14 repositories
- Listing detail page enhancements (gallery, seller info, contact views, related listings)

### 📊 Statistics
- **Backend**: 11 apps, 146 Python files
  - Modular views: 5 in accounts, 14 in listings, 2 in chat, 3 in taxonomy, 3 in moderation, 3 in searchapp
  - Migration files: 83+ migrations
- **Frontend**: 2,872 TypeScript files total
  - App files: 41 (pages, layouts, views)
  - Components: 32 (organized by feature)
  - Custom hooks: 18
  - Use cases: 48 (domain layer)
  - Repositories: 14 implementations (data layer)
  - API lib files: 15
  - CSS modules: 13
- **Database**: SQLite (dev, WAL mode) with PostgreSQL support
- **API Endpoints**: 50+ endpoints across /api/v1/
- **Localization**: 2 active languages (Russian default, Uzbek)
  - ru.json: 22.4 KB
  - uz.json: 16.9 KB

### 🎯 Next Priorities
1. Complete payment integration and promotions UI
2. Implement real-time chat via WebSockets
3. Add email notification templates and automation
4. Migrate to S3 direct upload for media
5. Enhance SEO with structured data and sitemaps
6. Add comprehensive analytics dashboard
7. Implement automated spam detection
8. Performance optimization for large datasets