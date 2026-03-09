// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Sail';

  @override
  String get homeSearchHint => 'Поиск во всех категориях...';

  @override
  String get homeCategoriesTitle => 'Категории';

  @override
  String get homeRecommendationsTitle => 'Свежие объявления';

  @override
  String get authLogin => 'Войти';

  @override
  String get authRegister => 'Регистрация';

  @override
  String get navHome => 'Главная';

  @override
  String get navSearch => 'Поиск';

  @override
  String get navPost => 'Создать';

  @override
  String get navFavorites => 'Избранное';

  @override
  String get navProfile => 'Профиль';

  @override
  String get navSell => 'Продать';

  @override
  String get navChat => 'Чат';

  @override
  String get loginTitle => 'Вход';

  @override
  String get loginWelcome => 'С возвращением';

  @override
  String get loginUsernameLabel => 'Имя пользователя или Email';

  @override
  String get loginUsernameError => 'Пожалуйста, введите имя пользователя';

  @override
  String get loginPasswordLabel => 'Пароль';

  @override
  String get loginPasswordError => 'Пожалуйста, введите пароль';

  @override
  String get loginRegisterHint => 'Нет аккаунта? Зарегистрироваться';

  @override
  String loginFailed(Object message) {
    return 'Ошибка входа: $message';
  }

  @override
  String get loginRequiredMessage => 'Вам нужно войти, чтобы открыть профиль';

  @override
  String get registerTitle => 'Регистрация';

  @override
  String get registerCreateAccount => 'Создать аккаунт';

  @override
  String get registerNameLabel => 'Имя (Опционально)';

  @override
  String get registerEmailLabel => 'Имя пользователя или Email';

  @override
  String get registerEmailError =>
      'Пожалуйста, введите имя пользователя или email';

  @override
  String get registerPasswordLabel => 'Пароль';

  @override
  String get registerPasswordError => 'Пароль должен быть не менее 6 символов';

  @override
  String get registerLoginHint => 'Уже есть аккаунт? Войти';

  @override
  String registerFailed(Object message) {
    return 'Ошибка регистрации: $message';
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
