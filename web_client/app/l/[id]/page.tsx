"use client";
import { Listings, apiFetch } from '@/lib/api';
import { useEffect, useMemo, useState } from 'react';
import { useI18n } from '@/lib/i18n';
import { useRouter } from 'next/navigation';

export default function ListingDetail({ params }: { params: { id: string } }) {
  const { locale } = useI18n();
  const router = useRouter();
  const id = Number(params.id);
  const [data, setData] = useState<any>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string>('');
  const [idx, setIdx] = useState(0);
  const [isThumbsScrolling, setThumbsScrolling] = useState(false);
  const [showPhone, setShowPhone] = useState(false);
  const [reportReason, setReportReason] = useState('');
  const [reportMsg, setReportMsg] = useState('');
  const [reporting, setReporting] = useState(false);
  // drag-to-swipe state must be defined before any early returns
  const [drag, setDrag] = useState<{startX:number, moved:boolean}|null>(null);
  const [sellerListings, setSellerListings] = useState<any[]>([]);
  const [loadingSellerListings, setLoadingSellerListings] = useState(false);

  useEffect(() => {
    (async () => {
      setLoading(true);
      setError('');
      try {
        setData(await Listings.detail(id));
      } catch (e: any) {
        setError(e.message || (locale === 'uz' ? 'E\'lon topilmadi' : 'Объявление не найдено'));
      } finally {
        setLoading(false);
      }
    })();
  }, [id, locale]);

  // Fetch seller's other listings
  useEffect(() => {
    if (!data?.user_id) return;
    (async () => {
      setLoadingSellerListings(true);
      try {
        const response = await apiFetch(`/api/v1/listings?user_id=${data.user_id}&status=active&per_page=6`);
        const filtered = (response.results || []).filter((l: any) => l.id !== id);
        setSellerListings(filtered);
      } catch (e) {
        console.error('Failed to load seller listings', e);
      } finally {
        setLoadingSellerListings(false);
      }
    })();
  }, [data?.user_id, id]);

  const chips = useMemo(() => {
    const arr: { label: string }[] = [];
    if (!data) return arr;
    arr.push({ label: data.seller_type === 'business' ? (locale==='uz'?'Biznes':'Бизнес') : (locale==='uz'?'Jismoniy shaxs':'Частное лицо') });
    arr.push({ label: (locale==='uz'?'Holati: ':'Состояние: ') + (data.condition === 'new' ? (locale==='uz'?'Yangi':'Новый') : (locale==='uz'?'B/u':'Б/у')) });
    (data.attributes || []).forEach((a: any) => {
      const v = Array.isArray(a.value) ? a.value.join(', ') : String(a.value ?? '');
      if (v) arr.push({ label: `${a.label}: ${v}` });
    });
    return arr;
  }, [data, locale]);

  const label = (ru: string, uz: string) => locale === 'uz' ? uz : ru;

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
                <p className="text-gray-600">{label('Загрузка...', 'Yuklanmoqda...')}</p>
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
  if (error || !data) {
    return (
      <div className="container py-12">
        <div className="max-w-md mx-auto text-center">
          <div className="bg-red-50 border border-red-200 rounded-lg p-6 mb-4">
            <svg className="w-12 h-12 text-red-500 mx-auto mb-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" />
            </svg>
            <h2 className="text-xl font-bold text-gray-900 mb-2">
              {label('Объявление не найдено', 'E\'lon topilmadi')}
            </h2>
            <p className="text-gray-600 mb-4">{error || label('Страница не существует или была удалена', 'Sahifa mavjud emas yoki o\'chirilgan')}</p>
          </div>
          <button
            onClick={() => router.push('/search')}
            className="btn-accent"
          >
            {label('Вернуться к поиску', 'Qidiruvga qaytish')}
          </button>
        </div>
      </div>
    );
  }
  const media = data.media || [];
  const current = media[idx] ? media[idx].image_url : '';

  const prev = () => setIdx((i) => (i - 1 + media.length) % Math.max(media.length, 1));
  const next = () => setIdx((i) => (i + 1) % Math.max(media.length, 1));

  // drag-to-swipe for main image

  return (
    <div className="container py-6">
      <div className="detail-grid">
        <div>
          <div className="gallery card">
            {data.is_promoted && (
              <div className="promoted-banner">
                <svg className="w-4 h-4" fill="currentColor" viewBox="0 0 20 20">
                  <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                </svg>
                <span>{label('Продвигаемое', 'Targ\'ib qilinadigan')}</span>
              </div>
            )}

            <div
              className="gallery-main"
              tabIndex={0}
              onKeyDown={(e) => { if (e.key === 'ArrowLeft') prev(); if (e.key === 'ArrowRight') next(); }}
              onWheel={(e) => {
                if (media.length <= 1) return;
                const delta = Math.abs(e.deltaX) > Math.abs(e.deltaY) ? e.deltaX : e.deltaY;
                if (delta > 0) next(); else prev();
              }}
              onPointerDown={(e) => {
                (e.currentTarget as HTMLElement).setPointerCapture(e.pointerId);
                setDrag({ startX: e.clientX, moved: false });
              }}
              onPointerMove={(e) => {
                if (!drag) return;
                const dx = e.clientX - drag.startX;
                if (Math.abs(dx) > 40) {
                  setDrag({ startX: e.clientX, moved: true });
                  if (dx > 0) prev(); else next();
                }
              }}
              onPointerUp={(e) => { try { (e.currentTarget as HTMLElement).releasePointerCapture(e.pointerId); } catch {} setDrag(null); }}
              onPointerCancel={() => setDrag(null)}
            >
              {current ? (
                <img src={current} alt={data.title} />
              ) : (
                <div className="no-image-placeholder">
                  <svg className="w-20 h-20 text-gray-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
                  </svg>
                  <span className="text-gray-400 mt-2">{label('Нет изображения', 'Rasm yo\'q')}</span>
                </div>
              )}
              {media.length > 1 && (
                <>
                  <div className="gallery-nav">
                    <button onClick={prev} aria-label="Previous">‹</button>
                    <button onClick={next} aria-label="Next">›</button>
                  </div>
                  <div className="gallery-counter">
                    {idx + 1} / {media.length}
                  </div>
                </>
              )}
            </div>
          {media.length > 0 && (
            <div
              className="gallery-thumbs"
              onWheel={(e) => {
                // horizontal scroll for thumbs
                const el = e.currentTarget as HTMLDivElement;
                el.scrollLeft += (Math.abs(e.deltaX) > Math.abs(e.deltaY) ? e.deltaX : e.deltaY);
                setThumbsScrolling(true);
                window.setTimeout(() => setThumbsScrolling(false), 80);
              }}
              onPointerDown={(e) => {
                const el = e.currentTarget as HTMLDivElement;
                el.setPointerCapture(e.pointerId);
                (el as any)._dragX = e.clientX;
                (el as any)._dragLeft = el.scrollLeft;
              }}
              onPointerMove={(e) => {
                const el = e.currentTarget as any as HTMLDivElement & { _dragX?: number; _dragLeft?: number };
                if (el._dragX !== undefined) {
                  const dx = e.clientX - (el._dragX as number);
                  el.scrollLeft = (el._dragLeft as number) - dx;
                }
              }}
              onPointerUp={(e) => { try { (e.currentTarget as HTMLElement).releasePointerCapture(e.pointerId); } catch {} const el = e.currentTarget as any; el._dragX = undefined; }}
              onPointerCancel={(e) => { const el = e.currentTarget as any; el._dragX = undefined; }}
            >
              {media.map((m: any, i: number) => (
                <img key={m.id} src={m.image_url} className={i===idx?'is-active':''} onClick={() => setIdx(i)} alt="" />
              ))}
            </div>
          )}
        </div>

        {/* Title and Breadcrumbs */}
        <div className="card" style={{ marginTop: 12 }}>
          <div className="breadcrumbs mb-4">
            <a href={locale === 'uz' ? '/uz' : '/'} className="breadcrumb-link">
              {label('Главная', 'Bosh sahifa')}
            </a>
            <span className="breadcrumb-sep">›</span>
            <a href={`${locale === 'uz' ? '/uz' : ''}/search`} className="breadcrumb-link">
              {data.category_name || label('Все категории', 'Barcha kategoriyalar')}
            </a>
            <span className="breadcrumb-sep">›</span>
            <span className="breadcrumb-current">{data.title}</span>
          </div>

          <h1 className="detail-title">{data.title}</h1>

          {chips.length > 0 && (
            <div className="detail-attributes">
              <h3 className="attributes-title">{label('Характеристики', 'Xususiyatlar')}</h3>
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
            <h3 className="section-title">{label('Описание', 'Ta\'rif')}</h3>
            <p className="description-text">
              {data.description || <span className="text-gray-400">{label('Описание отсутствует', 'Tavsif yo\'q')}</span>}
            </p>
          </div>

          <div className="border-t mt-6 pt-4">
            <div className="flex items-center justify-between">
              <span className="text-xs text-gray-400">ID: {data.id}</span>
              <button
                className="text-sm text-gray-500 hover:text-red-500 transition-colors flex items-center gap-2"
                onClick={async () => {
                  if (reporting) return;
                  setReporting(true);
                  try {
                    await apiFetch('/api/v1/reports', {
                      method: 'POST',
                      body: JSON.stringify({ listing: id, reason_code: 'spam', notes: '' })
                    });
                    setReportMsg(label('Жалоба отправлена', 'Shikoyat yuborildi'));
                  } catch {
                    setReportMsg(label('Не удалось отправить', 'Yuborib bo\'lmadi'));
                  } finally {
                    setReporting(false);
                    setTimeout(() => setReportMsg(''), 3000);
                  }
                }}
                disabled={reporting || !!reportMsg}
              >
                <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 21v-4m0 0V5a2 2 0 012-2h6.5l1 1H21l-3 6 3 6h-8.5l-1-1H5a2 2 0 00-2 2zm9-13.5V9" />
                </svg>
                {reportMsg || label('Пожаловаться', 'Shikoyat qilish')}
              </button>
            </div>
          </div>
        </div>
      </div>

      <aside className="space-y-3">
        {/* Price & Contact Card */}
        <div className="sidebar-card sticky" style={{ top: 80 }}>
          <div className="flex items-center justify-between mb-3">
            <div className="flex items-center gap-2 text-xs text-gray-500">
              <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
              {new Date(data.created_at).toLocaleDateString(locale === 'uz' ? 'uz-UZ' : 'ru-RU', {
                year: 'numeric',
                month: 'long',
                day: 'numeric'
              })}
            </div>
            <button className="favorite-btn-detail" title={label('В избранное', 'Sevimlilarga')}>
              <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
              </svg>
            </button>
          </div>

          {data.price_amount > 0 ? (
            <div className="price-block mb-4">
              <div className="text-4xl font-bold text-[#002F34] mb-1">
                {Number(data.price_amount).toLocaleString()} <span className="text-2xl">{data.price_currency}</span>
              </div>
              {data.is_price_negotiable && (
                <div className="flex items-center gap-1 text-sm text-[#23E5DB]">
                  <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M7 8h10M7 12h4m1 8l-4-4H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-3l-4 4z" />
                  </svg>
                  {label('Цена договорная', 'Narx kelishilgan')}
                </div>
              )}
            </div>
          ) : (
            <div className="price-block mb-4">
              <div className="text-3xl font-bold text-green-600">
                {label('Бесплатно', 'Bepul')}
              </div>
            </div>
          )}

          <div className="btn-row space-y-3">
            <button className="w-full bg-[#23E5DB] hover:bg-[#1dd4cb] text-white font-semibold py-3 px-4 rounded-lg transition-colors flex items-center justify-center gap-2">
              <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
              </svg>
              {label('Написать сообщение', 'Xabar yozish')}
            </button>

            <button
              className="w-full bg-white border-2 border-gray-300 hover:border-[#23E5DB] text-gray-900 font-semibold py-3 px-4 rounded-lg transition-colors flex items-center justify-center gap-2"
              onClick={() => setShowPhone(true)}
            >
              <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
              </svg>
              {showPhone ? (
                data.contact_phone_masked || data.user?.phone_e164 || '—'
              ) : (
                label('Показать телефон', 'Telefonni ko\'rsatish')
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
            {label('Продавец', 'Sotuvchi')}
          </div>
          <div className="seller-info">
            <div className="seller-avatar">
              {(data.user?.display_name || data.user?.phone_e164 || 'U').charAt(0).toUpperCase()}
            </div>
            <div className="seller-details">
              <div className="seller-name">
                {data.user?.display_name || label('Пользователь', 'Foydalanuvchi')}
              </div>
              <div className="seller-meta">
                {label('На сайте с', 'Saytda')} {new Date(data.created_at).toLocaleDateString(locale === 'uz' ? 'uz-UZ' : 'ru-RU', { year: 'numeric', month: 'short' })}
              </div>
            </div>
          </div>
          <div className="seller-stats">
            <div className="stat-box">
              <div className="stat-value">—</div>
              <div className="stat-name">{label('Объявления', 'E\'lonlar')}</div>
            </div>
            <div className="stat-box">
              <div className="stat-value">—</div>
              <div className="stat-name">{label('Отзывы', 'Sharhlar')}</div>
            </div>
          </div>
          <button
            onClick={() => router.push(`/u/${data.user?.id || data.user_id}/listings`)}
            className="w-full btn-outline btn-lg text-sm"
          >
            {label('Все объявления продавца', 'Sotuvchining barcha e\'lonlari')}
          </button>
        </div>

        {/* Location Card */}
        <div className="sidebar-card location-card">
          <div className="seller-label">
            <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
            </svg>
            {label('Местоположение', 'Manzil')}
          </div>
          <div className="location-name">
            {data.location_name || data.location || label('Не указано', 'Ko\'rsatilmagan')}
          </div>
        </div>
      </aside>
      </div>

      {/* Seller's Other Listings */}
      {sellerListings.length > 0 && (
        <div className="related-listings-section">
          <div className="section-header">
            <h2 className="section-heading">
              {label('Другие объявления продавца', 'Sotuvchining boshqa e\'lonlari')}
            </h2>
            <a
              href={`${locale === 'uz' ? '/uz' : ''}/u/${data.user_id}/listings`}
              className="view-all-link"
            >
              {label('Смотреть все', 'Hammasini ko\'rish')} →
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
              {sellerListings.map((listing: any) => (
                <a
                  key={listing.id}
                  href={`${locale === 'uz' ? '/uz' : ''}/l/${listing.id}`}
                  className="related-listing-card"
                >
                  <div className="related-listing-image">
                    {listing.media?.[0]?.image_url ? (
                      <img src={listing.media[0].image_url} alt={listing.title} />
                    ) : (
                      <div className="no-image">
                        <svg className="w-12 h-12 text-gray-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
                        </svg>
                      </div>
                    )}
                  </div>
                  <div className="related-listing-content">
                    <h3 className="related-listing-title">{listing.title}</h3>
                    <div className="related-listing-price">
                      {listing.price_amount > 0 ? (
                        `${Number(listing.price_amount).toLocaleString()} ${listing.price_currency}`
                      ) : (
                        label('Бесплатно', 'Bepul')
                      )}
                    </div>
                    {listing.location_name && (
                      <div className="related-listing-location">
                        <svg className="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                        </svg>
                        {listing.location_name}
                      </div>
                    )}
                  </div>
                </a>
              ))}
            </div>
          )}
        </div>
      )}
    </div>
  );
}
