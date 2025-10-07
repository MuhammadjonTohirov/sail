"use client";
import { Search, Taxonomy, SavedSearches } from '@/lib/api';
import { useEffect, useMemo, useState } from 'react';
import Link from 'next/link';
import { useI18n } from '@/lib/i18n';
import { useRouter, useSearchParams } from 'next/navigation';
import Dropdown from '@/components/ui/Dropdown';
import CategoryPicker from '@/components/ui/CategoryPicker';
import ProductCard from '@/components/search/ProductCard';

type Hit = { id: string; title: string; price?: number; currency?: string; media_urls?: string[]; location_name_ru?: string; location_name_uz?: string; refreshed_at?: string };
type CategoryNode = { id: number; name: string; slug: string; is_leaf: boolean; icon?: string; children: CategoryNode[] };
type Attr = { id: number; key: string; label: string; type: string; options?: string[] };

export default function SearchPage() {
  const { t, locale } = useI18n();
  const base = locale === 'uz' ? '/uz' : '';
  const sp = useSearchParams();
  const router = useRouter();

  const [q, setQ] = useState(sp.get('q') || '');
  const [minPrice, setMinPrice] = useState(sp.get('min_price') || '');
  const [maxPrice, setMaxPrice] = useState(sp.get('max_price') || '');
  const [sort, setSort] = useState(sp.get('sort') || 'relevance');
  const [categoryTree, setCategoryTree] = useState<CategoryNode[]>([]);
  const [selectedCategory, setSelectedCategory] = useState<{ id: number; slug: string } | null>(null);
  const [selectedCategoryPath, setSelectedCategoryPath] = useState<string>('');
  const [catPickerOpen, setCatPickerOpen] = useState(false);
  const [attributes, setAttributes] = useState<Attr[]>([]);
  const [attrValues, setAttrValues] = useState<Record<string, any>>({});
  const [results, setResults] = useState<Hit[]>([]);
  const [total, setTotal] = useState(0);
  const [loading, setLoading] = useState(false);

  useEffect(() => { (async () => { setCategoryTree(await Taxonomy.categories()); })(); }, []);
  // No dedicated "my listings" merge here — results come from search backend
  useEffect(() => { (async () => {
    if (selectedCategory?.id) setAttributes(await Taxonomy.attributes(selectedCategory.id)); else setAttributes([]);
  })(); }, [selectedCategory?.id]);

  const flatCategories = useMemo(() => {
    const arr: { id: number; slug: string; name: string }[] = [];
    const walk = (nodes: CategoryNode[], prefix: string[]) => {
      nodes.forEach(n => {
        arr.push({ id: n.id, slug: n.slug, name: [...prefix, n.name].join(' / ') });
        if (n.children?.length) walk(n.children, [...prefix, n.name]);
      });
    };
    walk(categoryTree, []);
    return arr;
  }, [categoryTree]);

  const run = async () => {
    setLoading(true);
    try {
      const params: Record<string, any> = { q, min_price: minPrice, max_price: maxPrice, sort, per_page: 20 };
      if (selectedCategory) params.category_slug = selectedCategory.slug;
      for (const a of attributes) {
        const v = attrValues[a.key];
        if (v === undefined || v === '' || v === null) continue;
        if (a.type === 'multiselect' && Array.isArray(v)) params[`attrs.${a.key}`] = v;
        else if (a.type === 'number' || a.type === 'range') {
          const [mn, mx] = Array.isArray(v) ? v : [v, undefined];
          if (mn !== undefined && mn !== '') params[`attrs.${a.key}_min`] = mn;
          if (mx !== undefined && mx !== '') params[`attrs.${a.key}_max`] = mx;
        } else params[`attrs.${a.key}`] = v;
      }
      const data = await Search.listings(params);
      setResults(data.results || []);
      setTotal(data.total || 0);
      // update URL
      const usp = new URLSearchParams();
      if (q) usp.set('q', q);
      if (minPrice) usp.set('min_price', String(minPrice));
      if (maxPrice) usp.set('max_price', String(maxPrice));
      if (selectedCategory) usp.set('category_slug', selectedCategory.slug);
      if (sort && sort !== 'relevance') usp.set('sort', sort);
      router.replace(`${base}/search?${usp.toString()}`);
    } finally { setLoading(false); }
  };

  useEffect(() => { run(); }, []);
  useEffect(() => { run(); /* refresh on sort change */ }, [sort]);

  const saveSearch = async () => {
    const title = selectedCategoryPath || q || (locale === 'uz' ? 'Qidiruv' : 'Поиск');
    const query = {
      params: {
        q,
        min_price: minPrice,
        max_price: maxPrice,
        ...(selectedCategory ? { category_slug: selectedCategory.slug } : {})
      },
      category_name: selectedCategoryPath,
      location_name: sp.get('location_name') || undefined,
      price_min: minPrice ? Number(minPrice) : undefined,
      price_max: maxPrice ? Number(maxPrice) : undefined,
    };
    try {
      await SavedSearches.create({ title, query });
      alert(locale === 'uz' ? 'Qidiruv saqlandi' : 'Поиск сохранен');
    } catch (e) {
      alert(locale === 'uz' ? 'Xatolik yuz berdi' : 'Ошибка при сохранении');
    }
  };

  function label(ru: string, uz: string) {
    return locale === 'uz' ? uz : ru;
  }

  return (
    <div className="container" style={{ paddingTop: 16, paddingBottom: 32 }}>
      {/* Search Bar */}
      <div className="olx-search-bar">
        <div className="search-input-wrapper">
          <svg className="search-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
          </svg>
          <input
            className="olx-search-input"
            placeholder={label('Я ищу...', 'Men qidiryapman...')}
            value={q}
            onChange={e => setQ(e.target.value)}
            onKeyDown={e => e.key === 'Enter' && run()}
          />
        </div>

        <button
          type="button"
          className="category-select-btn"
          onClick={() => setCatPickerOpen(true)}
        >
          <span className="truncate">
            {selectedCategory ? selectedCategoryPath : label('Все категории', 'Barcha kategoriyalar')}
          </span>
          <svg className="w-4 h-4 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 9l-7 7-7-7" />
          </svg>
        </button>

        <button className="olx-search-btn" onClick={run} disabled={loading}>
          {loading ? (
            <svg className="animate-spin h-5 w-5" fill="none" viewBox="0 0 24 24">
              <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"></circle>
              <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
            </svg>
          ) : (
            label('Искать', 'Qidirish')
          )}
        </button>

        <CategoryPicker
          open={catPickerOpen}
          categories={categoryTree}
          onClose={() => setCatPickerOpen(false)}
          onSelect={({ id, path }) => {
            const slug = flatCategories.find(c => c.id === id)?.slug || '';
            setSelectedCategory({ id, slug });
            setSelectedCategoryPath(path);
            setCatPickerOpen(false);
            setTimeout(() => run(), 0);
          }}
        />
      </div>

      {/* Breadcrumbs */}
      {selectedCategory && (
        <div className="breadcrumbs mb-4">
          <a href={`${base}/search`} className="breadcrumb-link">{label('Главная', 'Bosh sahifa')}</a>
          <svg className="w-4 h-4 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
          </svg>
          <span className="text-gray-700">{selectedCategoryPath}</span>
        </div>
      )}

      <div className="search-layout">
        <aside className="search-filters card">
          <div className="flex items-center justify-between mb-4">
            <h3 className="text-lg font-semibold m-0">{label('Фильтры', 'Filtrlar')}</h3>
            {(selectedCategory || minPrice || maxPrice || Object.keys(attrValues).length > 0) && (
              <button
                onClick={() => {
                  setSelectedCategory(null);
                  setSelectedCategoryPath('');
                  setMinPrice('');
                  setMaxPrice('');
                  setAttrValues({});
                  setTimeout(() => run(), 0);
                }}
                className="text-sm text-[#23E5DB] hover:text-[#1dd4cb]"
              >
                {label('Сбросить', 'Tozalash')}
              </button>
            )}
          </div>
          <div className="filter-group">
            <label className="muted">{locale === 'uz' ? 'Narx' : 'Цена'}</label>
            <div className="row">
              <input placeholder={locale === 'uz' ? 'Dan' : 'От'} value={minPrice} onChange={e => setMinPrice(e.target.value)} />
              <input placeholder={locale === 'uz' ? 'Gacha' : 'До'} value={maxPrice} onChange={e => setMaxPrice(e.target.value)} />
            </div>
          </div>
          {attributes.map(a => (
            <div key={a.id} className="filter-group">
              <label className="muted">{a.label}</label>
              {a.type === 'select' && (
                <select value={attrValues[a.key] || ''} onChange={e => setAttrValues(s => ({ ...s, [a.key]: e.target.value }))}>
                  <option value="">--</option>
                  {(a.options || []).map(o => <option key={o} value={o}>{o}</option>)}
                </select>
              )}
              {a.type === 'multiselect' && (
                <select multiple value={attrValues[a.key] || []} onChange={e => setAttrValues(s => ({ ...s, [a.key]: Array.from(e.target.selectedOptions).map(o => o.value) }))}>
                  {(a.options || []).map(o => <option key={o} value={o}>{o}</option>)}
                </select>
              )}
              {(a.type === 'number' || a.type === 'range') && (
                <div className="row">
                  <input placeholder={locale === 'uz' ? 'Min' : 'Мин'} value={(attrValues[a.key]?.[0] ?? '')} onChange={e => setAttrValues(s => ({ ...s, [a.key]: [e.target.value, s[a.key]?.[1]] }))} />
                  <input placeholder={locale === 'uz' ? 'Max' : 'Макс'} value={(attrValues[a.key]?.[1] ?? '')} onChange={e => setAttrValues(s => ({ ...s, [a.key]: [s[a.key]?.[0], e.target.value] }))} />
                </div>
              )}
              {a.type === 'text' && (
                <input value={attrValues[a.key] || ''} onChange={e => setAttrValues(s => ({ ...s, [a.key]: e.target.value }))} />
              )}
              {a.type === 'boolean' && (
                <label>
                  <input type="checkbox" checked={!!attrValues[a.key]} onChange={e => setAttrValues(s => ({ ...s, [a.key]: e.target.checked }))} />
                </label>
              )}
            </div>
          ))}
          <button className="btn-accent" onClick={run} style={{ width: '100%' }}>{locale === 'uz' ? 'Filtrlarni qo‘llash' : 'Применить фильтры'}</button>
        </aside>

        <section className="search-results">
          <div className="results-bar card" style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between' }}>
            <div className="muted">{loading ? (locale === 'uz' ? 'Yuklanmoqda…' : 'Загрузка…') : `${total} ${locale === 'uz' ? 'e\'lon' : 'объявлений'}`}</div>
            <div className="row" style={{ alignItems: 'center', gap: '12px' }}>
              <label className="muted">{locale === 'uz' ? 'Saralash:' : 'Сортировка:'}</label>
              <Dropdown
                value={sort}
                onChange={(v) => setSort(v)}
                options={[
                  { value: 'relevance', label: locale === 'uz' ? 'Relevanta' : 'По релевантности' },
                  { value: 'newest', label: locale === 'uz' ? 'Yangi' : 'Сначала новые' },
                  { value: 'price_asc', label: locale === 'uz' ? 'Narx o\'s.' : 'Цена: по возрастанию' },
                  { value: 'price_desc', label: locale === 'uz' ? 'Narx kamay.' : 'Цена: по убыванию' },
                ]}
              />
              <button onClick={saveSearch} className="btn-outline" style={{ padding: '8px 16px' }}>
                {locale === 'uz' ? 'Qidiruvni saqlash' : 'Сохранить поиск'}
              </button>
            </div>
          </div>

          {results.length === 0 && !loading ? (
            <div className="card" style={{ padding: 32, textAlign: 'center' }}>
              <div style={{ fontSize: 48, opacity: .2, marginBottom: 8 }}>🔎</div>
              <h3 style={{ margin: 0 }}>{locale === 'uz' ? 'E’lonlar topilmadi' : 'Объявления не найдены'}</h3>
              <p className="muted">{locale === 'uz' ? 'Qidiruv parametrlarini o‘zgartiring.' : 'Попробуйте изменить параметры поиска.'}</p>
            </div>
          ) : (
            <div className="grid">
              {results.map((r) => (
                <ProductCard key={r.id} hit={r as any} href={`${base}/l/${r.id}`} locale={locale} />
              ))}
            </div>
          )}
        </section>
      </div>
    </div>
  );
}
