# C2C Classifieds (OLX‑style) — End‑to‑End Implementation Plan

Status: Final v1.1 (updated after OLX.uz research). Further changes require a new version.
Scope: Server with Django/DRF + Celery; Client with React (Next.js for SSR/SEO);
Infra: PostgreSQL, Redis, OpenSearch, S3‑compatible storage, CDN, Docker.

This plan is intentionally complete and prescriptive so we can execute without re‑planning. It builds on docs/olx_clone_blueprint.md.

---

## Changelog v1.1 — Adjustments After Field Research

- SEO specifics: add canonical, hreflang (ru-UZ/uz-UZ), mobile alternate, and JSON‑LD (WebPage/Organization on home, BreadcrumbList on SRP, Product/Offer on detail).
- Deep links: include `al:android:*` and `al:ios:*` meta links on applicable pages.
- Search facets: support multi-value attribute filters and numeric ranges; repeated params and `attrs.<key>_min/_max`.
- Promotions: plan pinned “top/spotlight” slots and explicit “promoted” labeling on HP/SRP.
- Media: responsive images with `srcset`/`sizes` and CDN delivery; keep S3 presign flow.
- i18n: ru/uz locales with localized slugs and hreflang alternates.
- Sitemaps/robots: sitemap index + per-category/date sitemaps; robots.txt.
- Favorites: API + UI heart/save on cards.

---

## 0) High‑Level Architecture

- Backend: Django 5 + Django REST Framework (DRF), ASGI (Uvicorn/Gunicorn), Celery workers, Redis (broker+cache), PostgreSQL.
- Search: OpenSearch (or Elasticsearch compatible) for faceted search and ranking.
- Media: S3‑compatible storage (e.g., Cloudflare R2/MinIO) + image proxy (thumbor/imgproxy) via CDN.
- Frontend: React with Next.js 14 (App Router) for SSR/SSG, i18n, and SEO.
- Messaging/Outbox: DB outbox table + Celery tasks for index sync and notifications.
- Observability: OpenTelemetry traces, structured logs, Prometheus metrics, Sentry.
- Deployment: Docker, docker‑compose for dev; production via container orchestrator (e.g., ECS/Kubernetes) with CI/CD.

---

## 1) Repos, Monorepo Layout, Tooling

- Monorepo: top‑level `apps/` and `packages/` with shared config.
- Structure:
  - apps/server (Django project)
  - apps/web (Next.js app)
  - infra/ (docker, compose, nginx/caddy, opensearch bootstrap, migrations runner)
  - packages/shared (shared OpenAPI types, constants, schema JSON)
  - docs/ (architecture, runbooks, ADRs)
- Tooling:
  - Python 3.12, Poetry or pip-tools; Node 20 + pnpm.
  - pre-commit (black, isort, flake8, mypy), eslint+prettier, commitlint.
  - Makefile/taskfile for common commands.

---

## 2) Environments & Configuration

- Envs: local, staging, production.
- Core env vars (prefix examples):
  - DJANGO_SECRET_KEY, DJANGO_DEBUG, DJANGO_ALLOWED_HOSTS
  - DATABASE_URL (postgresql+psycopg), REDIS_URL, OPENSEARCH_URL
  - MEDIA_BUCKET, MEDIA_ENDPOINT, MEDIA_ACCESS_KEY, MEDIA_SECRET_KEY
  - CDN_BASE_URL, IMG_PROXY_URL
  - OTP_PROVIDER_KEY, EMAIL_SMTP_URL, SENTRY_DSN
  - PAYMENT_PROVIDER (enum), PAYMENT_PUBLIC_KEY, PAYMENT_SECRET_KEY, WEBHOOK_SECRET
  - BASE_URL (server), WEB_BASE_URL (client)
- Secrets management: .env for local; production via platform secrets store.

---

## 3) Backend — Django Apps and Responsibilities

Apps (one per domain module):
- accounts: users, phone/email OTP auth, roles/permissions, profiles.
- taxonomy: categories, attributes schema, locations.
- listings: listings core, listing attributes, states, pricing, phone masking.
- mediafiles: uploads, validation, EXIF, thumbnails metadata.
- promotions: bumps, top, spotlight; pricing tables; schedules.
- orders: orders and order items.
- payments: PSP adapters, webhooks, idempotency, refunds.
- moderation: reports, queues, actions, policy rules.
- favorites: favorites CRUD.
- savedsearches: saved searches, alerts scheduling.
- search: index mappings, sync workers, search API proxy.
- audit: audits and outbox events.
- adminpanel: Django Admin customizations and staff tools.

Cross‑cutting:
- settings module per env; logging; opentelemetry; health checks; pagination; throttling; versioned API.

---

## 4) Data Model (PostgreSQL)

Core tables (keys abbreviated):
- accounts_user(id, phone_e164, email, display_name, roles, status, created_at, last_login_at)
- accounts_profile(user_id PK/FK, avatar_url, about, rating, verified_flags)
- taxonomy_location(id, parent_id, kind, name, slug, lat, lon)
- taxonomy_category(id, parent_id, level, name, slug, is_leaf, order)
- taxonomy_attribute(id, category_id, key, label, type, unit, options_jsonb, is_indexed)
- listings_listing(id, user_id, category_id, location_id, title, description, price_amount, price_currency, condition, status, created_at, refreshed_at, expires_at, quality_score, contact_phone_masked, lat, lon)
- listings_attributevalue(listing_id, attribute_id, value_text, value_number, value_bool, value_option_key)
- mediafiles_asset(id, listing_id, type, url, width, height, order, checksum)
- promotions_promotion(id, listing_id, type, starts_at, ends_at, status)
- orders_order(id, user_id, total_amount, currency, status, created_at)
- orders_orderitem(id, order_id, listing_id, promotion_type, unit_price, qty, starts_at, ends_at)
- payments_payment(id, order_id, provider, provider_ref, amount, currency, status, payload_jsonb, created_at)
- moderation_report(id, listing_id, reporter_user_id, reason_code, notes, status, created_at)
- moderation_action(id, target_type, target_id, action, actor_user_id, reason_code, notes, created_at)
- savedsearches_savedsearch(id, user_id, query_jsonb, title, frequency, last_sent_at, is_active)
- favorites_favorite(user_id, listing_id, created_at)
- audit_event(id, topic, payload_jsonb, created_at, processed_at null)

Indexes:
- BTREE on (status, category_id, location_id, refreshed_at DESC)
- GIST on geography point (lat, lon)
- JSONB GIN for common attribute lookups per category
- Partial indexes for hot attributes (e.g., vehicles: year, mileage)

---

## 5) Search — OpenSearch Mapping & Ranking

Index per environment: listings_v{version}
- Fields: id, title (text), description (text), category_path (keyword[]), location_path (keyword[]), price (double), currency (keyword), condition (keyword), attrs (nested), geo (geo_point), refreshed_at (date), quality_score (double), promo_flags {bump, top, spotlight}, promo_expiry dates.
- Analyzers: language analyzers (ru, uz), synonyms for common terms.
- Queries: match + filters (category, location, ranges), nested filters for attrs, sort by relevance/newest/price/distance.
- Ranking: BM25 * freshness_decay(refreshed_at) * quality_score + promo boosts; dedicated “top/spotlight” slots pinned for their duration.
- Reindex strategy: alias switch on versioned indices.

---

## 6) API — Endpoints (DRF)

Auth & users
- POST /api/v1/auth/otp/request { phone }
- POST /api/v1/auth/otp/verify { phone, code } → { token }
- GET  /api/v1/me → profile

Taxonomy
- GET /api/v1/categories → tree
- GET /api/v1/categories/:id/attributes → attribute schema
- GET /api/v1/locations → hierarchy query

Listings
- POST /api/v1/listings
- GET  /api/v1/listings/:id
- PATCH /api/v1/listings/:id
- POST /api/v1/listings/:id/refresh (bump)
- GET  /api/v1/listings/search { q, category_id, location_id, filters, sort, page }

Media
- POST /api/v1/uploads/presign → { url, fields } (S3 direct upload)
- POST /api/v1/listings/:id/media → attach uploaded object

SEO & robots/sitemaps
- GET /robots.txt
- GET /sitemap.xml (index) and child sitemaps

Promotions, orders, payments
- POST /api/v1/promotions/quote { listing_id, type, duration }
- POST /api/v1/orders { items[] }
- GET  /api/v1/orders/:id
- POST /api/v1/payments/:provider/callback (webhook)

Saved stuff
- POST/DELETE /api/v1/favorites
- POST/GET/DELETE /api/v1/saved-searches

Moderation/Admin
- POST /api/v1/moderation/review { listing_id, action, reason }
- GET  /api/v1/moderation/queue

Standards
- Auth: JWT (short‑lived) + refresh tokens; rate limiting via DRF throttles.
- Validation: DRF serializers; OpenAPI via drf-spectacular; idempotency keys for webhooks and orders.

---

## 7) Frontend — React (Next.js) Pages & UX

Routes (App Router):
- / (home): category tiles, spotlight/top promos, recent listings
- /c/[categorySlug] (category root): featured filters, paginated SRP
- /c/[categorySlug]/[...facets] (SRP with facets): URL encodes filters
- /l/[listingId]-[slug] (listing detail): photos, attributes, phone reveal CTA
- /post (posting wizard step 1): pick category
- /post/details (step 2): title, price, description, photos, attributes
- /post/review (step 3): preview and submit
- /u/listings (seller dashboard): manage listings, stats
- /u/promote/[listingId] (promo purchase flow)
- /saved (favorites & saved searches)
- /auth/otp (otp verify); /payments/callback (success/failure)

Client architecture:
- State: React Query for server cache; Zod schemas for forms; Zustand (light) for ephemeral wizard state.
- Forms: react-hook-form + zod resolver; image uploader with direct‑to‑S3.
- i18n: next-intl with ru/uz locales; localized slugs; emit hreflang tags (ru-UZ/uz-UZ) and mobile alternates.
- SEO: canonical per page; JSON‑LD (WebPage/Organization, BreadcrumbList, Product/Offer); Open Graph; app deep links (`al:android`, `al:ios`); fast LCP with responsive images.
- Analytics: event hooks for impressions, clicks, filter changes, phone reveal.

---

## 8) Media Pipeline

- Client gets S3 presigned POST and uploads directly.
- Backend validates on attach (MIME, size, EXIF strip)
- Celery job generates thumbnails via imgproxy or on‑the‑fly via CDN, stores metadata.
- Store checksums to detect dupes; limit 12 images per listing.

---

## 9) Promotions & Payments

- Promotions: bump (refresh timestamp), top (pinned slots), spotlight (featured carousel). Category‑level inventory and pricing tables.
- Purchase flow: quote → create order+items → redirect to PSP → webhook → activate promotion.
- Idempotency: order and webhook handlers use idempotency keys; audit trail persisted.

---

## 10) Moderation & Trust/Safety

- Intake: profanity/blacklist rules, price outlier checks, duplicate media hash, risky phone detection.
- Queues: pre‑mod for sensitive categories; post‑mod elsewhere.
- Admin: Django Admin with custom actions (approve/reject/edit/ban), filters, saved views.
- Abuse reports: user‑submitted, triaged by moderators.

---

## 11) SEO & Growth

- robots.txt with allow rules; sitemaps: index + per category/date; image sitemaps optional.
- SRP canonicalization: base category + main query; deep facet combos noindex,follow; pagination rel=next/prev when applicable.
- Structured data: WebPage/Organization (home), BreadcrumbList (SRP), Product/Offer (detail: price, currency, availability, areaServed, image).
- Internationalization: ru/uz locales, hreflang pairs (ru-UZ/uz-UZ), localized slugs.
- Mobile/app deep links: mobile alternates to m-dot; `al:android`/`al:ios` meta.
- Perf budgets: LCP < 2.5s on 4G; responsive images with `srcset`/`sizes` via CDN; defer noncritical JS; HTTP caching.

---

## 12) Security, Privacy, Compliance

- Auth: phone OTP rate limits, device fingerprint optional, CAPTCHA under risk.
- PII: store phone numbers E.164; mask on listing; logs scrubbed.
- Webhooks: signed with shared secret; replay protection via nonces + expiry.
- Data retention: soft delete listings; audit immutable logs.
- OWASP: CSRF (cookies + SameSite), CORS, content security policy, input validation, file scanning.

---

## 13) Observability & SLOs

- Logs: JSON logs with correlation IDs; request/response size and time.
- Metrics: p95 latency per endpoint, error rates, Celery queue lag, search QPS, image errors.
- Traces: OTel SDK in Django and Next.js API routes.
- SLOs: API p95 < 300ms (cached), Search p95 < 500ms, Error rate < 1%.

---

## 14) CI/CD & Environments

- CI: lint, type check, unit tests, build images, run smoke tests.
- CD: staging auto‑deploy on main; prod requires approval.
- Migrations: alembic‑style via Django migrations; run on deploy.
- Secrets: provision via platform vault; rotate keys quarterly.

---

## 15) Testing Strategy

- Unit: serializers, services, permission checks, ranking math.
- Integration: API endpoints with test DB and Redis; Celery in eager mode; payments webhook flows.
- Contract: OpenAPI schema → client types; e2e smoke via Playwright on staging.
- Load: k6/Gatling for SRP and search endpoints; target 100 RPS baseline.

---

## 16) Execution Milestones (with DoD)

Milestone 1: Project Scaffold (Week 1)
- Deliverables: monorepo, Django project, Next.js app, docker‑compose (pg, redis, opensearch, s3 mock), pre‑commit, CI skeleton.
- DoD: `docker compose up` brings all services; health checks pass.

Milestone 2: Taxonomy & Locations (Week 1–2)
- Deliverables: categories/attributes/locations models + admin; seed fixtures; GET endpoints; Next.js pages load trees.
- DoD: Admin can manage taxonomy; client renders selectable trees.

Milestone 3: Auth & Profiles (Week 2)
- Deliverables: OTP endpoints, JWT, profiles; client OTP screens.
- DoD: User logs in/out, profile visible; throttling enabled.

Milestone 4: Listings CRUD + Media (Week 3)
- Deliverables: create/edit/list listings; presigned uploads; attach media; detail page.
- DoD: Listing visible with images; validations and limits enforced.

Milestone 5: Search & Facets (Week 4–5)
- Deliverables: OpenSearch mapping, indexer, SRP with multi-value attribute filters and numeric ranges, sorting, pagination; saved searches; favorites.
- DoD: SRP returns relevant results; saved search persists and replays; favorites saved/removed.

Milestone 6: Promotions & Payments (Week 6)
- Deliverables: quote → order → PSP → webhook; bump/top/spotlight activation; UI purchase flow.
- DoD: Test payment promotes listing; pinned/top slots visible; idempotent webhooks.

Milestone 7: Moderation & Reports (Week 7)
- Deliverables: report flow; moderation queues; admin actions; rules engine.
- DoD: Moderator can approve/reject; audit trails captured.

Milestone 8: SEO, i18n, Performance (Week 8)
- Deliverables: canonical, hreflang, mobile alternates; JSON‑LD on pages; robots.txt + sitemap index; ru/uz locales; image/CDN tuning; app deep links.
- DoD: Basic SEO checks pass (canonical/hreflang/JSON‑LD valid); LCP under budget on staging.

Milestone 9: Analytics & Dashboards (Week 9)
- Deliverables: event tracking, funnels, seller stats; minimal admin reports.
- DoD: Key events visible; daily digest for saved searches sent.

Milestone 10: Hardening & Launch (Week 10)
- Deliverables: security review, rate limits, backup/restore runbook, alerting; staging load test; production deploy.
- DoD: SLOs met in staging; runbooks approved; post‑launch monitoring green.

---

## 17) Detailed Task Breakdown per Milestone

M1 Tasks
- Monorepo init; Poetry/pip-tools; pnpm; linting; pre-commit.
- Django settings split; DRF config; OpenAPI via drf-spectacular.
- Next.js App Router init; ESLint/Prettier; Tailwind or CSS system.
- Docker compose: postgres, redis, opensearch, opensearch-dashboards, minio, mailhog.
- Health endpoints: /healthz, /readiness.

M2 Tasks
- Models/migrations for taxonomy and attributes; fixtures import; admin custom list filters.
- Endpoints: GET categories tree; GET attributes by category; GET locations tree.
- Client: tree selectors with virtualization.

M3 Tasks
- OTP provider mock (code 000000 local); rate limit (per phone/day, per IP).
- JWT issue/refresh; permissions scaffolding; profile endpoints.
- Client: OTP request/verify; session handling via httpOnly cookies.

M4 Tasks
- Listing models + attribute values (polymorphic fields); validation service per category.
- Media: presign upload endpoint; attach flow; EXIF strip; checksum.
- Client: posting wizard; uploader with previews; detail page.

M5 Tasks
- OpenSearch: mapping, analyzers (ru/uz), synonyms; indexer from outbox; reindex command.
- Search API: composing queries, facets, sorts, pagination; saved searches.
- Client: SRP with filters UI, URL sync, sorting, empty states.

M6 Tasks
- Promotions pricing config; quote engine; limit rules.
- Orders & payments: create order, PSP integration (sandbox), webhooks, idempotency.
- Client: promotion purchase UI, order summary, success/failure views.

M7 Tasks
- Reports API; moderation queues; admin actions; rules configuration.
- Client: report form; moderator internal views (admin link).

M8 Tasks
- Sitemaps generation; canonical/noindex strategy; structured data on pages.
- i18n resources; locale switcher; hreflang tags.
- Perf pass: image sizes, cache headers, code splitting, prefetching.

M9 Tasks
- Event pipeline; seller dashboard stats; saved search digests via Celery.
- Minimal BI exports; retention cohort basics.

M10 Tasks
- Security hardening checklist; load test; backups; DR drill; alerts and runbooks.
- Production rollout plan; post‑launch metrics watch.

---

## 18) Acceptance Criteria (Global)

- Consistent 200/4xx/5xx semantics; error bodies with codes and fields.
- All endpoints documented in OpenAPI; client types generated.
- Zero P0 lint/type errors; unit test coverage >= 60% on core modules.
- Idempotent payments and webhook handling proven by tests.
- Search latency p95 <= 500ms on SRP for 100k listings data set.
- Media uploads safe and verifiably stored with checksums; max 12 images per listing.
- Promotions visibly change SRP/placement and expire correctly.

---

## 19) Risk Register & Mitigations

- Search complexity: mitigate with incremental mapping, small data seeding, dashboards to watch slow queries.
- PSP integration variance: use adapter interface + sandbox first; robust logging and retries.
- Spam/abuse: introduce basic rules at MVP; add advanced ML later.
- SEO with client app: use Next.js SSR; monitor with crawls and Search Console.
- Scope creep: milestone gates; change control requires v1.x plan revision.

---

## 20) Runbooks (Condensed)

- Reindex: create new version, backfill via Celery, alias switch, old index delete.
- Rotating secrets: update env, restart workers, validate webhooks.
- Restoring backups: point‑in‑time restore on Postgres, rehydrate search via reindex.
- Incident: page on error rate/saturation; rollback via previous container image; feature flags for promos/search boosts.

---

## 21) Folder Structures (Initial)

apps/server/
- manage.py, config/settings/{base,local,staging,prod}.py
- requirements/ or pyproject.toml
- apps/{accounts,taxonomy,listings,mediafiles,promotions,orders,payments,moderation,favorites,savedsearches,search,audit,adminpanel}
- tests/, scripts/, fixtures/

apps/web/
- app/(routes as listed), components/, lib/, hooks/, styles/
- next.config.js, i18n config, api client (generated from OpenAPI)

infra/
- docker/, compose.yaml, opensearch/, minio/, nginx/, k6/

---

## 22) Immediate Next Steps

- Initialize monorepo with the above layout.
- Stand up docker compose with Postgres, Redis, OpenSearch, MinIO.
- Scaffold Django apps and Next.js routes.
- Implement Milestone 1 fully, then proceed milestone by milestone.

This is the fixed plan we will follow end‑to‑end. Any deviation creates a new versioned plan.
