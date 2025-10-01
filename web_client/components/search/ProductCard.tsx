"use client";
import Link from 'next/link';
import { useState } from 'react';

export type ProductHit = {
  id: string;
  title: string;
  price?: number;
  currency?: string;
  media_urls?: string[];
  location_name_ru?: string;
  location_name_uz?: string;
  refreshed_at?: string;
  is_promoted?: boolean;
  condition?: string;
};

export default function ProductCard({ hit, href, locale = 'ru' }: { hit: ProductHit; href: string; locale?: 'ru' | 'uz' }) {
  const [isFavorited, setIsFavorited] = useState(false);
  const [imageError, setImageError] = useState(false);

  const img = hit.media_urls?.[0];
  const price = hit.price !== undefined ? new Intl.NumberFormat(locale === 'uz' ? 'uz-UZ' : 'ru-RU').format(Number(hit.price)) : '';
  const loc = locale === 'uz' ? (hit.location_name_uz || '') : (hit.location_name_ru || '');

  // Format date to show relative time or date
  const getTimeAgo = (dateStr: string) => {
    const date = new Date(dateStr);
    const now = new Date();
    const diffMs = now.getTime() - date.getTime();
    const diffDays = Math.floor(diffMs / (1000 * 60 * 60 * 24));

    if (diffDays === 0) return locale === 'uz' ? 'Bugun' : 'Сегодня';
    if (diffDays === 1) return locale === 'uz' ? 'Kecha' : 'Вчера';
    if (diffDays < 7) return `${diffDays} ${locale === 'uz' ? 'kun oldin' : 'дн. назад'}`;

    return date.toLocaleDateString(locale === 'uz' ? 'uz-UZ' : 'ru-RU', { day: 'numeric', month: 'short' });
  };

  const timeAgo = hit.refreshed_at ? getTimeAgo(hit.refreshed_at) : '';

  const handleFavoriteClick = (e: React.MouseEvent) => {
    e.preventDefault();
    e.stopPropagation();
    setIsFavorited(!isFavorited);
    // TODO: Call API to add/remove favorite
  };

  return (
    <Link href={href} className="olx-product-card">
      <div className="relative">
        {/* Image */}
        <div className="product-card-image">
          {img && !imageError ? (
            <img
              src={img}
              alt={hit.title}
              onError={() => setImageError(true)}
              className="w-full h-full object-cover"
            />
          ) : (
            <div className="w-full h-full bg-gray-100 flex items-center justify-center">
              <svg className="w-16 h-16 text-gray-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
              </svg>
            </div>
          )}
        </div>

        {/* Promoted Badge */}
        {hit.is_promoted && (
          <div className="promoted-badge">
            <svg className="w-3 h-3" fill="currentColor" viewBox="0 0 20 20">
              <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
            </svg>
            <span className="text-xs font-medium">{locale === 'uz' ? 'TOP' : 'ТОП'}</span>
          </div>
        )}

        {/* Favorite Button */}
        <button
          onClick={handleFavoriteClick}
          className="favorite-btn"
          aria-label={locale === 'uz' ? 'Sevimlilar' : 'В избранное'}
        >
          <svg
            className="w-5 h-5"
            fill={isFavorited ? 'currentColor' : 'none'}
            stroke="currentColor"
            viewBox="0 0 24 24"
          >
            <path
              strokeLinecap="round"
              strokeLinejoin="round"
              strokeWidth={2}
              d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"
            />
          </svg>
        </button>
      </div>

      {/* Content */}
      <div className="product-card-content">
        {/* Price */}
        {price ? (
          <div className="product-card-price">
            {price} {hit.currency === 'UZS' ? (locale === 'uz' ? 'so\'m' : 'сум') : hit.currency}
          </div>
        ) : (
          <div className="product-card-price text-green-600">
            {locale === 'uz' ? 'Bepul' : 'Бесплатно'}
          </div>
        )}

        {/* Title */}
        <h3 className="product-card-title">
          {hit.title}
        </h3>

        {/* Location & Time */}
        <div className="product-card-meta">
          {loc && <span>{loc}</span>}
          {loc && timeAgo && <span className="meta-separator">•</span>}
          {timeAgo && <span>{timeAgo}</span>}
        </div>
      </div>
    </Link>
  );
}
