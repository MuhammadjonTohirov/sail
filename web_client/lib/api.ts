const API_BASE = process.env.NEXT_PUBLIC_API_BASE_URL || 'http://94.158.51.9:8080';

function currentLocale(): 'ru' | 'uz' {
  if (typeof window === 'undefined') return 'ru';
  const path = window.location.pathname || '/';
  return path.startsWith('/uz') ? 'uz' : 'ru';
}

function getToken(): string | null {
  if (typeof window === 'undefined') return null;
  return localStorage.getItem('access_token');
}

export async function apiFetch(path: string, opts: RequestInit = {}, isJson = true) {
  const headers: Record<string, string> = {
    ...(isJson ? { 'Content-Type': 'application/json' } : {}),
    ...(opts.headers as Record<string, string> | undefined),
  };
  const token = getToken();
  if (token) headers['Authorization'] = `Bearer ${token}`;
  const res = await fetch(`${API_BASE}${path}`, { ...opts, headers, credentials: 'omit' });
  if (!res.ok) {
    let detail = '';
    try { const j = await res.json(); detail = j.detail || JSON.stringify(j); } catch {}
    throw new Error(`API ${res.status}: ${detail || res.statusText}`);
  }
  if (!isJson) return res;
  return res.json();
}

export const Auth = {
  requestOtp: (phone: string) => apiFetch('/api/v1/auth/otp/request', { method: 'POST', body: JSON.stringify({ phone }) }),
  verifyOtp: async (phone: string, code: string) => {
    const data = await apiFetch('/api/v1/auth/otp/verify', { method: 'POST', body: JSON.stringify({ phone, code }) });
    if (typeof window !== 'undefined') {
      localStorage.setItem('access_token', data.access);
      localStorage.setItem('refresh_token', data.refresh);
      localStorage.setItem('profile', JSON.stringify(data.profile));
      try { window.dispatchEvent(new Event('auth-changed')); } catch {}
    }
    return data;
  },
  me: () => apiFetch('/api/v1/me'),
  logout: () => { if (typeof window !== 'undefined') { localStorage.removeItem('access_token'); localStorage.removeItem('refresh_token'); localStorage.removeItem('profile'); try { window.dispatchEvent(new Event('auth-changed')); } catch {} } },
};

export const Taxonomy = {
  categories: () => apiFetch(`/api/v1/categories?lang=${currentLocale()}`),
  attributes: (id: number) => apiFetch(`/api/v1/categories/${id}/attributes?lang=${currentLocale()}`),
  locations: (parent_id?: number) => {
    const qp = new URLSearchParams();
    qp.set('lang', currentLocale());
    if (parent_id !== undefined) qp.set('parent_id', String(parent_id));
    return apiFetch(`/api/v1/locations?${qp.toString()}`);
  },
};

export type ListingPayload = {
  title: string;
  description?: string;
  price_amount: string | number;
  price_currency: string;
  condition: string;
  category: number;
  location: number;
  lat?: number;
  lon?: number;
  attributes?: { attribute: number; value: unknown }[];
};

export const Listings = {
  create: (payload: ListingPayload) => apiFetch('/api/v1/listings', { method: 'POST', body: JSON.stringify(payload) }),
  detail: (id: number) => apiFetch(`/api/v1/listings/${id}`),
  mine: () => apiFetch('/api/v1/my/listings'),
  update: (id: number, payload: Partial<ListingPayload>) => apiFetch(`/api/v1/listings/${id}/edit`, { method: 'PATCH', body: JSON.stringify(payload) }),
  refresh: (id: number) => apiFetch(`/api/v1/listings/${id}/refresh`, { method: 'POST' }),
  uploadMedia: async (id: number, file: File) => {
    const token = getToken();
    const form = new FormData();
    form.append('file', file);
    const res = await fetch(`${API_BASE}/api/v1/listings/${id}/media`, {
      method: 'POST', body: form, headers: token ? { Authorization: `Bearer ${token}` } : undefined,
    });
    if (!res.ok) throw new Error(`Upload failed: ${res.status}`);
    return res.json();
  },
};

export const Search = {
  listings: (params: Record<string, any>) => {
    const usp = new URLSearchParams();
    Object.entries(params).forEach(([k, v]) => {
      if (v === undefined || v === null || v === '') return;
      if (Array.isArray(v)) {
        v.forEach((item) => usp.append(k, String(item)));
      } else {
        usp.set(k, String(v));
      }
    });
    return apiFetch(`/api/v1/search/listings?${usp.toString()}`);
  },
};
