import './globals.css';
import Link from 'next/link';
import React from 'react';
import ClientNav from './navbar/ClientNav';

export const metadata = {
  title: 'OLX Clone',
  description: 'C2C classifieds web client',
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="ru">
      <body>
        <ClientNav />
        <main className="container">{children}</main>
      </body>
    </html>
  );
}
