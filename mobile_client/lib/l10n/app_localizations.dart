import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_uz.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru'),
    Locale('uz'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Sail'**
  String get appTitle;

  /// No description provided for @homeSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search in all categories...'**
  String get homeSearchHint;

  /// No description provided for @homeCategoriesTitle.
  ///
  /// In en, this message translates to:
  /// **'Browse Categories'**
  String get homeCategoriesTitle;

  /// No description provided for @homeRecommendationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Fresh Recommendations'**
  String get homeRecommendationsTitle;

  /// No description provided for @homeSuggestedTitle.
  ///
  /// In en, this message translates to:
  /// **'Suggested For You'**
  String get homeSuggestedTitle;

  /// No description provided for @homeAllCategories.
  ///
  /// In en, this message translates to:
  /// **'All Categories'**
  String get homeAllCategories;

  /// No description provided for @authLogin.
  ///
  /// In en, this message translates to:
  /// **'Log In'**
  String get authLogin;

  /// No description provided for @authRegister.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get authRegister;

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// No description provided for @navSearch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get navSearch;

  /// No description provided for @navPost.
  ///
  /// In en, this message translates to:
  /// **'Post'**
  String get navPost;

  /// No description provided for @navFavorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get navFavorites;

  /// No description provided for @navProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get navProfile;

  /// No description provided for @navSell.
  ///
  /// In en, this message translates to:
  /// **'Sell'**
  String get navSell;

  /// No description provided for @navChat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get navChat;

  /// No description provided for @loginTitle.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginTitle;

  /// No description provided for @loginWelcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back'**
  String get loginWelcome;

  /// No description provided for @loginUsernameLabel.
  ///
  /// In en, this message translates to:
  /// **'Username or Email'**
  String get loginUsernameLabel;

  /// No description provided for @loginUsernameError.
  ///
  /// In en, this message translates to:
  /// **'Please enter your username'**
  String get loginUsernameError;

  /// No description provided for @loginPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get loginPasswordLabel;

  /// No description provided for @loginPasswordError.
  ///
  /// In en, this message translates to:
  /// **'Please enter your password'**
  String get loginPasswordError;

  /// No description provided for @loginRegisterHint.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account? Register'**
  String get loginRegisterHint;

  /// No description provided for @loginFailed.
  ///
  /// In en, this message translates to:
  /// **'Login failed: {message}'**
  String loginFailed(Object message);

  /// No description provided for @loginRequiredMessage.
  ///
  /// In en, this message translates to:
  /// **'You need to log in to access your profile'**
  String get loginRequiredMessage;

  /// No description provided for @registerTitle.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get registerTitle;

  /// No description provided for @registerCreateAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get registerCreateAccount;

  /// No description provided for @registerNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Display Name (Optional)'**
  String get registerNameLabel;

  /// No description provided for @registerEmailLabel.
  ///
  /// In en, this message translates to:
  /// **'Username or Email'**
  String get registerEmailLabel;

  /// No description provided for @registerEmailError.
  ///
  /// In en, this message translates to:
  /// **'Please enter a username or email'**
  String get registerEmailError;

  /// No description provided for @registerPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get registerPasswordLabel;

  /// No description provided for @registerPasswordError.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get registerPasswordError;

  /// No description provided for @registerLoginHint.
  ///
  /// In en, this message translates to:
  /// **'Already have an account? Login'**
  String get registerLoginHint;

  /// No description provided for @registerFailed.
  ///
  /// In en, this message translates to:
  /// **'Registration failed: {message}'**
  String registerFailed(Object message);

  /// No description provided for @authVerifyTitle.
  ///
  /// In en, this message translates to:
  /// **'Verify Account'**
  String get authVerifyTitle;

  /// No description provided for @authVerifySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Enter the code sent to {email}'**
  String authVerifySubtitle(Object email);

  /// No description provided for @authVerifySubmit.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get authVerifySubmit;

  /// No description provided for @authVerifyBack.
  ///
  /// In en, this message translates to:
  /// **'Back to Register'**
  String get authVerifyBack;

  /// No description provided for @authTelegramButton.
  ///
  /// In en, this message translates to:
  /// **'Continue with Telegram'**
  String get authTelegramButton;

  /// No description provided for @authTelegramComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Telegram Login coming soon!'**
  String get authTelegramComingSoon;

  /// No description provided for @authCodeSentSuccess.
  ///
  /// In en, this message translates to:
  /// **'Verification code sent to {email}'**
  String authCodeSentSuccess(Object email);

  /// No description provided for @authOr.
  ///
  /// In en, this message translates to:
  /// **'Or'**
  String get authOr;

  /// No description provided for @authHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Have an account?'**
  String get authHaveAccount;

  /// No description provided for @authLoginAction.
  ///
  /// In en, this message translates to:
  /// **'Log In'**
  String get authLoginAction;

  /// No description provided for @authTerms.
  ///
  /// In en, this message translates to:
  /// **'By clicking the button you agree to our Terms of Use and Privacy Policy'**
  String get authTerms;

  /// No description provided for @authConfirmPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get authConfirmPasswordLabel;

  /// No description provided for @authPasswordsMismatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get authPasswordsMismatch;

  /// No description provided for @authForgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get authForgotPassword;

  /// No description provided for @authNoAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get authNoAccount;

  /// No description provided for @authRegisterAction.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get authRegisterAction;

  /// No description provided for @profileTitle.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profileTitle;

  /// No description provided for @profileEditTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get profileEditTitle;

  /// No description provided for @profileDisplayNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Display Name'**
  String get profileDisplayNameLabel;

  /// No description provided for @profileDisplayNameHint.
  ///
  /// In en, this message translates to:
  /// **'Enter your name'**
  String get profileDisplayNameHint;

  /// No description provided for @profileAboutLabel.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get profileAboutLabel;

  /// No description provided for @profileAboutHint.
  ///
  /// In en, this message translates to:
  /// **'Tell about yourself'**
  String get profileAboutHint;

  /// No description provided for @profileLocationLabel.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get profileLocationLabel;

  /// No description provided for @profileSaveButton.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get profileSaveButton;

  /// No description provided for @profileSaveSuccess.
  ///
  /// In en, this message translates to:
  /// **'Profile updated successfully'**
  String get profileSaveSuccess;

  /// No description provided for @profileMyListings.
  ///
  /// In en, this message translates to:
  /// **'My Listings'**
  String get profileMyListings;

  /// No description provided for @profileFavorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get profileFavorites;

  /// No description provided for @profileSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get profileSettings;

  /// No description provided for @profileLogout.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get profileLogout;

  /// No description provided for @profileLogoutConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log out?'**
  String get profileLogoutConfirm;

  /// No description provided for @profileCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get profileCancel;

  /// No description provided for @profileMemberSince.
  ///
  /// In en, this message translates to:
  /// **'Member since {date}'**
  String profileMemberSince(Object date);

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @settingsProfileTab.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get settingsProfileTab;

  /// No description provided for @settingsSecurityTab.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get settingsSecurityTab;

  /// No description provided for @settingsTelegramTab.
  ///
  /// In en, this message translates to:
  /// **'Telegram'**
  String get settingsTelegramTab;

  /// No description provided for @settingsAccountTab.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get settingsAccountTab;

  /// No description provided for @securityTitle.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get securityTitle;

  /// No description provided for @securityChangePassword.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get securityChangePassword;

  /// No description provided for @securitySetPassword.
  ///
  /// In en, this message translates to:
  /// **'Set Password'**
  String get securitySetPassword;

  /// No description provided for @securityCurrentPassword.
  ///
  /// In en, this message translates to:
  /// **'Current Password'**
  String get securityCurrentPassword;

  /// No description provided for @securityNewPassword.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get securityNewPassword;

  /// No description provided for @securityConfirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm New Password'**
  String get securityConfirmPassword;

  /// No description provided for @securityPasswordChanged.
  ///
  /// In en, this message translates to:
  /// **'Password changed successfully'**
  String get securityPasswordChanged;

  /// No description provided for @securityPasswordSet.
  ///
  /// In en, this message translates to:
  /// **'Password set successfully'**
  String get securityPasswordSet;

  /// No description provided for @securityPasswordMismatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get securityPasswordMismatch;

  /// No description provided for @securityPasswordRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get securityPasswordRequired;

  /// No description provided for @securityPasswordMinLength.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get securityPasswordMinLength;

  /// No description provided for @telegramTitle.
  ///
  /// In en, this message translates to:
  /// **'Telegram'**
  String get telegramTitle;

  /// No description provided for @telegramConnected.
  ///
  /// In en, this message translates to:
  /// **'Connected'**
  String get telegramConnected;

  /// No description provided for @telegramNotConnected.
  ///
  /// In en, this message translates to:
  /// **'Not connected'**
  String get telegramNotConnected;

  /// No description provided for @telegramLinkAccount.
  ///
  /// In en, this message translates to:
  /// **'Link Telegram Account'**
  String get telegramLinkAccount;

  /// No description provided for @telegramUnlinkAccount.
  ///
  /// In en, this message translates to:
  /// **'Unlink Telegram'**
  String get telegramUnlinkAccount;

  /// No description provided for @telegramUnlinkConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to unlink your Telegram account?'**
  String get telegramUnlinkConfirm;

  /// No description provided for @telegramLinkedAs.
  ///
  /// In en, this message translates to:
  /// **'Linked as @{username}'**
  String telegramLinkedAs(Object username);

  /// No description provided for @accountTitle.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get accountTitle;

  /// No description provided for @accountDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get accountDeleteTitle;

  /// No description provided for @accountDeleteDescription.
  ///
  /// In en, this message translates to:
  /// **'This action is permanent and cannot be undone. All your data will be deleted.'**
  String get accountDeleteDescription;

  /// No description provided for @accountDeleteConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account?'**
  String get accountDeleteConfirm;

  /// No description provided for @accountDeleteButton.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get accountDeleteButton;

  /// No description provided for @postTitle.
  ///
  /// In en, this message translates to:
  /// **'Create Listing'**
  String get postTitle;

  /// No description provided for @postEditTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit Listing'**
  String get postEditTitle;

  /// No description provided for @postCategoryLabel.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get postCategoryLabel;

  /// No description provided for @postCategoryHint.
  ///
  /// In en, this message translates to:
  /// **'Select a category'**
  String get postCategoryHint;

  /// No description provided for @postCategoryRequired.
  ///
  /// In en, this message translates to:
  /// **'Please select a category'**
  String get postCategoryRequired;

  /// No description provided for @postTitleLabel.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get postTitleLabel;

  /// No description provided for @postTitleHint.
  ///
  /// In en, this message translates to:
  /// **'What are you selling?'**
  String get postTitleHint;

  /// No description provided for @postTitleRequired.
  ///
  /// In en, this message translates to:
  /// **'Title is required'**
  String get postTitleRequired;

  /// No description provided for @postDescriptionLabel.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get postDescriptionLabel;

  /// No description provided for @postDescriptionHint.
  ///
  /// In en, this message translates to:
  /// **'Describe your item in detail'**
  String get postDescriptionHint;

  /// No description provided for @postPriceLabel.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get postPriceLabel;

  /// No description provided for @postPriceHint.
  ///
  /// In en, this message translates to:
  /// **'0'**
  String get postPriceHint;

  /// No description provided for @postPriceRequired.
  ///
  /// In en, this message translates to:
  /// **'Price is required'**
  String get postPriceRequired;

  /// No description provided for @postCurrencyLabel.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get postCurrencyLabel;

  /// No description provided for @postConditionLabel.
  ///
  /// In en, this message translates to:
  /// **'Condition'**
  String get postConditionLabel;

  /// No description provided for @postConditionNew.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get postConditionNew;

  /// No description provided for @postConditionUsed.
  ///
  /// In en, this message translates to:
  /// **'Used'**
  String get postConditionUsed;

  /// No description provided for @postDealTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Deal Type'**
  String get postDealTypeLabel;

  /// No description provided for @postDealTypeSell.
  ///
  /// In en, this message translates to:
  /// **'Sell'**
  String get postDealTypeSell;

  /// No description provided for @postDealTypeExchange.
  ///
  /// In en, this message translates to:
  /// **'Exchange'**
  String get postDealTypeExchange;

  /// No description provided for @postDealTypeFree.
  ///
  /// In en, this message translates to:
  /// **'Free'**
  String get postDealTypeFree;

  /// No description provided for @postSellerTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Seller Type'**
  String get postSellerTypeLabel;

  /// No description provided for @postSellerTypePerson.
  ///
  /// In en, this message translates to:
  /// **'Private'**
  String get postSellerTypePerson;

  /// No description provided for @postSellerTypeBusiness.
  ///
  /// In en, this message translates to:
  /// **'Business'**
  String get postSellerTypeBusiness;

  /// No description provided for @postLocationLabel.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get postLocationLabel;

  /// No description provided for @postLocationHint.
  ///
  /// In en, this message translates to:
  /// **'Select location'**
  String get postLocationHint;

  /// No description provided for @postLocationRequired.
  ///
  /// In en, this message translates to:
  /// **'Location is required'**
  String get postLocationRequired;

  /// No description provided for @postPhotosLabel.
  ///
  /// In en, this message translates to:
  /// **'Photos'**
  String get postPhotosLabel;

  /// No description provided for @postPhotosHint.
  ///
  /// In en, this message translates to:
  /// **'Add up to 8 photos'**
  String get postPhotosHint;

  /// No description provided for @postContactNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Contact Name'**
  String get postContactNameLabel;

  /// No description provided for @postContactNameHint.
  ///
  /// In en, this message translates to:
  /// **'Your name'**
  String get postContactNameHint;

  /// No description provided for @postContactPhoneLabel.
  ///
  /// In en, this message translates to:
  /// **'Contact Phone'**
  String get postContactPhoneLabel;

  /// No description provided for @postContactPhoneHint.
  ///
  /// In en, this message translates to:
  /// **'+998 XX XXX XX XX'**
  String get postContactPhoneHint;

  /// No description provided for @postContactEmailLabel.
  ///
  /// In en, this message translates to:
  /// **'Contact Email'**
  String get postContactEmailLabel;

  /// No description provided for @postContactEmailHint.
  ///
  /// In en, this message translates to:
  /// **'email@example.com'**
  String get postContactEmailHint;

  /// No description provided for @postSubmitButton.
  ///
  /// In en, this message translates to:
  /// **'Publish'**
  String get postSubmitButton;

  /// No description provided for @postSubmitSuccess.
  ///
  /// In en, this message translates to:
  /// **'Listing published successfully'**
  String get postSubmitSuccess;

  /// No description provided for @postNegotiableLabel.
  ///
  /// In en, this message translates to:
  /// **'Price negotiable'**
  String get postNegotiableLabel;

  /// No description provided for @postAttributesTitle.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get postAttributesTitle;

  /// No description provided for @postAdditionalInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'Additional Info'**
  String get postAdditionalInfoTitle;

  /// No description provided for @postContactNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Contact name is required'**
  String get postContactNameRequired;

  /// No description provided for @postLocationSelectRegion.
  ///
  /// In en, this message translates to:
  /// **'Select region'**
  String get postLocationSelectRegion;

  /// No description provided for @postLocationSelectCity.
  ///
  /// In en, this message translates to:
  /// **'Select city'**
  String get postLocationSelectCity;

  /// No description provided for @postLocationUseMyLocation.
  ///
  /// In en, this message translates to:
  /// **'Use my location'**
  String get postLocationUseMyLocation;

  /// No description provided for @postLocationRegions.
  ///
  /// In en, this message translates to:
  /// **'Regions'**
  String get postLocationRegions;

  /// No description provided for @postLocationCities.
  ///
  /// In en, this message translates to:
  /// **'Cities'**
  String get postLocationCities;

  /// No description provided for @postTitleCharCount.
  ///
  /// In en, this message translates to:
  /// **'{current}/{max}'**
  String postTitleCharCount(int current, int max);

  /// No description provided for @postUploadingPhotos.
  ///
  /// In en, this message translates to:
  /// **'Uploading photos...'**
  String get postUploadingPhotos;

  /// No description provided for @postSelectLocation.
  ///
  /// In en, this message translates to:
  /// **'Select location'**
  String get postSelectLocation;

  /// No description provided for @searchTitle.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get searchTitle;

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Search listings...'**
  String get searchHint;

  /// No description provided for @searchNoResults.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get searchNoResults;

  /// No description provided for @searchRecommended.
  ///
  /// In en, this message translates to:
  /// **'Recommended for you'**
  String get searchRecommended;

  /// No description provided for @searchResultCount.
  ///
  /// In en, this message translates to:
  /// **'{count} results'**
  String searchResultCount(int count);

  /// No description provided for @searchFilters.
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get searchFilters;

  /// No description provided for @searchClearFilters.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get searchClearFilters;

  /// No description provided for @searchCondition.
  ///
  /// In en, this message translates to:
  /// **'Condition'**
  String get searchCondition;

  /// No description provided for @searchConditionAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get searchConditionAll;

  /// No description provided for @searchPriceRange.
  ///
  /// In en, this message translates to:
  /// **'Price range'**
  String get searchPriceRange;

  /// No description provided for @searchPriceMin.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get searchPriceMin;

  /// No description provided for @searchPriceMax.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get searchPriceMax;

  /// No description provided for @searchApplyFilters.
  ///
  /// In en, this message translates to:
  /// **'Apply filters'**
  String get searchApplyFilters;

  /// No description provided for @searchSortRelevance.
  ///
  /// In en, this message translates to:
  /// **'Relevance'**
  String get searchSortRelevance;

  /// No description provided for @searchSortNewest.
  ///
  /// In en, this message translates to:
  /// **'Newest first'**
  String get searchSortNewest;

  /// No description provided for @searchSortPriceAsc.
  ///
  /// In en, this message translates to:
  /// **'Price: low to high'**
  String get searchSortPriceAsc;

  /// No description provided for @searchSortPriceDesc.
  ///
  /// In en, this message translates to:
  /// **'Price: high to low'**
  String get searchSortPriceDesc;

  /// No description provided for @detailDescription.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get detailDescription;

  /// No description provided for @detailAttributes.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get detailAttributes;

  /// No description provided for @detailSeller.
  ///
  /// In en, this message translates to:
  /// **'Seller'**
  String get detailSeller;

  /// No description provided for @detailSellerSince.
  ///
  /// In en, this message translates to:
  /// **'On Sail since'**
  String get detailSellerSince;

  /// No description provided for @detailSellerListings.
  ///
  /// In en, this message translates to:
  /// **'Seller\'s other listings'**
  String get detailSellerListings;

  /// No description provided for @detailViewAll.
  ///
  /// In en, this message translates to:
  /// **'View all'**
  String get detailViewAll;

  /// No description provided for @detailFree.
  ///
  /// In en, this message translates to:
  /// **'Free'**
  String get detailFree;

  /// No description provided for @detailNegotiable.
  ///
  /// In en, this message translates to:
  /// **'Negotiable'**
  String get detailNegotiable;

  /// No description provided for @detailShowPhone.
  ///
  /// In en, this message translates to:
  /// **'Show phone'**
  String get detailShowPhone;

  /// No description provided for @detailSendMessage.
  ///
  /// In en, this message translates to:
  /// **'Send message'**
  String get detailSendMessage;

  /// No description provided for @detailChatComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Chat coming soon'**
  String get detailChatComingSoon;

  /// No description provided for @detailLinkCopied.
  ///
  /// In en, this message translates to:
  /// **'Link copied'**
  String get detailLinkCopied;

  /// No description provided for @detailPromoted.
  ///
  /// In en, this message translates to:
  /// **'TOP'**
  String get detailPromoted;

  /// No description provided for @detailLastActive.
  ///
  /// In en, this message translates to:
  /// **'Last active'**
  String get detailLastActive;

  /// No description provided for @detailSellerAllListings.
  ///
  /// In en, this message translates to:
  /// **'All seller\'s listings'**
  String get detailSellerAllListings;

  /// No description provided for @detailLocation.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get detailLocation;

  /// No description provided for @detailReport.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get detailReport;

  /// No description provided for @detailReportConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to report this listing?'**
  String get detailReportConfirm;

  /// No description provided for @detailReportSent.
  ///
  /// In en, this message translates to:
  /// **'Report sent'**
  String get detailReportSent;

  /// No description provided for @detailContactInfo.
  ///
  /// In en, this message translates to:
  /// **'Contact Info'**
  String get detailContactInfo;

  /// No description provided for @detailCopied.
  ///
  /// In en, this message translates to:
  /// **'Copied'**
  String get detailCopied;

  /// No description provided for @generalError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get generalError;

  /// No description provided for @generalRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get generalRetry;

  /// No description provided for @generalSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get generalSave;

  /// No description provided for @generalDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get generalDelete;

  /// No description provided for @generalConfirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get generalConfirm;

  /// No description provided for @generalCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get generalCancel;

  /// No description provided for @generalDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get generalDone;

  /// No description provided for @generalLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get generalLoading;

  /// No description provided for @generalNoResults.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get generalNoResults;

  /// No description provided for @generalSeeAll.
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get generalSeeAll;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ru', 'uz'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'ru':
      return AppLocalizationsRu();
    case 'uz':
      return AppLocalizationsUz();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
