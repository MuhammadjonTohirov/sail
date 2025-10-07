import { appConfig } from '@/config';

const API_BASE = (appConfig.api.baseUrl || '').replace(/\/$/, '');
const API_TIMEOUT = appConfig.api.timeout;
const SUPPORTED_LOCALES = new Set(appConfig.i18n.locales);
type SupportedLocale = typeof appConfig.i18n.locales[number];

function currentLocale(): SupportedLocale {
  if (typeof window === 'undefined') return appConfig.i18n.defaultLocale;
  const path = window.location.pathname || '/';
  const first = path.split('/').filter(Boolean)[0];
  if (first && SUPPORTED_LOCALES.has(first as SupportedLocale)) {
    return first as SupportedLocale;
  }
  return appConfig.i18n.defaultLocale;
}

function getToken(): string | null {
  if (typeof window === 'undefined') return null;
  return localStorage.getItem('access_token');
}

function getRefreshToken(): string | null {
  if (typeof window === 'undefined') return null;
  return localStorage.getItem('refresh_token');
}

function clearAuth() {
  if (typeof window === 'undefined') return;
  localStorage.removeItem('access_token');
  localStorage.removeItem('refresh_token');
  localStorage.removeItem('profile');
  try { window.dispatchEvent(new Event('auth-changed')); } catch {}
}

let refreshInFlight: Promise<string | null> | null = null;

async function refreshAccessToken(): Promise<string | null> {
  if (typeof window === 'undefined') return null;
  if (refreshInFlight) return refreshInFlight;
  const refresh = getRefreshToken();
  if (!refresh) return null;
  refreshInFlight = (async () => {
    try {
      const res = await fetch(`${API_BASE}/api/v1/auth/refresh`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ refresh }),
      });
      if (!res.ok) return null;
      const data = await res.json();
      if (data?.access) {
        localStorage.setItem('access_token', data.access);
        try { window.dispatchEvent(new Event('auth-changed')); } catch {}
        return data.access as string;
      }
      return null;
    } catch {
      return null;
    } finally {
      refreshInFlight = null;
    }
  })();
  return refreshInFlight;
}

export async function apiFetch(path: string, opts: RequestInit = {}, isJson = true) {
  const doFetch = async () => {
    const controller = typeof AbortController !== 'undefined' ? new AbortController() : null;
    const timeoutId = API_TIMEOUT ? setTimeout(() => controller?.abort(), API_TIMEOUT) : undefined;
    const headers: Record<string, string> = {
      ...(isJson ? { 'Content-Type': 'application/json' } : {}),
      ...(opts.headers as Record<string, string> | undefined),
    };
    const token = getToken();
    if (token) headers['Authorization'] = `Bearer ${token}`;
    try {
      return await fetch(`${API_BASE}${path}`, {
        ...opts,
        headers,
        credentials: 'omit',
        signal: opts.signal ?? controller?.signal,
      });
    } finally {
      if (timeoutId) clearTimeout(timeoutId);
    }
  };

  let res = await doFetch();
  if (res.status === 401) {
    const newToken = await refreshAccessToken();
    if (newToken) {
      res = await doFetch();
    } else {
      clearAuth();
      // Swallow noisy backend messages; present a concise error
      throw new Error('Please sign in again');
    }
  }
  if (!res.ok) {
    let detail = '';
    try { const j = await res.json(); detail = j.detail || JSON.stringify(j); } catch {}
    // Avoid surfacing verbose JWT errors
    if (res.status === 401) detail = 'Unauthorized';
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
  is_price_negotiable?: boolean;
  condition: string;
  deal_type?: 'sell' | 'exchange' | 'free';
  seller_type?: 'person' | 'business';
  category: number;
  location: number;
  lat?: number;
  lon?: number;
  attributes?: { attribute: number; value: unknown }[];
};

export const Listings = {
  create: (payload: ListingPayload) => apiFetch('/api/v1/listings/raw', { method: 'POST', body: JSON.stringify(payload) }),
  detail: (id: number) => apiFetch(`/api/v1/listings/${id}`),
  mine: () => apiFetch('/api/v1/my/listings'),
  update: (id: number, payload: Partial<ListingPayload>) => apiFetch(`/api/v1/listings/${id}/edit`, { method: 'PATCH', body: JSON.stringify(payload) }),
  refresh: (id: number) => apiFetch(`/api/v1/listings/${id}/refresh`, { method: 'POST' }),
  uploadMedia: async (id: number, file: File) => {
    const form = new FormData();
    form.append('file', file);
    const res = await apiFetch(`/api/v1/listings/${id}/media`, { method: 'POST', body: form }, false);
    return res.json();
  },
};

export const Search = {
  listings: async (params: Record<string, any>) => {
    const usp = new URLSearchParams();
    const requestParams = { per_page: appConfig.pagination.itemsPerPage, ...params };
    Object.entries(requestParams).forEach(([k, v]) => {
      if (v === undefined || v === null || v === '') return;
      if (Array.isArray(v)) {
        v.forEach((item) => usp.append(k, String(item)));
      } else {
        usp.set(k, String(v));
      }
    });
    const data = await apiFetch(`/api/v1/search/listings?${usp.toString()}`);
    // Normalize media URLs to absolute
    const absolutize = (u: string) => {
      if (!u) return u;
      const low = u.toLowerCase();
      if (low.startsWith('http://') || low.startsWith('https://')) return u;
      // Ensure single slash join with API_BASE
      const base = API_BASE.replace(/\/$/, '');
      const path = u.startsWith('/') ? u : `/${u}`;
      return `${base}${path}`;
    };
    if (data && Array.isArray(data.results)) {
      data.results = data.results.map((r: any) => ({
        ...r,
        media_urls: Array.isArray(r.media_urls) ? r.media_urls.map((m: string) => absolutize(m)) : r.media_urls,
      }));
    }
    return data;
  },
};

export const SavedSearches = {
  list: () => apiFetch('/api/v1/saved-searches'),
  create: (payload: { title: string; query: Record<string, any>; frequency?: 'instant' | 'daily' }) =>
    apiFetch('/api/v1/saved-searches', { method: 'POST', body: JSON.stringify(payload) }),
  delete: (id: number) => apiFetch(`/api/v1/saved-searches/${id}`, { method: 'DELETE' }),
  update: (id: number, payload: Partial<{ title: string; query: Record<string, any>; frequency: 'instant' | 'daily'; is_active: boolean }>) =>
    apiFetch(`/api/v1/saved-searches/${id}`, { method: 'PATCH', body: JSON.stringify(payload) }),
};

export const Favorites = {
  list: () => apiFetch('/api/v1/favorites'),
  toggle: (listingId: number) => apiFetch(`/api/v1/favorites/${listingId}/toggle`, { method: 'POST' }),
  delete: (listingId: number) => apiFetch(`/api/v1/favorites/${listingId}`, { method: 'DELETE' }),
};

export const RecentlyViewed = {
  list: () => apiFetch('/api/v1/recently-viewed'),
  track: (listingId: number) => apiFetch(`/api/v1/recently-viewed/${listingId}`, { method: 'POST' }),
  clear: () => apiFetch('/api/v1/recently-viewed/clear', { method: 'DELETE' }),
};
