// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Sail';

  @override
  String get homeSearchHint => 'Search in all categories...';

  @override
  String get homeCategoriesTitle => 'Browse Categories';

  @override
  String get homeRecommendationsTitle => 'Fresh Recommendations';

  @override
  String get authLogin => 'Log In';

  @override
  String get authRegister => 'Register';

  @override
  String get navHome => 'Home';

  @override
  String get navSearch => 'Search';

  @override
  String get navPost => 'Post';

  @override
  String get navFavorites => 'Favorites';

  @override
  String get navProfile => 'Profile';

  @override
  String get navSell => 'Sell';

  @override
  String get navChat => 'Chat';

  @override
  String get loginTitle => 'Login';

  @override
  String get loginWelcome => 'Welcome Back';

  @override
  String get loginUsernameLabel => 'Username or Email';

  @override
  String get loginUsernameError => 'Please enter your username';

  @override
  String get loginPasswordLabel => 'Password';

  @override
  String get loginPasswordError => 'Please enter your password';

  @override
  String get loginRegisterHint => 'Don\'t have an account? Register';

  @override
  String loginFailed(Object message) {
    return 'Login failed: $message';
  }

  @override
  String get loginRequiredMessage =>
      'You need to log in to access your profile';

  @override
  String get registerTitle => 'Register';

  @override
  String get registerCreateAccount => 'Create Account';

  @override
  String get registerNameLabel => 'Display Name (Optional)';

  @override
  String get registerEmailLabel => 'Username or Email';

  @override
  String get registerEmailError => 'Please enter a username or email';

  @override
  String get registerPasswordLabel => 'Password';

  @override
  String get registerPasswordError => 'Password must be at least 6 characters';

  @override
  String get registerLoginHint => 'Already have an account? Login';

  @override
  String registerFailed(Object message) {
    return 'Registration failed: $message';
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
