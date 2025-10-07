import './globals.css';
import type { Metadata } from 'next';
import React from 'react';
import ClientNav from './navbar/ClientNav';
import { appConfig, buildThemeStyle } from '@/config';

export const metadata: Metadata = {
  title: {
    default: appConfig.seo.defaultTitle,
    template: appConfig.seo.titleTemplate,
  },
  description: appConfig.seo.description,
  keywords: appConfig.seo.keywords,
  applicationName: appConfig.name,
  other: {
    'tagline': appConfig.tagline,
  },
};

const bodyStyle = {
  ...buildThemeStyle(),
  fontFamily: 'var(--font-sans)',
} as React.CSSProperties;

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang={appConfig.i18n.defaultLocale}>
      <body style={bodyStyle}>
        <ClientNav />
        <main className="container">{children}</main>
      </body>
    </html>
  );
}
