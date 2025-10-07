'use client';

import { useState, useEffect } from 'react';
import Link from 'next/link';
import { useI18n } from '@/lib/i18n';
import { Favorites, SavedSearches, RecentlyViewed } from '@/lib/api';

interface FavoriteItem {
  id: number;
  listing: number;
  listing_title: string;
  listing_price: number;
  listing_location: string;
  listing_media_urls: string[];
  created_at: string;
}

interface RecentItem {
  id: number;
  listing: number;
  listing_title: string;
  listing_price: number;
  listing_location: string;
  listing_media_urls: string[];
  viewed_at: string;
}

interface SavedSearch {
  id: number;
  title: string;
  query: {
    category_name?: string;
    location_name?: string;
    price_min?: number;
    price_max?: number;
  };
  created_at: string;
}

export default function FavoritesPage() {
  const { locale } = useI18n();
  const [activeTab, setActiveTab] = useState<'liked' | 'searches' | 'recent'>('liked');

  // Liked items (from API)
  const [likedItems, setLikedItems] = useState<FavoriteItem[]>([]);
  const [loadingLiked, setLoadingLiked] = useState(true);

  // Saved searches (from API)
  const [savedSearches, setSavedSearches] = useState<SavedSearch[]>([]);
  const [loadingSearches, setLoadingSearches] = useState(false);

  // Recently visited (from API)
  const [recentItems, setRecentItems] = useState<RecentItem[]>([]);
  const [loadingRecent, setLoadingRecent] = useState(false);

  const label = (ru: string, uz: string) => (locale === 'uz' ? uz : ru);

  // Load liked items
  useEffect(() => {
    const loadLikedItems = async () => {
      try {
        const data = await Favorites.list();
        setLikedItems(data || []);
      } catch (error) {
        console.error('Failed to load liked items:', error);
        setLikedItems([]);
      } finally {
        setLoadingLiked(false);
      }
    };

    loadLikedItems();
  }, []);

  // Load saved searches
  useEffect(() => {
    if (activeTab === 'searches' && savedSearches.length === 0) {
      const loadSavedSearches = async () => {
        setLoadingSearches(true);
        try {
          const data = await SavedSearches.list();
          setSavedSearches(data.results || data || []);
        } catch (error) {
          console.error('Failed to load saved searches:', error);
          setSavedSearches([]);
        } finally {
          setLoadingSearches(false);
        }
      };

      loadSavedSearches();
    }
  }, [activeTab, savedSearches.length]);

  // Load recently visited
  useEffect(() => {
    if (activeTab === 'recent' && recentItems.length === 0) {
      const loadRecentItems = async () => {
        setLoadingRecent(true);
        try {
          const data = await RecentlyViewed.list();
          setRecentItems(data || []);
        } catch (error) {
          console.error('Failed to load recent items:', error);
          setRecentItems([]);
        } finally {
          setLoadingRecent(false);
        }
      };

      loadRecentItems();
    }
  }, [activeTab, recentItems.length]);

  const handleUnlike = async (listingId: number) => {
    try {
      await Favorites.delete(listingId);
      setLikedItems(likedItems.filter((item) => item.listing !== listingId));
    } catch (error) {
      console.error('Failed to remove favorite:', error);
    }
  };

  const handleDeleteSearch = async (id: number) => {
    try {
      await SavedSearches.delete(id);
      setSavedSearches(savedSearches.filter((search) => search.id !== id));
    } catch (error) {
      console.error('Failed to delete search:', error);
    }
  };

  const handleClearAll = async () => {
    if (activeTab === 'liked') {
      if (confirm(label('Удалить все избранные объявления?', 'Barcha sevimlilarni o\'chirish?'))) {
        try {
          await Promise.all(likedItems.map(item => Favorites.delete(item.listing)));
          setLikedItems([]);
        } catch (error) {
          console.error('Failed to clear favorites:', error);
        }
      }
    } else if (activeTab === 'recent') {
      if (confirm(label('Очистить историю просмотров?', 'Ko\'rishlar tarixini tozalash?'))) {
        try {
          await RecentlyViewed.clear();
          setRecentItems([]);
        } catch (error) {
          console.error('Failed to clear recent items:', error);
        }
      }
    }
  };

  const formatPrice = (amount: number, currency: string) => {
    return new Intl.NumberFormat('ru-RU').format(amount) + ' ' + currency.toLowerCase();
  };

  const formatDate = (dateString: string) => {
    const date = new Date(dateString);
    const now = new Date();
    const diffInHours = Math.floor((now.getTime() - date.getTime()) / (1000 * 60 * 60));

    if (diffInHours < 24) {
      return label(`${diffInHours} ч. назад`, `${diffInHours} soat oldin`);
    }
    const diffInDays = Math.floor(diffInHours / 24);
    if (diffInDays < 30) {
      return label(`${diffInDays} дн. назад`, `${diffInDays} kun oldin`);
    }
    return date.toLocaleDateString(locale === 'uz' ? 'uz-UZ' : 'ru-RU');
  };

  const renderFavoriteCard = (item: FavoriteItem) => (
    <div key={item.id} className="listing-card">
      <Link href={`/l/${item.listing}`} className="listing-card-link">
        {item.listing_media_urls && item.listing_media_urls.length > 0 ? (
          <div className="listing-card-img" style={{ backgroundImage: `url(${item.listing_media_urls[0]})` }} />
        ) : (
          <div className="listing-card-img listing-card-img-placeholder">
            <span style={{ fontSize: '48px', opacity: 0.3 }}>📷</span>
          </div>
        )}
        <div className="listing-card-body">
          <h3 className="listing-card-title">{item.listing_title}</h3>
          <div className="listing-card-price">{formatPrice(item.listing_price, 'UZS')}</div>
          <div className="listing-card-meta">
            {item.listing_location && <span>{item.listing_location}</span>}
            <span>{formatDate(item.created_at)}</span>
          </div>
        </div>
      </Link>
      <button
        onClick={(e) => {
          e.preventDefault();
          handleUnlike(item.listing);
        }}
        className="listing-card-remove"
        title={label('Удалить', 'O\'chirish')}
      >
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
          <path d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
        </svg>
      </button>
    </div>
  );

  const renderRecentCard = (item: RecentItem) => (
    <div key={item.id} className="listing-card">
      <Link href={`/l/${item.listing}`} className="listing-card-link">
        {item.listing_media_urls && item.listing_media_urls.length > 0 ? (
          <div className="listing-card-img" style={{ backgroundImage: `url(${item.listing_media_urls[0]})` }} />
        ) : (
          <div className="listing-card-img listing-card-img-placeholder">
            <span style={{ fontSize: '48px', opacity: 0.3 }}>📷</span>
          </div>
        )}
        <div className="listing-card-body">
          <h3 className="listing-card-title">{item.listing_title}</h3>
          <div className="listing-card-price">{formatPrice(item.listing_price, 'UZS')}</div>
          <div className="listing-card-meta">
            {item.listing_location && <span>{item.listing_location}</span>}
            <span>{formatDate(item.viewed_at)}</span>
          </div>
        </div>
      </Link>
    </div>
  );

  return (
    <div style={{ maxWidth: '1200px', margin: '0 auto', padding: '20px' }}>
      <h1 style={{ marginBottom: '32px', fontSize: '32px', fontWeight: 700 }}>
        {label('Избранные объявления', 'Sevimli e\'lonlar')}
      </h1>

      {/* Tabs */}
      <div style={{ borderBottom: '2px solid var(--border)', marginBottom: '24px' }}>
        <div style={{ display: 'flex', gap: '0' }}>
          <button
            onClick={() => setActiveTab('liked')}
            style={{
              padding: '12px 24px',
              border: 'none',
              background: 'transparent',
              borderBottom: activeTab === 'liked' ? '3px solid var(--brand)' : '3px solid transparent',
              fontWeight: activeTab === 'liked' ? 700 : 400,
              color: activeTab === 'liked' ? 'var(--brand)' : 'var(--muted)',
              cursor: 'pointer',
              marginBottom: '-2px',
            }}
          >
            {label(`Избранные объявления [${likedItems.length}/150]`, `Sevimli e'lonlar [${likedItems.length}/150]`)}
          </button>
          <button
            onClick={() => setActiveTab('searches')}
            style={{
              padding: '12px 24px',
              border: 'none',
              background: 'transparent',
              borderBottom: activeTab === 'searches' ? '3px solid var(--brand)' : '3px solid transparent',
              fontWeight: activeTab === 'searches' ? 700 : 400,
              color: activeTab === 'searches' ? 'var(--brand)' : 'var(--muted)',
              cursor: 'pointer',
              marginBottom: '-2px',
            }}
          >
            {label(`Сохраненные поиски [${savedSearches.length}/50]`, `Saqlangan qidiruvlar [${savedSearches.length}/50]`)}
          </button>
          <button
            onClick={() => setActiveTab('recent')}
            style={{
              padding: '12px 24px',
              border: 'none',
              background: 'transparent',
              borderBottom: activeTab === 'recent' ? '3px solid var(--brand)' : '3px solid transparent',
              fontWeight: activeTab === 'recent' ? 700 : 400,
              color: activeTab === 'recent' ? 'var(--brand)' : 'var(--muted)',
              cursor: 'pointer',
              marginBottom: '-2px',
            }}
          >
            {label('Недавно просмотренные', 'Yaqinda ko\'rilgan')}
          </button>
        </div>
      </div>

      {/* Clear all button */}
      {(activeTab === 'liked' && likedItems.length > 0) || (activeTab === 'recent' && recentItems.length > 0) ? (
        <div style={{ marginBottom: '20px', textAlign: 'right' }}>
          <button onClick={handleClearAll} className="btn-outline">
            {activeTab === 'liked'
              ? label('Очистить избранные', 'Sevimlilarni tozalash')
              : label('Очистить историю', 'Tarixni tozalash')
            }
          </button>
        </div>
      ) : null}

      {/* Tab content */}
      {activeTab === 'liked' && (
        <div>
          {loadingLiked ? (
            <div style={{ textAlign: 'center', padding: '60px', color: 'var(--muted)' }}>
              {label('Загрузка...', 'Yuklanmoqda...')}
            </div>
          ) : likedItems.length === 0 ? (
            <div style={{ textAlign: 'center', padding: '60px' }}>
              <div style={{ fontSize: '64px', marginBottom: '16px' }}>💔</div>
              <h3 style={{ color: 'var(--muted)', marginBottom: '8px' }}>
                {label('Нет избранных объявлений', 'Sevimli e\'lonlar yo\'q')}
              </h3>
              <p style={{ color: 'var(--muted)' }}>
                {label('Добавляйте объявления в избранное, чтобы быстро находить их позже', 'E\'lonlarni sevimlilar ro\'yxatiga qo\'shing')}
              </p>
            </div>
          ) : (
            <div className="listings-grid">
              {likedItems.map((item) => renderFavoriteCard(item))}
            </div>
          )}
        </div>
      )}

      {activeTab === 'searches' && (
        <div>
          {loadingSearches ? (
            <div style={{ textAlign: 'center', padding: '60px', color: 'var(--muted)' }}>
              {label('Загрузка...', 'Yuklanmoqda...')}
            </div>
          ) : savedSearches.length === 0 ? (
            <div style={{ textAlign: 'center', padding: '60px' }}>
              <div style={{ fontSize: '64px', marginBottom: '16px' }}>🔍</div>
              <h3 style={{ color: 'var(--muted)', marginBottom: '8px' }}>
                {label('Нет сохраненных поисков', 'Saqlangan qidiruvlar yo\'q')}
              </h3>
              <p style={{ color: 'var(--muted)' }}>
                {label('Сохраните параметры поиска, чтобы получать уведомления о новых объявлениях', 'Yangi e\'lonlar haqida xabarnoma olish uchun qidiruvni saqlang')}
              </p>
            </div>
          ) : (
            <div style={{ display: 'grid', gap: '16px' }}>
              {savedSearches.map((search) => (
                <div key={search.id} className="saved-search-card">
                  <div style={{ flex: 1 }}>
                    <h3 style={{ fontSize: '18px', fontWeight: 600, marginBottom: '8px' }}>{search.title}</h3>
                    <div style={{ fontSize: '14px', color: 'var(--muted)' }}>
                      {search.query.category_name && <span>{search.query.category_name}</span>}
                      {search.query.location_name && <span> • {search.query.location_name}</span>}
                      {(search.query.price_min || search.query.price_max) && (
                        <span> • {label('Цена:', 'Narxi:')} {search.query.price_min || 0} - {search.query.price_max || '∞'}</span>
                      )}
                    </div>
                    <div style={{ fontSize: '12px', color: 'var(--muted)', marginTop: '4px' }}>
                      {formatDate(search.created_at)}
                    </div>
                  </div>
                  <button
                    onClick={() => handleDeleteSearch(search.id)}
                    className="btn-outline"
                    style={{ padding: '8px 16px' }}
                  >
                    {label('Удалить', 'O\'chirish')}
                  </button>
                </div>
              ))}
            </div>
          )}
        </div>
      )}

      {activeTab === 'recent' && (
        <div>
          {loadingRecent ? (
            <div style={{ textAlign: 'center', padding: '60px', color: 'var(--muted)' }}>
              {label('Загрузка...', 'Yuklanmoqda...')}
            </div>
          ) : recentItems.length === 0 ? (
            <div style={{ textAlign: 'center', padding: '60px' }}>
              <div style={{ fontSize: '64px', marginBottom: '16px' }}>👀</div>
              <h3 style={{ color: 'var(--muted)', marginBottom: '8px' }}>
                {label('Нет недавно просмотренных', 'Yaqinda ko\'rilgan e\'lonlar yo\'q')}
              </h3>
              <p style={{ color: 'var(--muted)' }}>
                {label('Здесь будут отображаться объявления, которые вы недавно просматривали', 'Bu yerda siz yaqinda ko\'rgan e\'lonlar ko\'rsatiladi')}
              </p>
            </div>
          ) : (
            <div className="listings-grid">
              {recentItems.map((item) => renderRecentCard(item))}
            </div>
          )}
        </div>
      )}
    </div>
  );
}
