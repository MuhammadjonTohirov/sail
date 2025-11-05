"use client";
import { I18nextProvider } from 'react-i18next';
import i18next from '@/i18n/config';
import { ReactNode, useMemo } from 'react';
import { usePathname } from 'next/navigation';

export default function I18nProvider({ children }: { children: ReactNode }) {
  const pathname = usePathname() || "/";

  // Detect locale from pathname and set language synchronously
  useMemo(() => {
    const first = pathname.split("/").filter(Boolean)[0];
    const locale = first === "uz" ? "uz" : "ru";

    // Change language synchronously if needed
    if (i18next.language !== locale) {
      i18next.changeLanguage(locale);
    }
  }, [pathname]);

  return <I18nextProvider i18n={i18next}>{children}</I18nextProvider>;
}
