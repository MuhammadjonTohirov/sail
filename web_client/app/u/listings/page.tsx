"use client";
import { Listings } from '@/lib/api';
import { useEffect, useState } from 'react';
import { useI18n } from '@/lib/i18n';

export default function MyListings() {
  const { t } = useI18n();
  const [items, setItems] = useState<any[]>([]);
  const [error, setError] = useState<string>('');

  const load = async () => {
    try { const data = await Listings.mine(); setItems(data); } catch (e: any) { setError(e.message); }
  };
  useEffect(() => { load(); }, []);

  const bump = async (id: number) => { await Listings.refresh(id); await load(); };
  const upload = async (id: number, file?: File | null) => {
    if (!file) return; await Listings.uploadMedia(id, file); await load();
  };

  if (error) return <p>{error}</p>;
  return (
    <div>
      <h2>{t('myListingsTitle')}</h2>
      {items.length === 0 && <p className="muted">No listings yet.</p>}
      <div className="grid">
        {items.map((l) => (
          <div className="card" key={l.id}>
            <h3>{l.title}</h3>
            <p className="muted">{l.price_amount} {l.price_currency}</p>
            <div className="row">
              <button onClick={() => bump(l.id)}>Bump</button>
              <label>
                <input type="file" onChange={e => upload(l.id, e.target.files?.[0])} /> Upload photo
              </label>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}
