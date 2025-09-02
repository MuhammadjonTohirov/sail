# OLX.uz C2C Classifieds — Product & Tech Blueprint

Status: Draft v0.2 (updated with OLX.uz field research)

This document distills how a C2C classifieds marketplace like OLX.uz typically operates and translates it into a practical blueprint we can build. It assumes deals close offline (phone call, chat, or in-person) and monetization comes from paid listing promotions (bump/top/spotlight). Where specific OLX details are unknown, we note assumptions and propose proven patterns.

---

## 1) Product Summary

- Audience: Consumers buying/selling second-hand goods and services.
- Value: Fast posting, strong local discovery, powerful filters, mobile-friendly.
- Monetization: Paid promotion of listings (bump, top, spotlight/feature), possibly paid multi-post plans for power sellers.
- Platforms: Responsive web/PWA first; mobile apps later.
- Languages/Locale: Multi-language (e.g., Uzbek/Russian) and region-aware content.

Success metrics (examples):
- Time-to-first-contact after posting.
- Search → detail view CTR and listing saves.
- Paid promo conversion rate and ARPU.
- Spam rate, review turnaround, and removal SLAs.
- Page speed (LCP/CLS/INP) and crawl/index coverage.

---

## 2) Core Flows

Buyer flows
- Browse home → category → search results → detail → contact seller.
- Apply dynamic filters (price, condition, brand, attributes per category).
- Save listing; save search; receive alerts.

Seller flows
- Auth with phone OTP (optionally email/social later).
- Post listing wizard: pick category → location → title/price/description → photos → category attributes → preview → submit.
- Listing lifecycle: pending_review → active → paused/closed/expired.
- Promote listing: purchase bump/top/spotlight; view performance.
- Manage listings: edit, duplicate, delete, refresh.

Backoffice flows
- Content moderation (pre/post), policy checks, duplicate detection.
- Category/attribute configuration and experiments.
- Pricing and promotions management.
- Abuse reports triage and enforcement.

---

## 3) Information Architecture

- Category hierarchy: 2–3 levels (e.g., Vehicles → Cars; Electronics → Phones; Property → Apartments). Each category defines its own attribute schema and filters.
- Location hierarchy: country → region → city → district. Geo-points used for proximity search.
- Listing media: 1–12 photos, optional video later. Auto-orient, compress, WebP/AVIF, thumbnails.
- Listing states: draft, pending_review, active, paused, closed, expired, rejected.
- Promotions: bump (order freshness boost), top (pin to top category/SRP), spotlight (featured carousel/hero).
- Leads: phone reveal, copy, call-click, optional in-app chat; all tracked as events.

---

## 4) Domain Model (relational core)

Key entities (PostgreSQL suggested):

- users(id, phone_e164, email, display_name, roles[], status, created_at, last_login_at)
- profiles(user_id PK/FK, avatar_url, about, rating, listings_count, verified_flags)
- locations(id, parent_id, kind[COUNTRY|REGION|CITY|DISTRICT], name, slug, lat, lon)
- categories(id, parent_id, level, name, slug, is_leaf, order)
- attributes(id, category_id, key, label, type[enum: text, number, boolean, select, multiselect, range], unit, options_jsonb, is_indexed)
- listings(id, user_id, category_id, location_id, title, description, price_amount, price_currency, condition, status, created_at, refreshed_at, expires_at, quality_score, contact_phone_masked, lat, lon)
- listing_attributes(listing_id, attribute_id, value_text, value_number, value_bool, value_option_key)
- listing_media(id, listing_id, type[photo], url, width, height, order)
- promotions(id, listing_id, type[bump|top|spotlight], starts_at, ends_at, status)
- orders(id, user_id, total_amount, currency, status, created_at)
- order_items(id, order_id, listing_id, promotion_type, unit_price, qty, starts_at, ends_at)
- payments(id, order_id, provider, provider_ref, amount, currency, status, payload_jsonb, created_at)
- reports(id, listing_id, reporter_user_id, reason_code, notes, status, created_at)
- moderation_actions(id, target_type, target_id, action, actor_user_id, reason_code, notes, created_at)
- saved_searches(id, user_id, query_jsonb, title, frequency, last_sent_at, is_active)
- favorites(user_id, listing_id, created_at)
- audits(id, actor_user_id, action, entity, entity_id, changes_jsonb, created_at)

Indexes (examples):
- listings(status, category_id, location_id, refreshed_at DESC)
- listings using GIST on geography(POINT(lat, lon)) for geo distance.
- listing_attributes(listing_id), and partial indexes for popular attributes by category.
- promotions(listing_id, type, ends_at DESC)
- saved_searches(user_id, is_active)

---

## 5) Search, Filters, and Ranking

Search engine: Elasticsearch/OpenSearch (recommended) or Meilisearch for simpler ops. Index a flattened view per listing:

Index mapping (conceptual):
- id, title (text, analyzed), description (text), category_path (keyword[]), location_path (keyword[])
- price (double), currency (keyword), condition (keyword)
- attrs (nested): key (keyword), value_* (text|keyword|double|boolean)
- geo (geo_point), refreshed_at (date), quality_score (double)
- promo_flags: bump/top/spotlight booleans with decay timestamps

Query composition:
- Full-text match on title/description with synonyms and language analyzers.
- Filters: category, location (hierarchical), range facets (price, year, mileage), attribute facets per category.
- Sort options: relevance (default), newest (refreshed_at), price asc/desc, distance (if user shares location).

Ranking heuristic (example):
- score = BM25(text) * freshness_decay(refreshed_at) * quality_score * geo_proximity(optional) + promo_boost(type, time)
- promo_boost ensures “top/spotlight” appear first in their slots; “bump” refreshes freshness.

Saved searches and alerts:
- Store normalized filters and query JSON; nightly/instant digests when new matches appear.

---

## 6) Monetization — Promotions

Promotion types:
- Bump: refreshes listing order for X hours/days (can be repeated).
- Top: pins in top slots on SRP/category for N days; limited inventory per category.
- Spotlight/Featured: carousel or hero placement on homepage/category; curated or auto-filled.

Pricing model:
- Per-category price tables (JSON config) and duration presets.
- Volume bundles for power sellers.

Payment flow:
- User selects promotion → create order + items → redirect to provider → callback webhook → activate promotions on success.
- Providers: integrate generic PSP first; local providers can be added later via adapter.

Fraud controls:
- Rate-limit promotions per listing, refund rules for takedowns, audit logs.

---

## 7) Moderation & Trust/Safety

- Intake checks: keyword blacklists, brand/category rules, price outlier heuristics, duplicate media hash (pHash), abusive phone detection.
- Pre-moderation for sensitive categories (jobs, property, services), post-moderation elsewhere.
- User trust signals: phone verification, repeated takedowns, device fingerprint, captchas under risk.
- Abuse reports: queue to moderators with actions (reject, edit, block user, shadowban), and templated reasons.
- Compliance: takedown SLAs, audit trails, exportable moderation logs.

---

## 8) SEO & Growth

- Crawl control: robots.txt, XML sitemaps (index + per-category + per-date). Canonical tags on SRP with limited indexable facet combinations.
- Structured data: WebPage/Organization on homepage; BreadcrumbList on SRP; Product/Offer on listing detail with price, currency, availability, areaServed, image.
- Canonicalization: SRP canonical to base category + main query; `noindex,follow` for deep facet combos and paginated params.
- Internationalization: explicit hreflang pairs for `ru-UZ` and `uz-UZ` (mirrored in `/oz/` paths), consistent localized slugs.
- Mobile/app deep links: `rel="alternate" media="only screen and (max-width: 640px)"` to m-dot; `al:android:*` and `al:ios:*` app links.
- Social meta: Open Graph/Twitter tags; clean per-listing sharing images.
- Performance: responsive images via CDN with `srcset`/`sizes`; LCP < 2.5s; defer non-critical JS; critical CSS; CDN caching.

---

## 8.1) Field Research Notes (OLX.uz snapshot)

- Homepage injects JSON-LD WebPage with Organization (brand, address, sameAs links) and uses extensive preconnects to analytics/ad domains.
- Category pages provide canonical self-links, mobile alternates, and hreflang alternates for Russian/Uzbek.
- Listing detail includes Product/Offer JSON-LD with USD/UZS prices, availability, areaServed (district), and hero image URLs.
- Promoted inventory appears in HP/SRP links with query markers like `reason=hp|promoted`, and pinned card placement near the top.
- Images are served from `apollo.olxcdn.com` with multiple `imagesrcset` sizes and explicit `imagesizes` for responsive loading.

---

## 9) Architecture (suggested)

Stack (option A — TypeScript-first):
- Web app: Next.js (SSR/SSG), app router, i18n, PWA.
- API: NestJS (REST), Swagger, class-validator, RBAC.
- DB: PostgreSQL + Prisma ORM.
- Search: Elasticsearch/OpenSearch.
- Cache/Queues: Redis (BullMQ) for indexing, emails/SMS, moderation jobs.
- Storage: S3-compatible (e.g., Cloudflare R2, MinIO) + img proxy for transforms.
- CDN: Cloudflare/Fastly; WAF, bot mitigation.
- Admin: React + Next.js route grouping or a light AdminJS panel.

Service boundaries:
- api-gateway (auth, users, listings CRUD, promotions, orders)
- search-indexer (denormalize listings to search)
- media-service (upload, optimize, store)
- payments-service (PSP adapters, webhooks)
- moderation-service (rules engine, queues, dashboards)

Alternative stacks:
- Python/Django + DRF + Celery + Postgres + OpenSearch.
- PHP/Laravel + Horizon + MySQL + Meilisearch (faster to ship, less flexible facets).

Deployment:
- Containers with CI/CD; blue/green or rolling deploys; DB migrations; secrets via vault.

---

## 10) API Sketches

Auth & profile
- POST /v1/auth/otp/request { phone }
- POST /v1/auth/otp/verify { phone, code } → { token }
- GET  /v1/me → profile

Categories & attributes
- GET /v1/categories → tree
- GET /v1/categories/:id/attributes → schema for posting + filters

Listings
- POST /v1/listings { category_id, title, price, location_id, attributes[], photos[] }
- GET  /v1/listings/:id
- GET  /v1/listings/search { q, category_id, location_id, filters, sort, page }
- PATCH /v1/listings/:id { title?, price?, attributes?, photos? }
- POST /v1/listings/:id/refresh (bump)

Promotions & payments
- POST /v1/promotions/quote { listing_id, type, duration }
- POST /v1/orders { items[] }
- GET  /v1/orders/:id
- POST /v1/payments/:provider/callback (webhook)

Saved content
- POST /v1/favorites { listing_id }
- POST /v1/saved-searches { query }

Admin
- POST /v1/moderation/review { listing_id, action, reason }

---

## 11) Data & Indexing Flows

1. User creates/edits listing → DB write.
2. Outbox/queue emits “listing_changed”.
3. Indexer fetches denormalized view + maps attributes → search index.
4. Media pipeline generates thumbnails and updates listing_media.
5. Promotions job updates promo flags/decay in search index.

---

## 12) Analytics & Observability

- Events: impression, click, filter_change, favorite, saved_search_create, call_reveal, listing_create, promotion_purchase.
- Metrics: SRP CTR, conversion to contact, spam/takedown rate, payment success rate.
- Tracing/logging: structured logs, correlation IDs, SLOs (latency, error rate), dashboards and alerts.

---

## 13) Implementation Roadmap (MVP → V1)

Milestone 1 — MVP browse + post (2–3 weeks)
- Category tree, location tree, listing CRUD, media uploads, SSR pages.
- Basic search (title), filters: price, category, location.
- Phone OTP auth, profile basics.

Milestone 2 — Faceted search + saved content (2–3 weeks)
- Category attribute schema; nested facets with numeric ranges; geo-ready.
- Saved searches (alerts), Favorites.

Milestone 2.5 — SEO & i18n (1–2 weeks)
- Canonical, hreflang (`ru-UZ`/`uz-UZ`), mobile alternates, JSON-LD (WebPage/BreadcrumbList/Product-Offer).
- robots.txt + sitemap index + per-category/date sitemaps.

Milestone 3 — Promotions + payments (2 weeks)
- Bump/top/spotlight; pricing config; orders and payment provider (mock first); webhooks.
- Promotion slots (HP/SRP) with pinned placement and “promoted” labeling.

Milestone 4 — Moderation & quality (2–3 weeks)
- Rules engine, report flow, moderator console, duplicate detection, takedown SLAs.

Milestone 5 — Perf & polish (ongoing)
- Image pipeline (CDN, srcset/sizes), caching, accessibility, analytics dashboards.

---

## 14) Open Questions & Assumptions

- Chat: include lightweight in-app chat, or only phone reveal? (Assumed: phone-first; chat optional later.)
- Payments: which local PSPs to support at launch? (Assumed: start with a generic international PSP in sandbox.)
- Promotions inventory/placement rules per category — we will define defaults and tune later.
- Languages: exact locales and hreflang strategy for Uzbekistan.
- Legal: terms, privacy, content policies, and data retention requirements.

---

## 15) Next Steps

1) Confirm stack choice (TS: Next.js + NestJS + Postgres + OpenSearch vs. alternatives).
2) Approve MVP milestone scope/dates.
3) I will scaffold a monorepo with apps (`web`, `api`) and shared packages, plus basic CI.
4) Optionally allow a light site crawl to refine SEO and page structure specifics.
