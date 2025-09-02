"use client";
import { Listings, Taxonomy } from '@/lib/api';
import { useEffect, useMemo, useState } from 'react';
import { useRouter } from 'next/navigation';
import { useI18n } from '@/lib/i18n';
import Dropdown from '@/components/ui/Dropdown';
import MultiDropdown from '@/components/ui/MultiDropdown';

type CategoryNode = { id: number; name: string; slug: string; is_leaf: boolean; children: CategoryNode[] };
type Attr = { id: number; key: string; label: string; type: string; unit?: string; options?: string[]; is_required?: boolean; min_number?: number; max_number?: number };
type Loc = { id: number; name: string; has_children?: boolean; parent?: number | null };

export default function PostPage() {
  const { locale } = useI18n();
  const base = locale === 'uz' ? '/uz' : '';
  const router = useRouter();

  const [cats, setCats] = useState<CategoryNode[]>([]);
  const [selectedCat, setSelectedCat] = useState<number | null>(null);
  const [attrs, setAttrs] = useState<Attr[]>([]);

  const [roots, setRoots] = useState<Loc[]>([]);
  const [children, setChildren] = useState<Loc[]>([]);
  const [rootLoc, setRootLoc] = useState<number | null>(null);
  const [locationId, setLocationId] = useState<number | null>(null);

  const [title, setTitle] = useState('');
  const [price, setPrice] = useState('');
  const [desc, setDesc] = useState('');
  const [values, setValues] = useState<Record<string, any>>({});
  const [files, setFiles] = useState<File[]>([]);
  const [uploading, setUploading] = useState<boolean>(false);
  const [error, setError] = useState<string>('');

  useEffect(() => { (async () => { setCats(await Taxonomy.categories()); const r = await Taxonomy.locations(); setRoots(r); })(); }, []);
  useEffect(() => { (async () => { if (selectedCat) setAttrs(await Taxonomy.attributes(selectedCat)); else setAttrs([]); })(); }, [selectedCat]);
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
    setError('');
    setUploading(true);
    try {
      const attributes = attrs
        .filter(a => values[a.key] !== undefined && values[a.key] !== '')
        .map(a => ({ attribute: a.id, value: values[a.key] }));
      const payload = {
        title,
        description: desc,
        price_amount: price || '0',
        price_currency: 'UZS',
        condition: 'used',
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
            <Dropdown
              value={selectedCat ? String(selectedCat) : ''}
              onChange={(v) => setSelectedCat(v ? Number(v) : null)}
              options={[{ value: '', label: label('Выберите категорию', 'Kategoriyani tanlang') }, ...flatCategories.map(c => ({ value: String(c.id), label: c.name }))]}
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

        {selectedCat && attrs.length > 0 && (
          <div className="form-card">
            <h3>{label('Характеристики', 'Xususiyatlar')}</h3>
            {attrs.map(a => (
              <div key={a.id} className="field">
                <label>{a.label}{a.is_required ? ' *' : ''}</label>
                {a.type === 'select' && (
                  <Dropdown
                    value={values[a.key] || ''}
                    onChange={(v) => setValues(s => ({ ...s, [a.key]: v }))}
                    options={[{ value: '', label: '--' }, ...(a.options || []).map(o => ({ value: String(o), label: String(o) }))]}
                  />
                )}
                {a.type === 'multiselect' && (
                  <MultiDropdown
                    value={values[a.key] || []}
                    onChange={(v) => setValues(s => ({ ...s, [a.key]: v }))}
                    options={(a.options || []).map(o => ({ value: String(o), label: String(o) }))}
                  />
                )}
                {(a.type === 'number' || a.type === 'range') && (
                  <input type="number" value={values[a.key] ?? ''} min={a.min_number ?? undefined} max={a.max_number ?? undefined} onChange={e => setValues(s => ({ ...s, [a.key]: e.target.value }))} />
                )}
                {a.type === 'boolean' && (
                  <label><input type="checkbox" checked={!!values[a.key]} onChange={e => setValues(s => ({ ...s, [a.key]: e.target.checked }))} /> {label('Да', 'Ha')}</label>
                )}
                {a.type === 'text' && (
                  <input value={values[a.key] ?? ''} onChange={e => setValues(s => ({ ...s, [a.key]: e.target.value }))} />
                )}
              </div>
            ))}
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
          <button className="btn-accent" onClick={onSubmit} disabled={uploading || !selectedCat || !locationId || !title}>
            {uploading ? label('Сохраняем…', 'Saqlanmoqda…') : label('Опубликовать', 'E’lon berish')}
          </button>
          {error && <span className="muted" style={{ marginLeft: 12 }}>{error}</span>}
        </div>
      </div>
    </div>
  );
}
