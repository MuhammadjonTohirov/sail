import type { NextRequest } from 'next/server';
import { NextResponse } from 'next/server';

// Ensure /uz/... paths resolve to the same page tree as default locale,
// while keeping the URL prefix for our client-side i18n.
export function middleware(req: NextRequest) {
  const { pathname } = req.nextUrl;
  if (pathname === '/uz') {
    const url = req.nextUrl.clone();
    url.pathname = '/uz/search';
    return NextResponse.redirect(url);
  }
  if (pathname.startsWith('/uz/')) {
    const url = req.nextUrl.clone();
    url.pathname = pathname.replace(/^\/uz/, '');
    return NextResponse.rewrite(url);
  }
  if (pathname === '/ru') {
    const url = req.nextUrl.clone();
    url.pathname = '/';
    return NextResponse.redirect(url);
  }
  if (pathname.startsWith('/ru/')) {
    const url = req.nextUrl.clone();
    url.pathname = pathname.replace(/^\/ru/, '');
    return NextResponse.redirect(url);
  }
  return NextResponse.next();
}

export const config = {
  matcher: ['/uz', '/uz/:path*', '/ru', '/ru/:path*'],
};
