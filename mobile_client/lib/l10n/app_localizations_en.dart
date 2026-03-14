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
  String get homeSuggestedTitle => 'Suggested For You';

  @override
  String get homeAllCategories => 'All Categories';

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

  @override
  String get profileTitle => 'Profile';

  @override
  String get profileEditTitle => 'Edit Profile';

  @override
  String get profileDisplayNameLabel => 'Display Name';

  @override
  String get profileDisplayNameHint => 'Enter your name';

  @override
  String get profileAboutLabel => 'About';

  @override
  String get profileAboutHint => 'Tell about yourself';

  @override
  String get profileLocationLabel => 'Location';

  @override
  String get profileSaveButton => 'Save Changes';

  @override
  String get profileSaveSuccess => 'Profile updated successfully';

  @override
  String get profileMyListings => 'My Listings';

  @override
  String get profileFavorites => 'Favorites';

  @override
  String get profileSettings => 'Settings';

  @override
  String get profileLogout => 'Log Out';

  @override
  String get profileLogoutConfirm => 'Are you sure you want to log out?';

  @override
  String get profileCancel => 'Cancel';

  @override
  String profileMemberSince(Object date) {
    return 'Member since $date';
  }

  @override
  String get settingsTitle => 'Settings';

  @override
  String get settingsProfileTab => 'Profile';

  @override
  String get settingsSecurityTab => 'Security';

  @override
  String get settingsTelegramTab => 'Telegram';

  @override
  String get settingsAccountTab => 'Account';

  @override
  String get securityTitle => 'Security';

  @override
  String get securityChangePassword => 'Change Password';

  @override
  String get securitySetPassword => 'Set Password';

  @override
  String get securityCurrentPassword => 'Current Password';

  @override
  String get securityNewPassword => 'New Password';

  @override
  String get securityConfirmPassword => 'Confirm New Password';

  @override
  String get securityPasswordChanged => 'Password changed successfully';

  @override
  String get securityPasswordSet => 'Password set successfully';

  @override
  String get securityPasswordMismatch => 'Passwords do not match';

  @override
  String get securityPasswordRequired => 'Password is required';

  @override
  String get securityPasswordMinLength =>
      'Password must be at least 6 characters';

  @override
  String get telegramTitle => 'Telegram';

  @override
  String get telegramConnected => 'Connected';

  @override
  String get telegramNotConnected => 'Not connected';

  @override
  String get telegramLinkAccount => 'Link Telegram Account';

  @override
  String get telegramUnlinkAccount => 'Unlink Telegram';

  @override
  String get telegramUnlinkConfirm =>
      'Are you sure you want to unlink your Telegram account?';

  @override
  String telegramLinkedAs(Object username) {
    return 'Linked as @$username';
  }

  @override
  String get accountTitle => 'Account';

  @override
  String get accountDeleteTitle => 'Delete Account';

  @override
  String get accountDeleteDescription =>
      'This action is permanent and cannot be undone. All your data will be deleted.';

  @override
  String get accountDeleteConfirm =>
      'Are you sure you want to delete your account?';

  @override
  String get accountDeleteButton => 'Delete Account';

  @override
  String get postTitle => 'Create Listing';

  @override
  String get postEditTitle => 'Edit Listing';

  @override
  String get postCategoryLabel => 'Category';

  @override
  String get postCategoryHint => 'Select a category';

  @override
  String get postCategoryRequired => 'Please select a category';

  @override
  String get postTitleLabel => 'Title';

  @override
  String get postTitleHint => 'What are you selling?';

  @override
  String get postTitleRequired => 'Title is required';

  @override
  String get postDescriptionLabel => 'Description';

  @override
  String get postDescriptionHint => 'Describe your item in detail';

  @override
  String get postPriceLabel => 'Price';

  @override
  String get postPriceHint => '0';

  @override
  String get postPriceRequired => 'Price is required';

  @override
  String get postCurrencyLabel => 'Currency';

  @override
  String get postConditionLabel => 'Condition';

  @override
  String get postConditionNew => 'New';

  @override
  String get postConditionUsed => 'Used';

  @override
  String get postDealTypeLabel => 'Deal Type';

  @override
  String get postDealTypeSell => 'Sell';

  @override
  String get postDealTypeExchange => 'Exchange';

  @override
  String get postDealTypeFree => 'Free';

  @override
  String get postSellerTypeLabel => 'Seller Type';

  @override
  String get postSellerTypePerson => 'Private';

  @override
  String get postSellerTypeBusiness => 'Business';

  @override
  String get postLocationLabel => 'Location';

  @override
  String get postLocationHint => 'Select location';

  @override
  String get postLocationRequired => 'Location is required';

  @override
  String get postPhotosLabel => 'Photos';

  @override
  String get postPhotosHint => 'Add up to 8 photos';

  @override
  String get postContactNameLabel => 'Contact Name';

  @override
  String get postContactNameHint => 'Your name';

  @override
  String get postContactPhoneLabel => 'Contact Phone';

  @override
  String get postContactPhoneHint => '+998 XX XXX XX XX';

  @override
  String get postContactEmailLabel => 'Contact Email';

  @override
  String get postContactEmailHint => 'email@example.com';

  @override
  String get postSubmitButton => 'Publish';

  @override
  String get postSubmitSuccess => 'Listing published successfully';

  @override
  String get postNegotiableLabel => 'Price negotiable';

  @override
  String get postAttributesTitle => 'Details';

  @override
  String get postAdditionalInfoTitle => 'Additional Info';

  @override
  String get postContactNameRequired => 'Contact name is required';

  @override
  String get postLocationSelectRegion => 'Select region';

  @override
  String get postLocationSelectCity => 'Select city';

  @override
  String get postLocationUseMyLocation => 'Use my location';

  @override
  String get postLocationRegions => 'Regions';

  @override
  String get postLocationCities => 'Cities';

  @override
  String postTitleCharCount(int current, int max) {
    return '$current/$max';
  }

  @override
  String get postUploadingPhotos => 'Uploading photos...';

  @override
  String get postSelectLocation => 'Select location';

  @override
  String get searchTitle => 'Search';

  @override
  String get searchHint => 'Search listings...';

  @override
  String get searchNoResults => 'No results found';

  @override
  String get searchRecommended => 'Recommended for you';

  @override
  String searchResultCount(int count) {
    return '$count results';
  }

  @override
  String get searchFilters => 'Filters';

  @override
  String get searchClearFilters => 'Clear';

  @override
  String get searchCondition => 'Condition';

  @override
  String get searchConditionAll => 'All';

  @override
  String get searchPriceRange => 'Price range';

  @override
  String get searchPriceMin => 'From';

  @override
  String get searchPriceMax => 'To';

  @override
  String get searchApplyFilters => 'Apply filters';

  @override
  String get searchSortRelevance => 'Relevance';

  @override
  String get searchSortNewest => 'Newest first';

  @override
  String get searchSortPriceAsc => 'Price: low to high';

  @override
  String get searchSortPriceDesc => 'Price: high to low';

  @override
  String get detailDescription => 'Description';

  @override
  String get detailAttributes => 'Details';

  @override
  String get detailSeller => 'Seller';

  @override
  String get detailSellerSince => 'On Sail since';

  @override
  String get detailSellerListings => 'Seller\'s other listings';

  @override
  String get detailViewAll => 'View all';

  @override
  String get detailFree => 'Free';

  @override
  String get detailNegotiable => 'Negotiable';

  @override
  String get detailShowPhone => 'Show phone';

  @override
  String get detailSendMessage => 'Send message';

  @override
  String get detailChatComingSoon => 'Chat coming soon';

  @override
  String get detailLinkCopied => 'Link copied';

  @override
  String get detailPromoted => 'TOP';

  @override
  String get detailLastActive => 'Last active';

  @override
  String get detailSellerAllListings => 'All seller\'s listings';

  @override
  String get detailLocation => 'Location';

  @override
  String get detailReport => 'Report';

  @override
  String get detailReportConfirm =>
      'Are you sure you want to report this listing?';

  @override
  String get detailReportSent => 'Report sent';

  @override
  String get detailContactInfo => 'Contact Info';

  @override
  String get detailCopied => 'Copied';

  @override
  String get generalError => 'Something went wrong';

  @override
  String get generalRetry => 'Retry';

  @override
  String get generalSave => 'Save';

  @override
  String get generalDelete => 'Delete';

  @override
  String get generalConfirm => 'Confirm';

  @override
  String get generalCancel => 'Cancel';

  @override
  String get generalDone => 'Done';

  @override
  String get generalLoading => 'Loading...';

  @override
  String get generalNoResults => 'No results found';

  @override
  String get generalSeeAll => 'See All';
}
