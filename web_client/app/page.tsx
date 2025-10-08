"use client";
import { useEffect, useState, Fragment } from 'react';
import { Search, Taxonomy } from '@/lib/api';
import { useI18n } from '@/lib/i18n';
import CategoriesGrid from '@/components/home/CategoriesGrid';
import ProductCard from '@/components/search/ProductCard';
import Link from 'next/link';
import { appConfig } from '@/config';

type Hit = {
  id: string;
  title: string;
  price?: number;
  currency?: string;
  media_urls?: string[];
  location_name_ru?: string;
  location_name_uz?: string;
  refreshed_at?: string;
  is_promoted?: boolean;
};

export default function HomePage() {
  const { t, locale } = useI18n();
  const base = locale === 'uz' ? '/uz' : '';
  const [searchQuery, setSearchQuery] = useState('');
  const [featuredListings, setFeaturedListings] = useState<Hit[]>([]);
  const [loading, setLoading] = useState(true);

  const { name, tagline, description, features, contact } = appConfig;
  const heroHighlights = [
    features.enablePromotions && {
      icon: '⚡️',
      ru: 'Продвижение объявлений',
      uz: 'Reklama qilingan eʼlonlar',
    },
    features.enableFavorites && {
      icon: '❤️',
      ru: 'Список избранного',
      uz: 'Sevimlilar roʻyxati',
    },
    features.enableSavedSearches && {
      icon: '🔔',
      ru: 'Сохраненные поиски',
      uz: 'Saqlangan qidiruvlar',
    },
    features.enableChat && {
      icon: '💬',
      ru: 'Чат с продавцами',
      uz: 'Sotuvchilar bilan chat',
    },
  ].filter(Boolean) as { icon: string; ru: string; uz: string }[];

  if (heroHighlights.length < 3) {
    heroHighlights.push({
      icon: '📞',
      ru: `Поддержка: ${contact.phone}`,
      uz: `Qo'llab-quvvatlash: ${contact.phone}`,
    });
  }
  if (heroHighlights.length < 3) {
    heroHighlights.push({
      icon: '✉️',
      ru: `Email: ${contact.email}`,
      uz: `Email: ${contact.email}`,
    });
  }
  if (heroHighlights.length < 3) {
    heroHighlights.push({
      icon: '📍',
      ru: `Адрес: ${contact.address}`,
      uz: `Manzil: ${contact.address}`,
    });
  }
  const highlights = heroHighlights.slice(0, 3);

  const label = (ru: string, uz: string) => locale === 'uz' ? uz : ru;
  const heroTitle = label(
    `${name}: Покупайте и продавайте все, что вам нужно`,
    `${name}: Kerakli narsalarni sotib oling va soting`
  );
  const heroSubtitle = label(
    description || 'Тысячи объявлений в Узбекистане. Найдите то, что ищете!',
    tagline || "O'zbekistonda minglab e'lonlar. Qidirayotgan narsangizni toping!"
  );
  const featuredTitle = features.enablePromotions
    ? label('Продвигаемые объявления', "Reklama qilingan e'lonlar")
    : label('Недавние объявления', "So'nggi e'lonlar");

  useEffect(() => {
    (async () => {
      setLoading(true);
      try {
        // Fetch recent/featured listings for homepage
        const data = await Search.listings({ per_page: 8, sort: 'newest' });
        setFeaturedListings(data.results || []);
      } catch (e) {
        console.error('Failed to load featured listings', e);
      } finally {
        setLoading(false);
      }
    })();
  }, []);

  const handleSearch = () => {
    if (searchQuery.trim()) {
      window.location.href = `${base}/search?q=${encodeURIComponent(searchQuery)}`;
    } else {
      window.location.href = `${base}/search`;
    }
  };

  return (
    <div>
      {/* Hero Section */}
      <div className="hero-section">
        <div className="container">
          <div className="hero-content">
            <h1 className="hero-title">{heroTitle}</h1>
            <p className="hero-subtitle">{heroSubtitle}</p>

            {/* Search Bar */}
            <div className="hero-search">
              <div className="search-input-wrapper flex-1">
                <svg className="search-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                </svg>
                <input
                  className="hero-search-input"
                  placeholder={label('Что вы ищете?', 'Nima qidiryapsiz?')}
                  value={searchQuery}
                  onChange={e => setSearchQuery(e.target.value)}
                  onKeyDown={e => e.key === 'Enter' && handleSearch()}
                />
              </div>
              <button className="hero-search-btn" onClick={handleSearch}>
                {label('Искать', 'Qidirish')}
              </button>
            </div>

            {/* Quick Stats */}
            <div className="hero-stats">
              {highlights.map((item, idx) => (
                <Fragment key={`${item.icon}-${idx}`}>
                  <div className="stat-item">
                    <div className="stat-number">{item.icon}</div>
                    <div className="stat-label">{label(item.ru, item.uz)}</div>
                  </div>
                  {idx < highlights.length - 1 && <div className="stat-divider"></div>}
                </Fragment>
              ))}
            </div>
          </div>
        </div>
      </div>

      {/* Categories */}
      <section className="py-8 bg-white">
        <div className="container">
          <div className="flex items-center justify-between mb-6">
            <h2 className="text-2xl font-bold text-gray-900">
              {label('Популярные категории', 'Ommabop kategoriyalar')}
            </h2>
            <Link href={`${base}/search`} className="text-[#23E5DB] hover:text-[#1dd4cb] text-sm font-medium">
              {label('Все категории →', 'Barcha kategoriyalar →')}
            </Link>
          </div>
          <CategoriesGrid />
        </div>
      </section>

      {/* Featured Listings */}
      <section className="py-8 bg-gray-50">
        <div className="container">
          <div className="flex items-center justify-between mb-6">
            <h2 className="text-2xl font-bold text-gray-900">{featuredTitle}</h2>
            <Link href={`${base}/search`} className="text-[#23E5DB] hover:text-[#1dd4cb] text-sm font-medium">
              {label('Смотреть все →', 'Hammasini ko\'rish →')}
            </Link>
          </div>

          {loading ? (
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
              {[...Array(8)].map((_, i) => (
                <div key={i} className="bg-white rounded-lg border border-gray-200 p-4 animate-pulse">
                  <div className="w-full h-48 bg-gray-200 rounded mb-3"></div>
                  <div className="h-4 bg-gray-200 rounded w-3/4 mb-2"></div>
                  <div className="h-4 bg-gray-200 rounded w-1/2"></div>
                </div>
              ))}
            </div>
          ) : featuredListings.length > 0 ? (
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
              {featuredListings.map(hit => (
                <ProductCard
                  key={hit.id}
                  hit={hit}
                  href={`${base}/l/${hit.id}`}
                  locale={locale}
                />
              ))}
            </div>
          ) : (
            <div className="text-center py-12">
              <p className="text-gray-500">
                {label('Пока нет объявлений', 'Hozircha e\'lonlar yo\'q')}
              </p>
            </div>
          )}
        </div>
      </section>

      {/* How It Works */}
      <section className="py-12 bg-white">
        <div className="container">
          <h2 className="text-2xl font-bold text-gray-900 text-center mb-8">
            {label('Как это работает', 'Qanday ishlaydi')}
          </h2>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
            <div className="text-center">
              <div className="w-16 h-16 bg-[#23E5DB] rounded-full flex items-center justify-center mx-auto mb-4">
                <svg className="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 4v16m8-8H4" />
                </svg>
              </div>
              <h3 className="text-lg font-semibold mb-2">
                {label('1. Создайте объявление', '1. E\'lon yarating')}
              </h3>
              <p className="text-gray-600 text-sm">
                {label('Добавьте фото, опишите товар и укажите цену', 'Rasm qo\'shing, mahsulotni tasvirlab bering va narxni ko\'rsating')}
              </p>
            </div>

            <div className="text-center">
              <div className="w-16 h-16 bg-[#23E5DB] rounded-full flex items-center justify-center mx-auto mb-4">
                <svg className="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
                </svg>
              </div>
              <h3 className="text-lg font-semibold mb-2">
                {label('2. Получайте отклики', '2. Javoblar oling')}
              </h3>
              <p className="text-gray-600 text-sm">
                {label('Покупатели свяжутся с вами по телефону или в чате', 'Xaridorlar telefon yoki chat orqali bog\'lanadi')}
              </p>
            </div>

            <div className="text-center">
              <div className="w-16 h-16 bg-[#23E5DB] rounded-full flex items-center justify-center mx-auto mb-4">
                <svg className="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
                </svg>
              </div>
              <h3 className="text-lg font-semibold mb-2">
                {label('3. Закройте сделку', '3. Shartnomani yakunlang')}
              </h3>
              <p className="text-gray-600 text-sm">
                {label('Договоритесь о встрече и завершите продажу', 'Uchrashuv haqida kelishing va savdoni yakunlang')}
              </p>
            </div>
          </div>
        </div>
      </section>

      {/* CTA Section */}
      <section className="py-12 bg-gradient-to-br from-[#23E5DB] to-[#35a4c8]">
        <div className="container text-center">
          <h2 className="text-3xl font-bold text-white mb-4">
            {label('Готовы начать продавать?', 'Sotishni boshlashga tayyormisiz?')}
          </h2>
          <p className="text-white text-lg mb-6 opacity-90">
            {label('Создайте объявление бесплатно и найдите покупателя уже сегодня', 'Bepul e\'lon yarating va bugun xaridor toping')}
          </p>
          <a
            href={`${base}/post`}
            className="inline-flex items-center gap-2 bg-white text-[#002F34] font-semibold py-3 px-8 rounded-lg hover:bg-gray-100 transition-colors"
          >
            <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 4v16m8-8H4" />
            </svg>
            {label('Разместить объявление', 'E\'lon joylashtirish')}
          </a>
        </div>
      </section>
    </div>
  );
}
