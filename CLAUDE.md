# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is an OLX-style C2C classifieds marketplace with Django REST Framework backend and Next.js frontend. The project follows the implementation plan in `docs/django_react_implementation_plan.md` and blueprint in `docs/olx_clone_blueprint.md`.

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
- **Django Apps**: accounts, taxonomy, listings, mediafiles, promotions, orders, payments, moderation, favorites, savedsearches, search, audit, adminpanel
- **Key Models**: User, Listing, Category, Location, Attribute, ListingAttributeValue, ListingMedia
- **Search**: OpenSearch for faceted search and ranking
- **Queue**: Celery with Redis for background tasks
- **Storage**: S3-compatible (MinIO/CloudFlare R2) for media

### Frontend Structure
- **Next.js 14** with App Router
- **Key Routes**: 
  - `/` - Homepage with categories and featured listings
  - `/c/[categorySlug]` - Category listings with faceted search
  - `/l/[id]` - Listing detail page
  - `/post` - Multi-step listing creation wizard
  - `/u/listings` - User dashboard
  - `/auth/otp` - Phone OTP authentication

### Data Flow
1. User creates/edits listing → Django saves to PostgreSQL
2. Outbox pattern triggers Celery task → OpenSearch indexing
3. Media uploads go directly to S3 via presigned URLs
4. Search queries hit OpenSearch with faceted filters
5. Promotions (bump/top/spotlight) affect search ranking

## Key Implementation Details

### Authentication
- Phone-based OTP authentication
- JWT tokens for API access
- Rate limiting on OTP requests

### Listings System
- Category-specific attributes with polymorphic values (text, number, boolean, option)
- Geo-location support with lat/lon coordinates
- Media handling with image optimization
- Status lifecycle: draft → pending_review → active → expired/closed

### Search & Filters
- OpenSearch integration with category-specific facets
- Multi-value attribute filters and numeric ranges
- Sorting by relevance, date, price, distance
- Promotion boosts affect ranking

### Monetization
- Bump promotions (refresh listing order)
- Top promotions (pin to category top)
- Spotlight promotions (featured placement)
- Payment integration with webhook handling

## Development Workflow

1. Backend changes require running migrations: `python manage.py migrate`
2. New Django apps should follow the established pattern in existing apps
3. API changes should update OpenAPI schema via drf-spectacular
4. Frontend uses TypeScript - ensure proper typing
5. Search index changes require reindexing via Celery tasks
6. Media uploads use presigned S3 URLs for direct client uploads

## Testing

Run backend tests: `cd server && python manage.py test`
Frontend testing setup is minimal - extend as needed

## Important Files

- `server/config/settings.py` - Django configuration
- `server/config/urls.py` - Main URL routing
- `web_client/app/layout.tsx` - Next.js root layout
- `docker-compose.yml` - Development services
- `docs/` - Detailed implementation plans and blueprints

## Implementation Status

The project appears to be in early development with:
- ✅ Basic Django project structure with apps
- ✅ Core models: User, Listing, Category, Location, Attributes
- ✅ Next.js frontend structure with key routes
- ✅ Database models and migrations
- ⚠️ Search integration (OpenSearch) - likely needs completion
- ⚠️ Payment system - likely needs implementation
- ⚠️ Media pipeline - basic structure exists
- ⚠️ SEO and i18n features - planned but may need implementation

Follow the milestone plan in `docs/django_react_implementation_plan.md` for systematic development.