"use client";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { useI18n } from "@/lib/i18n";
import { useEffect, useRef, useState } from "react";
import { Auth } from "@/lib/api";
import { appConfig } from "@/config";

const iconProps = { width: 22, height: 22, strokeWidth: 1.8 };
const profileIconProps = { width: 26, height: 26, strokeWidth: 1.8 };

export default function ClientNav() {
  const pathname = usePathname() || "/";
  const router = useRouter();
  const { t, locale } = useI18n();
  const [authed, setAuthed] = useState<boolean>(false);
  const [profileName, setProfileName] = useState<string>("");
  const [menuOpen, setMenuOpen] = useState<boolean>(false);
  const menuRef = useRef<HTMLDivElement | null>(null);
  const { features } = appConfig;
  const [hydrated, setHydrated] = useState(false);

  const readAuth = () => {
    try {
      if (typeof window === 'undefined') return;
      const token = localStorage.getItem('access_token');
      const profRaw = localStorage.getItem('profile');
      setAuthed(!!token);
      if (profRaw) {
        const p = JSON.parse(profRaw);
        const dn = p.display_name && p.display_name.trim() ? p.display_name : (p.username || "");
        setProfileName(dn || "");
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
  const normalizedPath = isUZ ? path.replace(/^\/uz/, '') || '/' : path;
  const isSearchActive = normalizedPath.startsWith('/search');
  const isFavoritesActive = normalizedPath.startsWith('/favorites');
  const isPostActive = normalizedPath.startsWith('/post');

  useEffect(() => {
    setHydrated(true);
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

  useEffect(() => {
    if (!authed) setMenuOpen(false);
  }, [authed]);

  const base = isUZ ? '/uz' : '';

  const onProfileClick = (e: React.MouseEvent<HTMLButtonElement>) => {
    e.preventDefault();
    if (!hydrated) return;
    if (!authed) {
      router.push(`${base}/auth/otp`);
      return;
    }
    setMenuOpen((v) => !v);
  };

  return (
    <header className="topbar">
      <div className="container" style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between' }}>
        <Link href={isUZ ? '/uz' : '/'}>{t('brand')}</Link>
        <nav style={{ display: 'flex', alignItems: 'center', gap: 16 }}>
          <Link
            href={`${base}/search`}
            className={`nav-icon nav-icon--outline${isSearchActive ? ' is-active' : ''}`}
            aria-label={t('navSearch')}
            title={t('navSearch')}
          >
            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" {...iconProps}>
              <circle cx="11" cy="11" r="6" />
              <path d="m17 17 4 4" />
            </svg>
          </Link>

          {/* Favorites Link with Heart Icon */}
          {features.enableFavorites && (
            <Link
              href={`${base}/favorites`}
              className={`nav-icon nav-icon--outline${isFavoritesActive ? ' is-active' : ''}`}
              title={t('navFavorites')}
              aria-label={t('navFavorites')}
            >
              <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" width="22" height="22">
                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
              </svg>
            </Link>
          )}

          <Link
            href={`${base}/post`}
            className={`nav-icon nav-icon--accent${isPostActive ? ' is-active' : ''}`}
            aria-label={t('navPost')}
            title={t('navPost')}
          >
            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" {...iconProps}>
              <path d="M12 5v14" />
              <path d="M5 12h14" />
            </svg>
          </Link>
          <div className="dropdown" ref={menuRef}>
            <button
              type="button"
              className={`nav-icon nav-icon--outline nav-icon--profile${authed && menuOpen ? ' is-active' : ''}`}
              onClick={onProfileClick}
              aria-haspopup={authed ? 'menu' : undefined}
              aria-expanded={authed ? menuOpen : undefined}
              title={authed ? t('navProfile') : t('navAuth')}
              aria-label={authed ? t('navProfile') : t('navAuth')}
            >
              <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" {...profileIconProps}>
                <circle cx="12" cy="8" r="4" />
                <path d="M4 20c0-4 3.6-7 8-7s8 3 8 7" />
              </svg>
            </button>
            {authed && menuOpen && (
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
          <span className="muted" style={{ margin: '0 6px' }}>|</span>
          <Link href={ruHref} aria-current={locale === 'ru' ? 'true' : undefined}>{t('switchRU')}</Link>
          <Link href={uzHref} aria-current={locale === 'uz' ? 'true' : undefined}>{t('switchUZ')}</Link>
        </nav>
      </div>
    </header>
  );
}
