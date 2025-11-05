"use client";
import { usePathname } from "next/navigation";
import { useTranslation } from 'react-i18next';

export type Locale = "ru" | "uz";

export function useI18n() {
  const pathname = usePathname() || "/";
  const first = pathname.split("/").filter(Boolean)[0];
  const locale: Locale = first === "uz" ? "uz" : "ru";
  const { t } = useTranslation();

  return { t, locale };
}
