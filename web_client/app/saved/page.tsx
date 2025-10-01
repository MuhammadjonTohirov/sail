"use client";
import { useEffect, useState } from 'react';
import { apiFetch } from '@/lib/api';

type Saved = { id: number; title: string; query: any; is_active: boolean; created_at: string };

export default function SavedPage() {
  const [items, setItems] = useState<Saved[]>([]);
  const [error, setError] = useState('');

  const load = async () => {
    try {
      const res = await apiFetch('/api/v1/saved-searches');
      setItems(res);
    } catch (e: any) { setError(e.message); }
  };
  useEffect(() => { load(); }, []);

  const toggle = async (id: number, isActive: boolean) => {
    await apiFetch(`/api/v1/saved-searches/${id}`, { method: 'PATCH', body: JSON.stringify({ is_active: !isActive }) });
    await load();
  };
  const del = async (id: number) => {
    await apiFetch(`/api/v1/saved-searches/${id}`, { method: 'DELETE' });
    await load();
  };

  if (error) return <p>{error}</p>;
  return (
    <div>
      <h2>Saved Searches</h2>
      {items.length === 0 && <p className="muted">No saved searches</p>}
      <ul>
        {items.map(s => (
          <li key={s.id} className="row" style={{ alignItems: 'center' }}>
            <div style={{ flex: 1 }}>
              <strong>{s.title}</strong> <span className="muted">({s.is_active ? 'active' : 'inactive'})</span>
            </div>
            <button onClick={() => toggle(s.id, s.is_active)}>{s.is_active ? 'Deactivate' : 'Activate'}</button>
            <button onClick={() => del(s.id)}>Delete</button>
          </li>
        ))}
      </ul>
    </div>
  );
}
