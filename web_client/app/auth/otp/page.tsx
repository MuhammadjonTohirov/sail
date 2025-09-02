"use client";
import { Auth } from '@/lib/api';
import { useState } from 'react';
import { useRouter } from 'next/navigation';
import { useI18n } from '@/lib/i18n';

export default function OTPPage() {
  const { t } = useI18n();
  const [phone, setPhone] = useState('+998');
  const [code, setCode] = useState('');
  const [sent, setSent] = useState<{ status?: string; debug_code?: string } | null>(null);
  const [error, setError] = useState<string>('');
  const router = useRouter();

  const request = async () => {
    setError('');
    try { const r = await Auth.requestOtp(phone); setSent(r); } catch (e: any) { setError(e.message); }
  };
  const verify = async () => {
    setError('');
    try { await Auth.verifyOtp(phone, code); router.push('/u/listings'); } catch (e: any) { setError(e.message); }
  };

  return (
    <div>
      <h2>{t('loginOtp')}</h2>
      <div className="row" style={{ marginBottom: 8 }}>
        <input value={phone} onChange={e => setPhone(e.target.value)} placeholder="Phone E.164" />
        <button onClick={request}>Request code</button>
      </div>
      {sent?.debug_code && <p className="muted">Debug code: {sent.debug_code}</p>}
      <div className="row">
        <input value={code} onChange={e => setCode(e.target.value)} placeholder="Code" />
        <button onClick={verify}>Verify</button>
      </div>
      {error && <p className="muted">{error}</p>}
    </div>
  );
}
