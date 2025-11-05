"use client";
import { Listings } from '@/lib/api';
import { useEffect, useState } from 'react';
import { useI18n } from '@/lib/i18n';
import { useParams } from 'next/navigation';
import ProductCard, { ProductHit } from '@/components/search/ProductCard';

export type ProductMedia = {
  id: string;
  type: string;
  image: string;
  image_url: string;
};

export type ProductItem = {
  id: string;
  title: string;
  price_amount?: number;
  price_currency?: string;
  price_normalized?: number;
  media?: ProductMedia[];
  location_name_ru?: string;
  location_name_uz?: string;
  refreshed_at?: string;
  is_promoted?: boolean;
  condition?: string;
};

// convert ProductItem to ProductHit
function convertToProductHit(item: ProductItem): ProductHit {
  console.log('Converting ProductItem to ProductHit:', item);
  return {
    id: item.id,
    title: item.title,
    price: item.price_amount,
    currency: item.price_currency,
    media_urls: (item.media ?? []).map((media) => {return media.image}),
    location_name_ru: item.location_name_ru,
    location_name_uz: item.location_name_uz,
    refreshed_at: item.refreshed_at,
    is_promoted: item.is_promoted,
    condition: item.condition,
  };
}

export default function UserProfilePage() {
  const { userId } = useParams();
  const { t, locale } = useI18n();
  const base = locale === 'uz' ? '/uz' : '';
  const [listings, setListings] = useState<any[]>([]);
  const [seller, setSeller] = useState<any>(null);
  const [loading, setLoading] = useState(true);
  const [sort, setSort] = useState('newest');
  const [error, setError] = useState('');

  const label = (ru: string, uz: string) => (locale === 'uz' ? uz : ru);

  useEffect(() => {
    const loadUserListings = async () => {
      try {
        setLoading(true);
        const data = await Listings.userListings(Number(userId), { sort });
        setListings(data);
        // Get seller info from first listing
        if (data.length > 0 && data[0].seller) {
          setSeller(data[0].seller);
        }
      } catch (e: any) {
        setError(e.message || label('Ошибка загрузки', 'Yuklashda xatolik'));
      } finally {
        setLoading(false);
      }
    };

    if (userId) {
      loadUserListings();
    }
  }, [userId, sort, locale]);

  if (loading) {
    return (
      <div className="container py-12 text-center">
        <div className="text-gray-600">{label('Загрузка...', 'Yuklanmoqda...')}</div>
      </div>
    );
  }

  if (error) {
    return (
      <div className="container py-12">
        <div className="max-w-md mx-auto text-center">
          <div className="bg-red-50 border border-red-200 rounded-lg p-6">
            <p className="text-red-800">{error}</p>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className="container py-6">
      {/* Seller Info */}
      <div className="bg-white rounded-lg border border-gray-200 p-6 mb-6">
        <div className="flex items-center gap-4">
          <div className="w-16 h-16 rounded-full bg-[#23E5DB] flex items-center justify-center text-white text-2xl font-bold">
            {seller?.name?.[0]?.toUpperCase() || 'U'}
          </div>
          <div>
            <h1 className="text-2xl font-bold text-gray-900">
              {seller?.name || label('Пользователь', 'Foydalanuvchi')}
            </h1>
            <p className="text-gray-600">
              {label('На сайте с', 'Saytda')} {seller?.since ? new Date(seller.since).toLocaleDateString(locale === 'uz' ? 'uz-UZ' : 'ru-RU', { month: 'long', year: 'numeric' }) : ''}
            </p>
          </div>
        </div>
      </div>

      {/* Tabs and Filters */}
      <div className="bg-white rounded-lg border border-gray-200 p-4 mb-6">
        <div className="flex items-center justify-between">
          <h2 className="text-lg font-semibold">
            {label('Объявления', "E'lonlar")} ({listings.length})
          </h2>

          <div className="flex items-center gap-3">
            <label className="text-sm text-gray-600">{label('Сортировка:', 'Saralash:')}</label>
            <select
              value={sort}
              onChange={(e) => setSort(e.target.value)}
              className="px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:border-[#23E5DB] focus:ring-2 focus:ring-[#23E5DB] focus:ring-opacity-20"
            >
              <option value="newest">{label('Сначала новые', 'Eng yangi')}</option>
              <option value="oldest">{label('Сначала старые', 'Eng eski')}</option>
              <option value="price_asc">{label('Цена: по возрастанию', "Narx: o'sish")}</option>
              <option value="price_desc">{label('Цена: по убыванию', 'Narx: kamayish')}</option>
            </select>
          </div>
        </div>
      </div>

      {/* Listings Grid */}
      {listings.length === 0 ? (
        <div className="bg-white rounded-lg border border-gray-200 p-12 text-center">
          <div className="text-6xl mb-4">📦</div>
          <h3 className="text-xl font-semibold text-gray-900 mb-2">
            {label('Нет объявлений', "E'lonlar yo'q")}
          </h3>
          <p className="text-gray-600">
            {label('У этого пользователя пока нет активных объявлений', "Bu foydalanuvchida hali faol e'lonlar yo'q")}
          </p>
        </div>
      ) : (
        <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
          {listings.map((listing: ProductItem) => (
            <ProductCard
              key={listing.id}
              hit={convertToProductHit(listing)}
              href={`${base}/l/${listing.id}`}
              locale={locale}
              viewMode="list"
            />
          ))}
        </div>
      )}
    </div>
  );
}
