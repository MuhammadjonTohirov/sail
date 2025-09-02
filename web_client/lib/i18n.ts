"use client";
import { usePathname } from "next/navigation";

export type Locale = "ru" | "uz";

// Minimal dictionary for initial UI scaffolding
const dict: Record<Locale, Record<string, string>> = {
  ru: {
    brand: "OLX Клон",
    navSearch: "Поиск",
    navPost: "Разместить",
    navMyListings: "Мои объявления",
    navAuth: "Вход",
    navProfile: "Ваш профиль",
    navListings: "Объявления",
    navSettings: "Настройки",
    navLogout: "Выйти",
    switchRU: "RU",
    switchUZ: "UZ",
    homeWelcome: "Добро пожаловать",
    homeLead: "Простой клиент для тестирования бэкенда.",
    loginOtp: "Вход по коду",
    searchTitle: "Поиск",
    postTitle: "Разместить объявление",
    myListingsTitle: "Мои объявления",
    reportListing: "Пожаловаться на объявление",
  },
  uz: {
    brand: "OLX Klon",
    navSearch: "Qidiruv",
    navPost: "E’lon berish",
    navMyListings: "E’lonlarim",
    navAuth: "Kirish",
    navProfile: "Profilingiz",
    navListings: "E’lonlar",
    navSettings: "Sozlamalar",
    navLogout: "Chiqish",
    switchRU: "RU",
    switchUZ: "UZ",
    homeWelcome: "Xush kelibsiz",
    homeLead: "Backendni sinash uchun oddiy mijoz.",
    loginOtp: "SMS kod bilan kirish",
    searchTitle: "Qidiruv",
    postTitle: "E’lon joylash",
    myListingsTitle: "Mening e’lonlarim",
    reportListing: "E’lonni shikoyat qilish",
  },
};

export function useI18n() {
  const pathname = usePathname() || "/";
  const first = pathname.split("/").filter(Boolean)[0];
  const locale: Locale = first === "uz" ? "uz" : "ru";
  return { t: (k: string) => dict[locale][k] ?? k, locale };
}
