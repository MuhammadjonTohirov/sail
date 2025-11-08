"use client";
import { ChatApi } from '@/lib/api';
import { useEffect, useMemo, useState } from 'react';
import { useI18n } from '@/lib/i18n';
import { useRouter } from 'next/navigation';
import { FavoriteButton } from '@/components/FavoriteButton';
import { RecentlyViewedTracker } from '@/components/RecentlyViewedTracker';
import { ReportModal } from '@/components/listing/ReportModal';
import ChatOverlay from '@/components/chat/ChatOverlay';
import type { ChatThread } from '@/domain/chat';
import { ListingsRepositoryImpl } from '@/data/repositories/ListingsRepositoryImpl';
import { GetListingDetailUseCase } from '@/domain/usecases/listings/GetListingDetailUseCase';
import { GetUserListingsUseCase } from '@/domain/usecases/listings/GetUserListingsUseCase';
import type { Listing } from '@/domain/models/Listing';
import Avatar from '@/components/ui/Avatar';
import '@/utils/string.extensions'

export default function ListingDetail({ params }: { params: { id: string } }) {
  const { t, locale } = useI18n();
  const router = useRouter();
  const base = locale === 'uz' ? '/uz' : '';
  const id = Number(params.id);
  const repository = useMemo(() => new ListingsRepositoryImpl(), []);
  const detailUseCase = useMemo(() => new GetListingDetailUseCase(repository), [repository]);
  const userListingsUseCase = useMemo(() => new GetUserListingsUseCase(repository), [repository]);
  const [listing, setListing] = useState<Listing | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string>('');
  const [idx, setIdx] = useState(0);
  const [showPhone, setShowPhone] = useState(false);
  const [reportMsg, setReportMsg] = useState('');
  const [reportModalOpen, setReportModalOpen] = useState(false);
  // drag-to-swipe state must be defined before any early returns
  const [drag, setDrag] = useState<{startX:number, moved:boolean}|null>(null);
  const [sellerListings, setSellerListings] = useState<Listing[]>([]);
  const [loadingSellerListings, setLoadingSellerListings] = useState(false);
  const [chatOpen, setChatOpen] = useState(false);
  const [chatLoading, setChatLoading] = useState(false);
  const [chatThread, setChatThread] = useState<ChatThread | null>(null);
  const [chatError, setChatError] = useState<string | null>(null);
  const [viewerId, setViewerId] = useState<number | null>(null);

  useEffect(() => {
    if (!Number.isFinite(id) || id <= 0) {
      setListing(null);
      setError(t('listing.notFound'));
      setLoading(false);
      return;
    }
    let cancelled = false;
    (async () => {
      setLoading(true);
      setError('');
      try {
        const result = await detailUseCase.execute(id);
        console.log('Fetched listing detail', result.seller);
        if (!cancelled) {
          setListing(result);
        }
      } catch (e: any) {
        if (!cancelled) {
          setListing(null);
          setError(e?.message || t('listing.notFound'));
        }
      } finally {
        if (!cancelled) {
          setLoading(false);
        }
      }
    })();
    return () => {
      cancelled = true;
    };
  }, [detailUseCase, id, t]);

  useEffect(() => {
    setChatOpen(false);
    setChatThread(null);
    setChatError(null);
  }, [id]);

  useEffect(() => {
    if (typeof window === 'undefined') return;
    const readProfile = () => {
      try {
        const raw = localStorage.getItem('profile');
        if (!raw) {
          setViewerId(null);
          return;
        }
        const parsed = JSON.parse(raw);
        const uid = parsed?.user_id ?? parsed?.id ?? null;
        setViewerId(typeof uid === 'number' ? uid : null);
      } catch {
        setViewerId(null);
      }
    };
    readProfile();
    window.addEventListener('auth-changed', readProfile);
    return () => window.removeEventListener('auth-changed', readProfile);
  }, []);

  // Fetch seller's other listings
  useEffect(() => {
    const sellerId = listing?.seller?.id ?? listing?.userId;
    if (!sellerId) return;
    let cancelled = false;
    (async () => {
      setLoadingSellerListings(true);
      try {
        const results = await userListingsUseCase.execute({ userId: sellerId, sort: 'newest' });
        if (cancelled) return;
        const filtered = results.filter((l) => l.id !== id).slice(0, 6);
        setSellerListings(filtered);
      } catch (e) {
        if (!cancelled) {
          console.error('Failed to load seller listings', e);
        }
      } finally {
        if (!cancelled) {
          setLoadingSellerListings(false);
        }
      }
    })();
    return () => {
      cancelled = true;
    };
  }, [id, listing?.seller?.id, listing?.userId, userListingsUseCase]);

  const chips = useMemo(() => {
    if (!listing) return [];
    const arr: { label: string }[] = [];
    arr.push({
      label: listing.sellerType === 'business'
        ? t('listing.sellerTypeBusiness')
        : t('listing.sellerTypePrivate'),
    });
    arr.push({
      label: t('listing.conditionLabel') + (listing.condition === 'new' ? t('listing.conditionNew') : t('listing.conditionUsed')),
    });
    (listing.attributes || []).forEach((attr) => {
      const raw = attr?.value;
      const value = Array.isArray(raw) ? raw.join(', ') : (raw !== undefined && raw !== null ? String(raw) : '');
      if (value) {
        arr.push({ label: `${attr.label ?? attr.key}: ${value}` });
      }
    });
    return arr;
  }, [listing, t]);

  useEffect(() => {
    if (!reportMsg) return;
    const timer = setTimeout(() => setReportMsg(''), 4000);
    return () => clearTimeout(timer);
  }, [reportMsg]);

  // Loading state
  if (loading) {
    return (
      <div className="detail-grid">
        <div className="space-y-3">
          <div className="card" style={{ height: 520 }}>
            <div className="flex items-center justify-center h-full">
              <div className="text-center">
                <svg className="animate-spin h-12 w-12 mx-auto mb-4 text-[#23E5DB]" fill="none" viewBox="0 0 24 24">
                  <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"></circle>
                  <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                </svg>
                <p className="text-gray-600">{t('listing.loading')}</p>
              </div>
            </div>
          </div>
        </div>
        <aside>
          <div className="card" style={{ height: 200 }}></div>
        </aside>
      </div>
    );
  }

  // Error state
  if (error || !listing) {
    return (
      <div className="container py-12">
        <div className="max-w-md mx-auto text-center">
          <div className="bg-red-50 border border-red-200 rounded-lg p-6 mb-4">
            <svg className="w-12 h-12 text-red-500 mx-auto mb-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" />
            </svg>
            <h2 className="text-xl font-bold text-gray-900 mb-2">
              {t('listing.notFound')}
            </h2>
            <p className="text-gray-600 mb-4">{error || t('listing.notFoundDescription')}</p>
          </div>
          <button
            onClick={() => router.push('/search')}
            className="btn-accent"
          >
            {t('listing.backToSearch')}
          </button>
        </div>
      </div>
    );
  }
  const rawMedia = Array.isArray(listing.media) && listing.media.length > 0 ? listing.media : undefined;
  const mediaUrls = listing.mediaUrls && listing.mediaUrls.length > 0 ? listing.mediaUrls : [];
  const mediaItems = rawMedia
    ? rawMedia
        .map((item, index) => ({
          id: item.id ?? index,
          url: item.imageUrl || item.image || '',
        }))
        .filter((item) => item.url)
    : mediaUrls.map((url, index) => ({ id: index, url }));
  const galleryLength = mediaItems.length;
  const current = mediaItems[idx]?.url ?? '';
  const primaryImage = mediaItems[0]?.url ?? '';

  const isOwnListing = viewerId != null && viewerId === (listing.seller?.id ?? listing.userId ?? listing.user?.id);

  const chatListingSummary = {
    id,
    title: listing.title,
    priceAmount: listing.priceAmount,
    priceCurrency: listing.priceCurrency,
    thumbnailUrl: primaryImage,
    sellerName: listing.seller?.name || listing.user?.displayName || listing.user?.phoneE164,
  };
  const createdAtDate = listing.createdAt ? new Date(listing.createdAt) : null;
  const sellerId = listing.seller?.id ?? listing.userId ?? listing.user?.id;
  const sellerDisplayName = listing.seller?.name || listing.user?.displayName || listing.user?.name || listing.user?.phoneE164 || 'U';
  const sellerSinceDate = listing.seller?.since ? new Date(listing.seller.since) : null;
  const sellerLastActiveDate = listing.seller?.lastActiveAt ? new Date(listing.seller.lastActiveAt) : null; 
  const handleChatClick = async () => {
    if (typeof window === 'undefined') return;
    if (isOwnListing) return;
    const token = localStorage.getItem('access_token');
    if (!token) {
      router.push(locale === 'uz' ? '/uz/auth/otp' : '/auth/otp');
      return;
    }
    if (chatThread && chatThread.listing.listingId === id) {
      setChatError(null);
      setChatOpen(true);
      return;
    }

    setChatOpen(true);
    setChatLoading(true);
    setChatError(null);
    try {
      const threads = await ChatApi.listThreads();
      const existing = threads.find((t) => t.listing.listingId === id) || null;
      setChatThread(existing);
    } catch (err) {
      setChatError(err instanceof Error ? err.message : t('listing.chatLoadError'));
    } finally {
      setChatLoading(false);
    }
  };

  const handleCloseChat = () => {
    setChatOpen(false);
    setChatError(null);
  };

  const handleThreadChange = (thread: ChatThread) => {
    setChatThread(thread);
    setChatError(null);
    setChatLoading(false);
  };

  const prev = () => setIdx((i) => (i - 1 + galleryLength) % Math.max(galleryLength, 1));
  const next = () => setIdx((i) => (i + 1) % Math.max(galleryLength, 1));

  // drag-to-swipe for main image

  return (
    <div className="container py-6">
      {/* Track view automatically */}
      <RecentlyViewedTracker listingId={id} />

      <div className="detail-grid">
        <div>
          <div className="gallery card">
            {listing.isPromoted && (
              <div className="promoted-banner">
                <svg className="w-4 h-4" fill="currentColor" viewBox="0 0 20 20">
                  <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                </svg>
                <span>{t('listing.promoted')}</span>
              </div>
            )}

            <div
              className="gallery-main"
              tabIndex={0}
              onKeyDown={(e) => { if (e.key === 'ArrowLeft') prev(); if (e.key === 'ArrowRight') next(); }}
            >
              {current ? (
                <img src={current} alt={listing.title} />
              ) : (
                <div className="no-image-placeholder">
                  <svg className="w-20 h-20 text-gray-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
                  </svg>
                  <span className="text-gray-400 mt-2">{t('listing.noImage')}</span>
                </div>
              )}
              {galleryLength > 1 && (
                <>
                  <div className="gallery-nav">
                    <button onClick={prev} aria-label="Previous">‹</button>
                    <button onClick={next} aria-label="Next">›</button>
                  </div>
                  <div className="gallery-counter">
                    {idx + 1} / {galleryLength}
                  </div>
                </>
              )}
            </div>
          {galleryLength > 0 && (
            <div className="gallery-thumbs">
              {mediaItems.map((item, i) => (
                <img key={item.id} src={item.url} className={i === idx ? 'is-active' : ''} onClick={() => setIdx(i)} alt="" />
              ))}
            </div>
          )}
        </div>

        {/* Title and Breadcrumbs */}
        <div className="card" style={{ marginTop: 12 }}>
          <div className="breadcrumbs mb-4">
            <a href={locale === 'uz' ? '/uz' : '/'} className="breadcrumb-link">
              {t('listing.home')}
            </a>
            <span className="breadcrumb-sep">›</span>
            <a href={`${locale === 'uz' ? '/uz' : ''}/search`} className="breadcrumb-link">
              {listing.categoryName || t('listing.allCategories')}
            </a>
            <span className="breadcrumb-sep">›</span>
            <span className="breadcrumb-current">{listing.title}</span>
          </div>

          <h1 className="detail-title">{listing.title}</h1>

          {chips.length > 0 && (
            <div className="detail-attributes">
              <h3 className="attributes-title">{t('listing.characteristics')}</h3>
              <div className="attributes-grid">
                {chips.map((c, i) => (
                  <div key={i} className="attribute-row">
                    {c.label}
                  </div>
                ))}
              </div>
            </div>
          )}

          <div className="detail-section">
            <h3 className="section-title">{t('listing.description')}</h3>
            <p className="description-text">
              {listing.description || <span className="text-gray-400">{t('listing.noDescription')}</span>}
            </p>
          </div>

          <div className="border-t mt-6 pt-4">
            <div className="flex items-center justify-between gap-3">
              <span className="text-xs text-gray-400">ID: {listing.id}</span>
              <div className="flex items-center gap-3">
                {reportMsg && <span className="text-xs text-green-600">{reportMsg}</span>}
                <button
                  className="text-sm hover:text-red-500 transition-colors flex items-center gap-2"
                  onClick={() => setReportModalOpen(true)}
                  disabled={reportModalOpen}
                >
                  <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 21v-4m0 0V5a2 2 0 012-2h6.5l1 1H21l-3 6 3 6h-8.5l-1-1H5a2 2 0 00-2 2zm9-13.5V9" />
                  </svg>
                  {t('listing.report')}
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>

      <aside className="space-y-3">
        {/* Price & Contact Card */}
        <div className="sidebar-card">
          <div className="flex items-center justify-between mb-3">
            <div className="flex items-center gap-2 text-xs text-gray-500">
              <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
              {createdAtDate ? createdAtDate.toLocaleDateString(locale === 'uz' ? 'uz-UZ' : 'ru-RU', {
                year: 'numeric',
                month: 'long',
                day: 'numeric'
              }) : ''}
            </div>
            <FavoriteButton listingId={id} size="md" variant="icon" />
          </div>

          {listing.priceAmount > 0 ? (
            <div className="price-block mb-4">
              <div className="text-4xl font-bold text-[#002F34] mb-1">
                {Number(listing.priceAmount).toLocaleString()} <span className="text-2xl">{listing.priceCurrency}</span>
              </div>
              {listing.isPriceNegotiable && (
                <div className="flex items-center gap-1 text-sm text-[#23E5DB]">
                  <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M7 8h10M7 12h4m1 8l-4-4H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-3l-4 4z" />
                  </svg>
                  {t('listing.priceNegotiable')}
                </div>
              )}
            </div>
          ) : (
            <div className="price-block mb-4">
              <div className="text-3xl font-bold text-green-600">
                {t('listing.free')}
              </div>
            </div>
          )}

          <div className="btn-row space-y-3">
            <button
              onClick={handleChatClick}
              disabled={isOwnListing || chatLoading}
              className={`w-full bg-[#23E5DB] hover:bg-[#1dd4cb] text-white font-semibold py-3 px-4 rounded-lg transition-colors flex items-center justify-center gap-2 ${isOwnListing || chatLoading ? 'opacity-70 cursor-not-allowed' : ''}`}
            >
              {chatLoading ? (
                <svg className="animate-spin w-5 h-5" fill="none" viewBox="0 0 24 24">
                  <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"></circle>
                  <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                </svg>
              ) : (
                <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
                </svg>
              )}
              {t('listing.sendMessage')}
            </button>
            {isOwnListing && (
              <p className="text-xs text-gray-500 text-center">
                {t('listing.ownListing')}
              </p>
            )}

            <button
              className="w-full bg-white border-2 border-gray-300 hover:border-[#23E5DB] text-gray-900 font-semibold py-3 px-4 rounded-lg transition-colors flex items-center justify-center gap-2"
              onClick={() => setShowPhone(true)}
            >
              <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
              </svg>
              {showPhone ? (
                listing.contactPhoneMasked || listing.user?.phoneE164 || listing.user?.phone || '—'
              ) : (
                t('listing.showPhone')
              )}
            </button>
          </div>
        </div>

        {/* Seller Card */}
        <div className="sidebar-card seller-card">
          <div className="seller-label">
            <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
            </svg>
            {t('listing.seller')}
          </div>
          <div className="seller-info">
            <Avatar
              className="seller-avatar"
              imageUrl={listing.seller?.avatarUrl?.getIfEmpty(listing.seller?.logo)}
              placeholder={sellerDisplayName}
              alt={sellerDisplayName}
            />
            <div className="seller-details">
              <div className="seller-name">
                {sellerDisplayName || t('listing.user')}
              </div>
              <div className="seller-meta">
                {t('listing.onSiteAt')}{' '}
                {(sellerLastActiveDate ?? sellerSinceDate)?.toLocaleDateString(locale === 'uz' ? 'uz-UZ' : 'ru-RU', { 
                    day: 'numeric', 
                    year: 'numeric', 
                    month: 'short' 
                  }) || '—'}
              </div>
            </div>
          </div>
          <button
            onClick={() => sellerId && router.push(`${base}/u/${sellerId}`)}
            className="w-full btn-outline btn-lg text-sm"
            disabled={!sellerId}
          >
            {t('listing.sellerAllListings')}
          </button>
        </div>

        {/* Location Card */}
        <div className="sidebar-card location-card">
          <div className="seller-label">
            <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
            </svg>
            {t('listing.location')}
          </div>
          <div className="location-name">
            {listing.locationName || t('listing.notSpecified')}
          </div>
        </div>
      </aside>
      </div>

      {/* Seller's Other Listings */}
      {sellerListings.length > 0 && (
        <div className="related-listings-section">
          <div className="section-header">
            <h2 className="section-heading">
              {t('listing.sellerOtherListings')}
            </h2>
            <a
              href={sellerId?.toString && `${base}/u/${sellerId}`}
              className="view-all-link"
              onClick={(e) => {
                if (!sellerId) e.preventDefault();
              }}
            >
              {t('listing.viewAll')} →
            </a>
          </div>

          {loadingSellerListings ? (
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
              {[...Array(3)].map((_, i) => (
                <div key={i} className="bg-white rounded-lg border border-gray-200 p-4 animate-pulse">
                  <div className="w-full h-48 bg-gray-200 rounded mb-3"></div>
                  <div className="h-4 bg-gray-200 rounded w-3/4 mb-2"></div>
                  <div className="h-4 bg-gray-200 rounded w-1/2"></div>
                </div>
              ))}
            </div>
          ) : (
            <div className="related-listings-grid">
              {sellerListings.map((otherListing) => {
                const thumb =
                  otherListing.media?.[0]?.imageUrl ||
                  otherListing.media?.[0]?.image ||
                  otherListing.mediaUrls?.[0] ||
                  '';
                return (
                  <a
                    key={otherListing.id}
                    href={`${locale === 'uz' ? '/uz' : ''}/l/${otherListing.id}`}
                    className="related-listing-card"
                  >
                    <div className="related-listing-image">
                      {thumb ? (
                        <img src={thumb} alt={otherListing.title} />
                      ) : (
                        <div className="no-image">
                          <svg className="w-12 h-12 text-gray-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
                          </svg>
                        </div>
                      )}
                    </div>
                    <div className="related-listing-content">
                      <h3 className="related-listing-title">{otherListing.title}</h3>
                      <div className="related-listing-price">
                        {otherListing.priceAmount > 0 ? (
                          `${Number(otherListing.priceAmount).toLocaleString()} ${otherListing.priceCurrency}`
                        ) : (
                          t('listing.free')
                        )}
                      </div>
                      {otherListing.locationName && (
                        <div className="related-listing-location">
                          <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                          </svg>
                          {otherListing.locationName}
                        </div>
                      )}
                    </div>
                  </a>
                );
              })}
            </div>
          )}
        </div>
      )}
      <ReportModal
        listingId={id}
        open={reportModalOpen}
        locale={locale}
        onClose={() => setReportModalOpen(false)}
        onSubmitted={(message) => setReportMsg(message)}
      />

      {chatOpen && (
        <ChatOverlay
          listing={chatListingSummary}
          thread={chatThread}
          viewerId={viewerId}
          loading={chatLoading}
          error={chatError}
          onRetry={handleChatClick}
          onClose={handleCloseChat}
          onThreadChange={handleThreadChange}
        />
      )}
    </div>
  );
}
