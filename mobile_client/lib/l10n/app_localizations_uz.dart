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
}
