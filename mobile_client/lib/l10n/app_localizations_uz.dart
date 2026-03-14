// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class AppLocalizationsUz extends AppLocalizations {
  AppLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get appTitle => 'Sail';

  @override
  String get homeSearchHint => 'Barcha toifalarda qidirish...';

  @override
  String get homeCategoriesTitle => 'Toifalar';

  @override
  String get homeRecommendationsTitle => 'Yangi e\'lonlar';

  @override
  String get homeSuggestedTitle => 'Siz uchun tavsiyalar';

  @override
  String get homeAllCategories => 'Barcha toifalar';

  @override
  String get authLogin => 'Kirish';

  @override
  String get authRegister => 'Ro\'yxatdan o\'tish';

  @override
  String get navHome => 'Bosh sahifa';

  @override
  String get navSearch => 'Qidiruv';

  @override
  String get navPost => 'Yaratish';

  @override
  String get navFavorites => 'Saralangan';

  @override
  String get navProfile => 'Profil';

  @override
  String get navSell => 'Sotish';

  @override
  String get navChat => 'Chat';

  @override
  String get loginTitle => 'Kirish';

  @override
  String get loginWelcome => 'Xush kelibsiz';

  @override
  String get loginUsernameLabel => 'Foydalanuvchi nomi yoki Email';

  @override
  String get loginUsernameError => 'Iltimos, foydalanuvchi nomini kiriting';

  @override
  String get loginPasswordLabel => 'Parol';

  @override
  String get loginPasswordError => 'Iltimos, parolni kiriting';

  @override
  String get loginRegisterHint => 'Hisobingiz yo\'qmi? Ro\'yxatdan o\'tish';

  @override
  String loginFailed(Object message) {
    return 'Kirishda xatolik: $message';
  }

  @override
  String get loginRequiredMessage => 'Profilga kirish uchun tizimga kiring';

  @override
  String get registerTitle => 'Ro\'yxatdan o\'tish';

  @override
  String get registerCreateAccount => 'Hisob yaratish';

  @override
  String get registerNameLabel => 'Ism (Ixtiyoriy)';

  @override
  String get registerEmailLabel => 'Foydalanuvchi nomi yoki Email';

  @override
  String get registerEmailError =>
      'Iltimos, foydalanuvchi nomi yoki emailni kiriting';

  @override
  String get registerPasswordLabel => 'Parol';

  @override
  String get registerPasswordError =>
      'Parol kamida 6 belgidan iborat bo\'lishi kerak';

  @override
  String get registerLoginHint => 'Hisobingiz bormi? Kirish';

  @override
  String registerFailed(Object message) {
    return 'Ro\'yxatdan o\'tishda xatolik: $message';
  }

  @override
  String get authVerifyTitle => 'Verify Account';

  @override
  String authVerifySubtitle(Object email) {
    return 'Enter the code sent to $email';
  }

  @override
  String get authVerifySubmit => 'Verify';

  @override
  String get authVerifyBack => 'Back to Register';

  @override
  String get authTelegramButton => 'Continue with Telegram';

  @override
  String get authTelegramComingSoon => 'Telegram Login coming soon!';

  @override
  String authCodeSentSuccess(Object email) {
    return 'Verification code sent to $email';
  }

  @override
  String get authOr => 'Or';

  @override
  String get authHaveAccount => 'Have an account?';

  @override
  String get authLoginAction => 'Log In';

  @override
  String get authTerms =>
      'By clicking the button you agree to our Terms of Use and Privacy Policy';

  @override
  String get authConfirmPasswordLabel => 'Confirm Password';

  @override
  String get authPasswordsMismatch => 'Passwords do not match';

  @override
  String get authForgotPassword => 'Forgot password?';

  @override
  String get authNoAccount => 'Don\'t have an account?';

  @override
  String get authRegisterAction => 'Register';

  @override
  String get profileTitle => 'Profil';

  @override
  String get profileEditTitle => 'Profilni tahrirlash';

  @override
  String get profileDisplayNameLabel => 'Ism';

  @override
  String get profileDisplayNameHint => 'Ismingizni kiriting';

  @override
  String get profileAboutLabel => 'Haqida';

  @override
  String get profileAboutHint => 'O\'zingiz haqingizda gapirib bering';

  @override
  String get profileLocationLabel => 'Joylashuv';

  @override
  String get profileSaveButton => 'O\'zgarishlarni saqlash';

  @override
  String get profileSaveSuccess => 'Profil yangilandi';

  @override
  String get profileMyListings => 'Mening e\'lonlarim';

  @override
  String get profileFavorites => 'Saralangan';

  @override
  String get profileSettings => 'Sozlamalar';

  @override
  String get profileLogout => 'Chiqish';

  @override
  String get profileLogoutConfirm => 'Haqiqatan ham chiqmoqchimisiz?';

  @override
  String get profileCancel => 'Bekor qilish';

  @override
  String profileMemberSince(Object date) {
    return 'A\'zo bo\'lgan $date';
  }

  @override
  String get settingsTitle => 'Sozlamalar';

  @override
  String get settingsProfileTab => 'Profil';

  @override
  String get settingsSecurityTab => 'Xavfsizlik';

  @override
  String get settingsTelegramTab => 'Telegram';

  @override
  String get settingsAccountTab => 'Hisob';

  @override
  String get securityTitle => 'Xavfsizlik';

  @override
  String get securityChangePassword => 'Parolni o\'zgartirish';

  @override
  String get securitySetPassword => 'Parolni o\'rnatish';

  @override
  String get securityCurrentPassword => 'Joriy parol';

  @override
  String get securityNewPassword => 'Yangi parol';

  @override
  String get securityConfirmPassword => 'Yangi parolni tasdiqlang';

  @override
  String get securityPasswordChanged => 'Parol muvaffaqiyatli o\'zgartirildi';

  @override
  String get securityPasswordSet => 'Parol muvaffaqiyatli o\'rnatildi';

  @override
  String get securityPasswordMismatch => 'Parollar mos kelmayapti';

  @override
  String get securityPasswordRequired => 'Parol talab qilinadi';

  @override
  String get securityPasswordMinLength =>
      'Parol kamida 6 belgidan iborat bo\'lishi kerak';

  @override
  String get telegramTitle => 'Telegram';

  @override
  String get telegramConnected => 'Ulangan';

  @override
  String get telegramNotConnected => 'Ulanmagan';

  @override
  String get telegramLinkAccount => 'Telegramni ulash';

  @override
  String get telegramUnlinkAccount => 'Telegramni uzish';

  @override
  String get telegramUnlinkConfirm => 'Telegram hisobingizni uzmoqchimisiz?';

  @override
  String telegramLinkedAs(Object username) {
    return '@$username sifatida ulangan';
  }

  @override
  String get accountTitle => 'Hisob';

  @override
  String get accountDeleteTitle => 'Hisobni o\'chirish';

  @override
  String get accountDeleteDescription =>
      'Bu amal qaytarib bo\'lmaydi. Barcha ma\'lumotlaringiz o\'chiriladi.';

  @override
  String get accountDeleteConfirm => 'Hisobingizni o\'chirmoqchimisiz?';

  @override
  String get accountDeleteButton => 'Hisobni o\'chirish';

  @override
  String get postTitle => 'E\'lon yaratish';

  @override
  String get postEditTitle => 'E\'lonni tahrirlash';

  @override
  String get postCategoryLabel => 'Toifa';

  @override
  String get postCategoryHint => 'Toifani tanlang';

  @override
  String get postCategoryRequired => 'Toifani tanlang';

  @override
  String get postTitleLabel => 'Sarlavha';

  @override
  String get postTitleHint => 'Nima sotmoqchisiz?';

  @override
  String get postTitleRequired => 'Sarlavha talab qilinadi';

  @override
  String get postDescriptionLabel => 'Tavsif';

  @override
  String get postDescriptionHint => 'Mahsulotni batafsil tasvirlab bering';

  @override
  String get postPriceLabel => 'Narx';

  @override
  String get postPriceHint => '0';

  @override
  String get postPriceRequired => 'Narx talab qilinadi';

  @override
  String get postCurrencyLabel => 'Valyuta';

  @override
  String get postConditionLabel => 'Holati';

  @override
  String get postConditionNew => 'Yangi';

  @override
  String get postConditionUsed => 'Ishlatilgan';

  @override
  String get postDealTypeLabel => 'Bitim turi';

  @override
  String get postDealTypeSell => 'Sotish';

  @override
  String get postDealTypeExchange => 'Almashtirish';

  @override
  String get postDealTypeFree => 'Bepul';

  @override
  String get postSellerTypeLabel => 'Sotuvchi turi';

  @override
  String get postSellerTypePerson => 'Shaxsiy';

  @override
  String get postSellerTypeBusiness => 'Biznes';

  @override
  String get postLocationLabel => 'Joylashuv';

  @override
  String get postLocationHint => 'Joylashuvni tanlang';

  @override
  String get postLocationRequired => 'Joylashuv talab qilinadi';

  @override
  String get postPhotosLabel => 'Rasmlar';

  @override
  String get postPhotosHint => '8 tagacha rasm qo\'shing';

  @override
  String get postContactNameLabel => 'Bog\'lanish ismi';

  @override
  String get postContactNameHint => 'Ismingiz';

  @override
  String get postContactPhoneLabel => 'Bog\'lanish telefoni';

  @override
  String get postContactPhoneHint => '+998 XX XXX XX XX';

  @override
  String get postContactEmailLabel => 'Bog\'lanish emaili';

  @override
  String get postContactEmailHint => 'email@example.com';

  @override
  String get postSubmitButton => 'E\'lon berish';

  @override
  String get postSubmitSuccess => 'E\'lon muvaffaqiyatli chop etildi';

  @override
  String get postNegotiableLabel => 'Narx kelishiladi';

  @override
  String get postAttributesTitle => 'Tafsilotlar';

  @override
  String get postAdditionalInfoTitle => 'Qo\'shimcha ma\'lumot';

  @override
  String get postContactNameRequired => 'Ism talab qilinadi';

  @override
  String get postLocationSelectRegion => 'Viloyatni tanlang';

  @override
  String get postLocationSelectCity => 'Shaharni tanlang';

  @override
  String get postLocationUseMyLocation => 'Mening joylashuvim';

  @override
  String get postLocationRegions => 'Viloyatlar';

  @override
  String get postLocationCities => 'Shaharlar';

  @override
  String postTitleCharCount(int current, int max) {
    return '$current/$max';
  }

  @override
  String get postUploadingPhotos => 'Rasmlar yuklanmoqda...';

  @override
  String get postSelectLocation => 'Joylashuvni tanlang';

  @override
  String get searchTitle => 'Qidiruv';

  @override
  String get searchHint => 'E\'lonlarni qidirish...';

  @override
  String get searchNoResults => 'Hech narsa topilmadi';

  @override
  String get searchRecommended => 'Tavsiya etilgan';

  @override
  String searchResultCount(int count) {
    return '$count ta natija';
  }

  @override
  String get searchFilters => 'Filtrlar';

  @override
  String get searchClearFilters => 'Tozalash';

  @override
  String get searchCondition => 'Holati';

  @override
  String get searchConditionAll => 'Hammasi';

  @override
  String get searchPriceRange => 'Narx oralig\'i';

  @override
  String get searchPriceMin => 'Dan';

  @override
  String get searchPriceMax => 'Gacha';

  @override
  String get searchApplyFilters => 'Qo\'llash';

  @override
  String get searchSortRelevance => 'Dolzarbligi bo\'yicha';

  @override
  String get searchSortNewest => 'Avval yangilari';

  @override
  String get searchSortPriceAsc => 'Narx: o\'sish bo\'yicha';

  @override
  String get searchSortPriceDesc => 'Narx: kamayish bo\'yicha';

  @override
  String get detailDescription => 'Tavsif';

  @override
  String get detailAttributes => 'Tafsilotlar';

  @override
  String get detailSeller => 'Sotuvchi';

  @override
  String get detailSellerSince => 'Sail\'da';

  @override
  String get detailSellerListings => 'Sotuvchining boshqa e\'lonlari';

  @override
  String get detailViewAll => 'Hammasi';

  @override
  String get detailFree => 'Bepul';

  @override
  String get detailNegotiable => 'Kelishiladi';

  @override
  String get detailShowPhone => 'Telefonni ko\'rsatish';

  @override
  String get detailSendMessage => 'Xabar yozish';

  @override
  String get detailChatComingSoon => 'Chat tez orada';

  @override
  String get detailLinkCopied => 'Havola nusxalandi';

  @override
  String get detailPromoted => 'TOP';

  @override
  String get detailLastActive => 'Oxirgi faollik';

  @override
  String get detailSellerAllListings => 'Sotuvchining barcha e\'lonlari';

  @override
  String get detailLocation => 'Joylashuv';

  @override
  String get detailReport => 'Shikoyat';

  @override
  String get detailReportConfirm => 'Bu e\'longa shikoyat qilmoqchimisiz?';

  @override
  String get detailReportSent => 'Shikoyat yuborildi';

  @override
  String get detailContactInfo => 'Aloqa ma\'lumotlari';

  @override
  String get detailCopied => 'Nusxalandi';

  @override
  String get generalError => 'Xatolik yuz berdi';

  @override
  String get generalRetry => 'Qayta urinish';

  @override
  String get generalSave => 'Saqlash';

  @override
  String get generalDelete => 'O\'chirish';

  @override
  String get generalConfirm => 'Tasdiqlash';

  @override
  String get generalCancel => 'Bekor qilish';

  @override
  String get generalDone => 'Tayyor';

  @override
  String get generalLoading => 'Yuklanmoqda...';

  @override
  String get generalNoResults => 'Hech narsa topilmadi';

  @override
  String get generalSeeAll => 'Hammasini ko\'rish';
}
