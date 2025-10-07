"use client";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { useI18n } from "@/lib/i18n";
import { useEffect, useRef, useState } from "react";
import { Auth } from "@/lib/api";

export default function ClientNav() {
  const pathname = usePathname() || "/";
  const router = useRouter();
  const { t, locale } = useI18n();
  const [authed, setAuthed] = useState<boolean>(false);
  const [profileName, setProfileName] = useState<string>("");
  const [menuOpen, setMenuOpen] = useState<boolean>(false);
  const menuRef = useRef<HTMLDivElement | null>(null);

  const readAuth = () => {
    try {
      const token = typeof window !== 'undefined' ? localStorage.getItem('access_token') : null;
      const profRaw = typeof window !== 'undefined' ? localStorage.getItem('profile') : null;
      setAuthed(!!token);
      if (profRaw) {
        const p = JSON.parse(profRaw);
        const dn = p.display_name && p.display_name.trim() ? p.display_name : (p.username || "");
        setProfileName(dn);
      } else {
        setProfileName("");
      }
    } catch {
      setAuthed(false);
      setProfileName("");
    }
  };

  // Compute manual locale-switched hrefs (Next.js App Router i18n can be finicky)
  const path = pathname || "/";
  const isUZ = path.startsWith('/uz');
  const ruHref = isUZ ? path.replace(/^\/uz(?=\/|$)/, '') || '/' : path || '/';
  const uzHref = isUZ ? path : (path === '/' ? '/uz' : `/uz${path}`);

  useEffect(() => {
    readAuth();
    const onStorage = (e: StorageEvent) => {
      if (e.key === 'access_token' || e.key === 'profile') readAuth();
    };
    const onFocus = () => readAuth();
    const onAuthChanged = () => readAuth();
    window.addEventListener('storage', onStorage);
    window.addEventListener('focus', onFocus);
    window.addEventListener('auth-changed', onAuthChanged as any);
    return () => {
      window.removeEventListener('storage', onStorage);
      window.removeEventListener('focus', onFocus);
      window.removeEventListener('auth-changed', onAuthChanged as any);
    };
  }, []);

  // Close dropdown when clicking outside or navigating
  useEffect(() => {
    const onClick = (e: MouseEvent) => {
      if (!menuRef.current) return;
      if (!menuRef.current.contains(e.target as Node)) setMenuOpen(false);
    };
    document.addEventListener('click', onClick);
    return () => document.removeEventListener('click', onClick);
  }, []);

  useEffect(() => { setMenuOpen(false); readAuth(); }, [pathname]);

  const base = isUZ ? '/uz' : '';

  return (
    <header className="topbar">
      <div className="container" style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between' }}>
        <Link href={isUZ ? '/uz' : '/'}>{t('brand')}</Link>
        <nav style={{ display: 'flex', alignItems: 'center', gap: 16 }}>
          <Link href={`${base}/search`}>{t('navSearch')}</Link>

          {/* Favorites Link with Heart Icon */}
          <Link
            href={`${base}/favorites`}
            style={{
              display: 'flex',
              alignItems: 'center',
              gap: 4,
              textDecoration: 'none'
            }}
            title={locale === 'uz' ? 'Sevimlilar' : 'Избранное'}
          >
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
              <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
            </svg>
          </Link>

          <Link href={`${base}/post`} className="btn-outline" style={{ padding: 8 }}>{t('navPost')}</Link>
          {authed ? (
            <div className="dropdown" ref={menuRef}>
              <button className="btn-outline" style={{ padding: 8 }} onClick={(e) => { e.preventDefault(); setMenuOpen((v) => !v); }} aria-haspopup="menu" aria-expanded={menuOpen}>
                {t('navProfile')}
              </button>
              {menuOpen && (
                <div className="dropdown-menu" role="menu">
                  <div className="menu-header">{profileName || t('navProfile')}</div>
                  <a className="menu-item" href={`${base}/u/listings`}>{t('navListings')}</a>
                  <a className="menu-item" href={`${base}/u/settings`}>{t('navSettings')}</a>
                  <div className="menu-sep" />
                  <button className="menu-item" onClick={() => { Auth.logout(); setMenuOpen(false); router.push(base || '/'); }} style={{ width: '100%', textAlign: 'left', background: 'none', border: 0 }}>
                    {t('navLogout')}
                  </button>
                </div>
              )}
            </div>
          ) : (
            <Link href={`${base}/auth/otp`}>{t('navAuth')}</Link>
          )}
          <span className="muted" style={{ margin: '0 6px' }}>|</span>
          <Link href={ruHref} aria-current={locale === 'ru' ? 'true' : undefined}>{t('switchRU')}</Link>
          <Link href={uzHref} aria-current={locale === 'uz' ? 'true' : undefined}>{t('switchUZ')}</Link>
        </nav>
      </div>
    </header>
  );
}
