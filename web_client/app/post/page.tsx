"use client";
import { Listings, Taxonomy } from '@/lib/api';
import { useEffect, useMemo, useState } from 'react';
import { useRouter } from 'next/navigation';
import { useI18n } from '@/lib/i18n';
import Dropdown from '@/components/ui/Dropdown';
import CategoryPicker from '@/components/ui/CategoryPicker';
import MultiDropdown from '@/components/ui/MultiDropdown';
import AttributesForm from '@/components/listing/AttributesForm';

type CategoryNode = { id: number; name: string; slug: string; is_leaf: boolean; icon?: string; children: CategoryNode[] };
type Attr = { id: number; key: string; label: string; type: string; unit?: string; options?: string[]; is_required?: boolean; min_number?: number; max_number?: number };
type Loc = { id: number; name: string; has_children?: boolean; parent?: number | null };

export default function PostPage() {
  const { locale } = useI18n();
  const base = locale === 'uz' ? '/uz' : '';
  const router = useRouter();

  const [cats, setCats] = useState<CategoryNode[]>([]);
  const [selectedCat, setSelectedCat] = useState<number | null>(null);
  const [selectedCatPath, setSelectedCatPath] = useState<string>('');
  const [catPickerOpen, setCatPickerOpen] = useState(false);
  const [attrs, setAttrs] = useState<Attr[]>([]);

  const [roots, setRoots] = useState<Loc[]>([]);
  const [children, setChildren] = useState<Loc[]>([]);
  const [rootLoc, setRootLoc] = useState<number | null>(null);
  const [locationId, setLocationId] = useState<number | null>(null);

  const [title, setTitle] = useState('');
  const [price, setPrice] = useState('');
  const [priceCurrency, setPriceCurrency] = useState<'UZS' | 'USD'>('UZS');
  const [negotiable, setNegotiable] = useState<boolean>(false);
  const [dealType, setDealType] = useState<'sell' | 'exchange' | 'free'>('sell');
  const [sellerType, setSellerType] = useState<'person' | 'business'>('person');
  const [condition, setCondition] = useState<'new' | 'used'>('used');
  const [desc, setDesc] = useState('');
  const [values, setValues] = useState<Record<string, any>>({});
  const [files, setFiles] = useState<File[]>([]);
  const [uploading, setUploading] = useState<boolean>(false);
  const [error, setError] = useState<string>('');

  useEffect(() => { (async () => { setCats(await Taxonomy.categories()); const r = await Taxonomy.locations(); setRoots(r); })(); }, []);
  useEffect(() => { (async () => { if (selectedCat) setAttrs(await Taxonomy.attributes(selectedCat)); else setAttrs([]); })(); }, [selectedCat]);
  // Prune attribute values when the attributes set changes (category switch)
  useEffect(() => {
    const keys = new Set(attrs.map(a => a.key));
    setValues(prev => {
      const out: Record<string, any> = {};
      for (const k of Object.keys(prev)) if (keys.has(k)) out[k] = prev[k];
      return out;
    });
  }, [attrs]);
  useEffect(() => { (async () => { if (rootLoc) { const ch = await Taxonomy.locations(rootLoc); setChildren(ch); } else { setChildren([]); setLocationId(null);} })(); }, [rootLoc]);

  const flatCategories = useMemo(() => {
    const arr: { id: number; slug: string; name: string }[] = [];
    const walk = (nodes: CategoryNode[], prefix: string[]) => {
      nodes.forEach(n => {
        arr.push({ id: n.id, slug: n.slug, name: [...prefix, n.name].join(' / ') });
        if (n.children?.length) walk(n.children, [...prefix, n.name]);
      });
    };
    walk(cats, []);
    return arr;
  }, [cats]);

  const onPickFiles = (e: React.ChangeEvent<HTMLInputElement>) => {
    const list = Array.from(e.target.files || []).slice(0, 12 - files.length);
    if (list.length) setFiles(prev => [...prev, ...list]);
    e.currentTarget.value = '';
  };
  const removeFile = (idx: number) => setFiles(prev => prev.filter((_, i) => i !== idx));

  const onSubmit = async () => {
    if (!selectedCat || !locationId || !title) { setError(locale === 'uz' ? 'Majburiy maydonlar to‘ldirilmagan' : 'Заполните обязательные поля'); return; }
    // Client-side required attributes validation
    const missing: string[] = [];
    for (const a of attrs) {
      if (!a.is_required) continue;
      const v = values[a.key];
      if (a.type === 'multiselect') {
        if (!Array.isArray(v) || v.length === 0) missing.push(a.label);
      } else if (a.type === 'number' || a.type === 'range') {
        if (v === undefined || v === '' || isNaN(Number(v))) missing.push(a.label);
      } else if (a.type === 'boolean') {
        if (v === undefined) missing.push(a.label);
      } else if (v === undefined || String(v) === '') missing.push(a.label);
    }
    if (missing.length) {
      setError((locale==='uz' ? 'Majburiy xususiyatlar yo‘q: ' : 'Отсутствуют обязательные характеристики: ') + missing.join(', '));
      return;
    }
    setError('');
    setUploading(true);
    try {
      const attributes = attrs
        .filter(a => values[a.key] !== undefined && values[a.key] !== '')
        .map(a => {
          let v = values[a.key];
          if (a.type === 'number' || a.type === 'range') {
            const num = typeof v === 'number' ? v : Number(v);
            return { attribute: a.id, value: num };
          }
          return { attribute: a.id, value: v };
        });
      const payload = {
        title,
        description: desc,
        price_amount: dealType === 'sell' && !negotiable ? (price || '0') : '0',
        price_currency: priceCurrency,
        is_price_negotiable: dealType === 'sell' ? negotiable : false,
        condition,
        deal_type: dealType,
        seller_type: sellerType,
        category: selectedCat,
        location: locationId,
        attributes,
      };
      const created = await Listings.create(payload);
      const id = created.id || created.pk || created?.data?.id;
      for (const f of files) {
        try { await Listings.uploadMedia(Number(id), f); } catch {}
      }
      router.push(`${base}/u/listings`);
    } catch (e: any) { setError(e.message); } finally { setUploading(false); }
  };

  const label = (ru: string, uz: string) => (locale === 'uz' ? uz : ru);

  return (
    <div>
      <h2>{label('Создать объявление', 'E’lon yaratish')}</h2>
      <div className="form-section">
        <div className="form-card">
          <h3>{label('Опишите в подробностях', 'Batafsil yozing')}</h3>
          <div className="field">
            <label>{label('Укажите название*', 'Sarlavha*')}</label>
            <input value={title} onChange={e => setTitle(e.target.value.slice(0,70))} placeholder={label('Например, iPhone 11 с гарантией', 'Masalan, kafolatli iPhone 11')} />
            <div className="muted" style={{ textAlign: 'right' }}>{title.length}/70</div>
          </div>
          <div className="field">
            <label>{label('Категория*', 'Kategoriya*')}</label>
            <div className="row">
              <button type="button" className="btn-outline" onClick={() => setCatPickerOpen(true)}>
                {selectedCat ? selectedCatPath || label('Изменить', 'O‘zgartirish') : label('Выберите категорию', 'Kategoriyani tanlang')}
              </button>
            </div>
            <CategoryPicker
              open={catPickerOpen}
              categories={cats}
              onClose={() => setCatPickerOpen(false)}
              onSelect={({ id, path }) => { setSelectedCat(id); setSelectedCatPath(path); }}
            />
          </div>
        </div>

        <div className="form-card">
          <h3>{label('Фото', 'Rasmlar')}</h3>
          <p className="muted" style={{ marginTop: -8 }}>{label('Первое фото будет на обложке. Перетаскивайте, чтобы изменить порядок.', 'Birinchi rasm muqovada bo‘ladi. Tartibni o‘zgartirish uchun sudrab o‘tkazing.')}</p>
          <div className="photo-grid">
            <label className="photo-tile add">
              <input type="file" accept="image/*" multiple onChange={onPickFiles} style={{ display: 'none' }} />
              <span>{label('Добавить фото', 'Rasm qo‘shish')}</span>
            </label>
            {files.map((f, idx) => (
              <div key={idx} className="photo-tile">
                <img src={URL.createObjectURL(f)} alt="" />
                <button type="button" className="photo-remove" onClick={() => removeFile(idx)}>×</button>
              </div>
            ))}
            {Array.from({ length: Math.max(0, 8 - files.length) }).map((_, i) => (
              <div key={`ph-${i}`} className="photo-tile placeholder">📷</div>
            ))}
          </div>
        </div>

        <div className="form-card">
          <div className="field">
            <label>{label('Описание*', 'Ta’rif*')}</label>
            <textarea rows={6} value={desc} onChange={e => setDesc(e.target.value.slice(0,9000))} placeholder={label('Добавьте детали, которые помогут покупателям.', 'Xaridorga yordam beradigan tafsilotlarni yozing.')}></textarea>
            <div className="muted" style={{ textAlign: 'right' }}>{desc.length}/9000</div>
          </div>
        </div>

        <div className="form-card">
          <div className="row" style={{ gap: 8 }}>
            {([
              { key: 'sell', label: label('Продать', 'Sotish') },
              { key: 'exchange', label: label('Обмен', 'Almashish') },
              { key: 'free', label: label('Бесплатно', 'Bepul') },
            ] as const).map(opt => (
              <button key={opt.key} type="button" className="btn-outline" onClick={() => setDealType(opt.key)} style={{ background: dealType === opt.key ? '#e9f8f7' : '#fff' }}>
                {opt.label}
              </button>
            ))}
          </div>
          {dealType === 'sell' && (
            <div style={{ marginTop: 12 }}>
              <div className="row">
                <div className="field" style={{ flex: 1 }}>
                  <label>{label('Цена*', 'Narx*')}</label>
                  <input type="number" value={price} onChange={e => setPrice(e.target.value)} disabled={negotiable} />
                </div>
                <div className="field" style={{ width: 140 }}>
                  <label>{label('Валюта', 'Valyuta')}</label>
                  <Dropdown
                    value={priceCurrency}
                    onChange={(v) => setPriceCurrency((v as 'UZS' | 'USD') || 'UZS')}
                    options={[{ value: 'UZS', label: 'UZS' }, { value: 'USD', label: 'USD' }]}
                  />
                </div>
              </div>
              <div className="row" style={{ alignItems: 'center' }}>
                <label className="muted">{label('Договорная', 'Kelishilgan')}</label>
                <input type="checkbox" checked={negotiable} onChange={e => setNegotiable(e.target.checked)} />
              </div>
            </div>
          )}
        </div>

        <div className="form-card">
          <h3>{label('Дополнительная информация', 'Qo‘shimcha ma’lumot')}</h3>
          <div className="field">
            <label>{label('Частный или бизнес*', 'Jismoniy yoki biznes*')}</label>
            <div className="row" style={{ gap: 8 }}>
              <button type="button" className="btn-outline" onClick={() => setSellerType('person')} style={{ background: sellerType === 'person' ? '#e9f8f7' : '#fff' }}>{label('Частное лицо', 'Jismoniy shaxs')}</button>
              <button type="button" className="btn-outline" onClick={() => setSellerType('business')} style={{ background: sellerType === 'business' ? '#e9f8f7' : '#fff' }}>{label('Бизнес', 'Biznes')}</button>
            </div>
          </div>
          <div className="field">
            <label>{label('Состояние*', 'Holati*')}</label>
            <div className="row" style={{ gap: 8 }}>
              <button type="button" className="btn-outline" onClick={() => setCondition('used')} style={{ background: condition === 'used' ? '#e9f8f7' : '#fff' }}>{label('Б/у', 'B/u')}</button>
              <button type="button" className="btn-outline" onClick={() => setCondition('new')} style={{ background: condition === 'new' ? '#e9f8f7' : '#fff' }}>{label('Новый', 'Yangi')}</button>
            </div>
          </div>
        </div>

        {selectedCat && attrs.length > 0 && (
          <div className="form-card">
            <h3>{label('Характеристики', 'Xususiyatlar')}</h3>
            <AttributesForm attrs={attrs as any} values={values} onChange={(k, v) => setValues(s => ({ ...s, [k]: v }))} locale={locale} />
          </div>
        )}

        <div className="form-card">
          <h3>{label('Местоположение', 'Manzil')}</h3>
          <div className="row">
            <div className="field" style={{ flex: 1 }}>
              <label>{label('Регион', 'Viloyat')}</label>
              <Dropdown
                value={rootLoc ? String(rootLoc) : ''}
                onChange={(v) => setRootLoc(v ? Number(v) : null)}
                options={[{ value: '', label: '--' }, ...roots.map(r => ({ value: String(r.id), label: r.name }))]}
              />
            </div>
            <div className="field" style={{ flex: 1 }}>
              <label>{label('Город/район', 'Shahar/tuman')}</label>
              <Dropdown
                value={locationId ? String(locationId) : ''}
                onChange={(v) => setLocationId(v ? Number(v) : null)}
                options={[{ value: '', label: '--' }, ...children.map(c => ({ value: String(c.id), label: c.name }))]}
              />
            </div>
          </div>
        </div>

        <div className="form-actions">
          <button className="btn-accent" onClick={onSubmit} disabled={uploading || !selectedCat || !locationId || !title || (dealType === 'sell' && !negotiable && !price)}>
            {uploading ? label('Сохраняем…', 'Saqlanmoqda…') : label('Опубликовать', 'E’lon berish')}
          </button>
          {error && <span className="muted" style={{ marginLeft: 12 }}>{error}</span>}
        </div>
      </div>
    </div>
  );
}
