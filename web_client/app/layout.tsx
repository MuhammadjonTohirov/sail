import './globals.css';
import type { Metadata } from 'next';
import React from 'react';
import ClientNav from './navbar/ClientNav';
import Footer from '@/components/layout/Footer';
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
  minHeight: '100vh',
  display: 'flex',
  flexDirection: 'column',
  background: 'var(--bg)',
} as React.CSSProperties;

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang={appConfig.i18n.defaultLocale}>
      <body style={bodyStyle}>
        <ClientNav />
        <main className="container page-content">{children}</main>
        <Footer />
      </body>
    </html>
  );
}
