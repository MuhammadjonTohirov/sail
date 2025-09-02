"use client";
import { Search, Taxonomy } from '@/lib/api';
import { useEffect, useMemo, useState } from 'react';
import Link from 'next/link';
import { useI18n } from '@/lib/i18n';
import { useRouter, useSearchParams } from 'next/navigation';

type Hit = { id: string; title: string; price?: number; currency?: string; media_urls?: string[] };
type CategoryNode = { id: number; name: string; slug: string; is_leaf: boolean; children: CategoryNode[] };
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
  const [attributes, setAttributes] = useState<Attr[]>([]);
  const [attrValues, setAttrValues] = useState<Record<string, any>>({});
  const [results, setResults] = useState<Hit[]>([]);
  const [total, setTotal] = useState(0);
  const [loading, setLoading] = useState(false);

  useEffect(() => { (async () => { setCategoryTree(await Taxonomy.categories()); })(); }, []);
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

  const saveSearch = async () => {
    const payload = { title: q || 'Search', query: { params: { q, min_price: minPrice, max_price: maxPrice, ...(selectedCategory ? { category_slug: selectedCategory.slug } : {}) } } };
    try {
      await fetch(`${process.env.NEXT_PUBLIC_API_BASE_URL}/api/v1/saved-searches`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json', ...(localStorage.getItem('access_token') ? { Authorization: `Bearer ${localStorage.getItem('access_token')}` } : {}) },
        body: JSON.stringify(payload)
      }).then(r => { if (!r.ok) throw new Error('Failed'); });
      alert('Saved');
    } catch (e) { alert('Save failed'); }
  };

  return (
    <div>
      <div className="search-top">
        <input className="search-top__input" placeholder={t('searchTitle')} value={q} onChange={e => setQ(e.target.value)} onKeyDown={e => e.key === 'Enter' && run()} />
        <select className="search-top__select" value={selectedCategory?.id || ''} onChange={e => {
          const id = Number(e.target.value);
          const slug = flatCategories.find(c => c.id === id)?.slug || '';
          if (id) setSelectedCategory({ id, slug }); else setSelectedCategory(null);
        }}>
          <option value="">— {t('navSearch')} —</option>
          {flatCategories.map(c => <option key={c.id} value={c.id}>{c.name}</option>)}
        </select>
        <button className="btn-accent" onClick={run}>🔍</button>
        <a className="btn-outline" href={`${base}/post`}>{t('postTitle')}</a>
      </div>

      <div className="search-layout">
        <aside className="search-filters card">
          <h3 style={{ marginTop: 0 }}>{locale === 'uz' ? 'Filtrlar' : 'Фильтры'}</h3>
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
            <div className="muted">{loading ? (locale === 'uz' ? 'Yuklanmoqda…' : 'Загрузка…') : `${total} ${locale === 'uz' ? 'e‘lon' : 'объявлений'}`}</div>
            <div className="row" style={{ alignItems: 'center' }}>
              <label className="muted">{locale === 'uz' ? 'Saralash:' : 'Сортировка:'}</label>
              <select value={sort} onChange={(e) => setSort(e.target.value)}>
                <option value="relevance">{locale === 'uz' ? 'Relevanta' : 'По релевантности'}</option>
                <option value="newest">{locale === 'uz' ? 'Yangi' : 'Сначала новые'}</option>
                <option value="price_asc">{locale === 'uz' ? 'Narx o‘s.' : 'Цена: по возрастанию'}</option>
                <option value="price_desc">{locale === 'uz' ? 'Narx kamay.' : 'Цена: по убыванию'}</option>
              </select>
              <button className="btn-outline" onClick={saveSearch}>{locale === 'uz' ? 'Qidiruvni saqlash' : 'Сохранить поиск'}</button>
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
                <div key={r.id} className="card">
                  {r.media_urls?.[0] && (<img src={r.media_urls[0]} alt="" style={{ width: '100%', height: 160, objectFit: 'cover', borderRadius: 6 }} />)}
                  <h3 style={{ margin: '8px 0' }}>{r.title}</h3>
                  {r.price !== undefined && (<p><strong>{r.price}</strong> {r.currency}</p>)}
                  <Link href={`${base}/l/${r.id}`}>{locale === 'uz' ? 'Ochish' : 'Открыть'}</Link>
                </div>
              ))}
            </div>
          )}
        </section>
      </div>
    </div>
  );
}
