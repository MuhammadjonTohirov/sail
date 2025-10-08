"use client";
import { usePathname } from "next/navigation";
import { appConfig } from "@/config";

export type Locale = "ru" | "uz";

const brandName = appConfig.name;
const tagline = appConfig.tagline;

// Minimal dictionary for initial UI scaffolding
const dict: Record<Locale, Record<string, string>> = {
  ru: {
    brand: brandName,
    navSearch: "Поиск",
    navPost: "Разместить",
    navMyListings: "Мои объявления",
    navAuth: "Вход",
    navProfile: "Ваш профиль",
    navListings: "Объявления",
    navFavorites: "Избранное",
    navSettings: "Настройки",
    navLogout: "Выйти",
    switchRU: "RU",
    switchUZ: "UZ",
    homeWelcome: "Добро пожаловать",
    homeLead: tagline || "Простой клиент для тестирования бэкенда.",
    loginOtp: "Вход по коду",
    searchTitle: "Поиск",
    postTitle: "Разместить объявление",
    myListingsTitle: "Мои объявления",
    reportListing: "Пожаловаться на объявление",
    listingsDeliveryNotice: `на ${brandName} нет службы доставки. Все сделки происходят напрямую между покупателем и продавцом.`,
  },
  uz: {
    brand: brandName,
    navSearch: "Qidiruv",
    navPost: "E’lon berish",
    navMyListings: "E’lonlarim",
    navAuth: "Kirish",
    navProfile: "Profilingiz",
    navListings: "E’lonlar",
    navFavorites: "Sevimlilar",
    navSettings: "Sozlamalar",
    navLogout: "Chiqish",
    switchRU: "RU",
    switchUZ: "UZ",
    homeWelcome: "Xush kelibsiz",
    homeLead: tagline || "Backendni sinash uchun oddiy mijoz.",
    loginOtp: "SMS kod bilan kirish",
    searchTitle: "Qidiruv",
    postTitle: "E’lon joylash",
    myListingsTitle: "Mening e’lonlarim",
    reportListing: "E’lonni shikoyat qilish",
    listingsDeliveryNotice: `${brandName} yetkazib berish xizmatini taqdim etmaydi. Barcha savdolar xaridor va sotuvchi o'rtasida bevosita amalga oshadi.`,
  },
};

export function useI18n() {
  const pathname = usePathname() || "/";
  const first = pathname.split("/").filter(Boolean)[0];
  const locale: Locale = first === "uz" ? "uz" : "ru";

  return { t: (k: string) => dict[locale][k] ?? k, locale };
}
