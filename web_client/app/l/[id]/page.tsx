"use client";
import { Listings } from '@/lib/api';
import { useEffect, useState } from 'react';
import { useI18n } from '@/lib/i18n';

export default function ListingDetail({ params }: { params: { id: string } }) {
  const { t } = useI18n();
  const id = Number(params.id);
  const [data, setData] = useState<any>(null);
  const [error, setError] = useState<string>('');
  const [reportReason, setReportReason] = useState('');
  const [reportMsg, setReportMsg] = useState('');

  useEffect(() => {
    (async () => {
      try { setData(await Listings.detail(id)); } catch (e: any) { setError(e.message); }
    })();
  }, [id]);

  if (error) return <p>{error}</p>;
  if (!data) return <p>Loading…</p>;

  return (
    <div>
      <h2>{data.title}</h2>
      <p className="muted">{data.price_amount} {data.price_currency}</p>
      <div className="row" style={{ overflowX: 'auto' }}>
        {(data.media || []).map((m: any) => (
          <img key={m.id} src={m.image_url} alt="" style={{ width: 200, height: 200, objectFit: 'cover', borderRadius: 6 }} />
        ))}
      </div>
      <p>{data.description}</p>
      <h3>Attributes</h3>
      <ul>
        {(data.attributes || []).map((a: any) => (
          <li key={a.attribute}><strong>{a.label}:</strong> {Array.isArray(a.value) ? a.value.join(', ') : String(a.value)}</li>
        ))}
      </ul>
      <div className="card" style={{ marginTop: 12 }}>
        <h4>{t('reportListing')}</h4>
        <input placeholder="Reason code (e.g., spam)" value={reportReason} onChange={e => setReportReason(e.target.value)} />
        <button onClick={async () => {
          try {
            const token = localStorage.getItem('access_token') || '';
            const res = await fetch(`${process.env.NEXT_PUBLIC_API_BASE_URL}/api/v1/reports`, {
              method: 'POST', headers: { 'Content-Type': 'application/json', ...(token ? { Authorization: `Bearer ${token}` } : {}) },
              body: JSON.stringify({ listing: id, reason_code: reportReason, notes: '' })
            });
            if (!res.ok) throw new Error('Failed');
            setReportMsg('Reported. Thank you.');
          } catch { setReportMsg('Report failed'); }
        }}>Report</button>
        {reportMsg && <p className="muted">{reportMsg}</p>}
      </div>
    </div>
  );
}
