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
  String get homeSuggestedTitle => 'Рекомендуемые для вас';

  @override
  String get homeAllCategories => 'Все категории';

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

  @override
  String get profileTitle => 'Профиль';

  @override
  String get profileEditTitle => 'Редактировать профиль';

  @override
  String get profileDisplayNameLabel => 'Имя';

  @override
  String get profileDisplayNameHint => 'Введите ваше имя';

  @override
  String get profileAboutLabel => 'О себе';

  @override
  String get profileAboutHint => 'Расскажите о себе';

  @override
  String get profileLocationLabel => 'Местоположение';

  @override
  String get profileSaveButton => 'Сохранить изменения';

  @override
  String get profileSaveSuccess => 'Профиль обновлён';

  @override
  String get profileMyListings => 'Мои объявления';

  @override
  String get profileFavorites => 'Избранное';

  @override
  String get profileSettings => 'Настройки';

  @override
  String get profileLogout => 'Выйти';

  @override
  String get profileLogoutConfirm => 'Вы уверены, что хотите выйти?';

  @override
  String get profileCancel => 'Отмена';

  @override
  String profileMemberSince(Object date) {
    return 'На сайте с $date';
  }

  @override
  String get settingsTitle => 'Настройки';

  @override
  String get settingsProfileTab => 'Профиль';

  @override
  String get settingsSecurityTab => 'Безопасность';

  @override
  String get settingsTelegramTab => 'Telegram';

  @override
  String get settingsAccountTab => 'Аккаунт';

  @override
  String get securityTitle => 'Безопасность';

  @override
  String get securityChangePassword => 'Изменить пароль';

  @override
  String get securitySetPassword => 'Установить пароль';

  @override
  String get securityCurrentPassword => 'Текущий пароль';

  @override
  String get securityNewPassword => 'Новый пароль';

  @override
  String get securityConfirmPassword => 'Подтвердите новый пароль';

  @override
  String get securityPasswordChanged => 'Пароль успешно изменён';

  @override
  String get securityPasswordSet => 'Пароль успешно установлен';

  @override
  String get securityPasswordMismatch => 'Пароли не совпадают';

  @override
  String get securityPasswordRequired => 'Пароль обязателен';

  @override
  String get securityPasswordMinLength =>
      'Пароль должен быть не менее 6 символов';

  @override
  String get telegramTitle => 'Telegram';

  @override
  String get telegramConnected => 'Подключён';

  @override
  String get telegramNotConnected => 'Не подключён';

  @override
  String get telegramLinkAccount => 'Привязать Telegram';

  @override
  String get telegramUnlinkAccount => 'Отвязать Telegram';

  @override
  String get telegramUnlinkConfirm =>
      'Вы уверены, что хотите отвязать Telegram?';

  @override
  String telegramLinkedAs(Object username) {
    return 'Привязан как @$username';
  }

  @override
  String get accountTitle => 'Аккаунт';

  @override
  String get accountDeleteTitle => 'Удалить аккаунт';

  @override
  String get accountDeleteDescription =>
      'Это действие необратимо. Все ваши данные будут удалены.';

  @override
  String get accountDeleteConfirm => 'Вы уверены, что хотите удалить аккаунт?';

  @override
  String get accountDeleteButton => 'Удалить аккаунт';

  @override
  String get postTitle => 'Создать объявление';

  @override
  String get postEditTitle => 'Редактировать объявление';

  @override
  String get postCategoryLabel => 'Категория';

  @override
  String get postCategoryHint => 'Выберите категорию';

  @override
  String get postCategoryRequired => 'Выберите категорию';

  @override
  String get postTitleLabel => 'Название';

  @override
  String get postTitleHint => 'Что вы продаёте?';

  @override
  String get postTitleRequired => 'Название обязательно';

  @override
  String get postDescriptionLabel => 'Описание';

  @override
  String get postDescriptionHint => 'Подробно опишите товар';

  @override
  String get postPriceLabel => 'Цена';

  @override
  String get postPriceHint => '0';

  @override
  String get postPriceRequired => 'Цена обязательна';

  @override
  String get postCurrencyLabel => 'Валюта';

  @override
  String get postConditionLabel => 'Состояние';

  @override
  String get postConditionNew => 'Новый';

  @override
  String get postConditionUsed => 'Б/У';

  @override
  String get postDealTypeLabel => 'Тип сделки';

  @override
  String get postDealTypeSell => 'Продажа';

  @override
  String get postDealTypeExchange => 'Обмен';

  @override
  String get postDealTypeFree => 'Бесплатно';

  @override
  String get postSellerTypeLabel => 'Тип продавца';

  @override
  String get postSellerTypePerson => 'Частное лицо';

  @override
  String get postSellerTypeBusiness => 'Бизнес';

  @override
  String get postLocationLabel => 'Местоположение';

  @override
  String get postLocationHint => 'Выберите местоположение';

  @override
  String get postLocationRequired => 'Местоположение обязательно';

  @override
  String get postPhotosLabel => 'Фото';

  @override
  String get postPhotosHint => 'Добавьте до 8 фото';

  @override
  String get postContactNameLabel => 'Контактное имя';

  @override
  String get postContactNameHint => 'Ваше имя';

  @override
  String get postContactPhoneLabel => 'Контактный телефон';

  @override
  String get postContactPhoneHint => '+998 XX XXX XX XX';

  @override
  String get postContactEmailLabel => 'Контактный email';

  @override
  String get postContactEmailHint => 'email@example.com';

  @override
  String get postSubmitButton => 'Опубликовать';

  @override
  String get postSubmitSuccess => 'Объявление опубликовано';

  @override
  String get postNegotiableLabel => 'Цена договорная';

  @override
  String get postAttributesTitle => 'Характеристики';

  @override
  String get postAdditionalInfoTitle => 'Дополнительная информация';

  @override
  String get postContactNameRequired => 'Имя обязательно';

  @override
  String get postLocationSelectRegion => 'Выберите область';

  @override
  String get postLocationSelectCity => 'Выберите город';

  @override
  String get postLocationUseMyLocation => 'Моё местоположение';

  @override
  String get postLocationRegions => 'Области';

  @override
  String get postLocationCities => 'Города';

  @override
  String postTitleCharCount(int current, int max) {
    return '$current/$max';
  }

  @override
  String get postUploadingPhotos => 'Загрузка фото...';

  @override
  String get postSelectLocation => 'Выберите местоположение';

  @override
  String get searchTitle => 'Поиск';

  @override
  String get searchHint => 'Поиск объявлений...';

  @override
  String get searchNoResults => 'Ничего не найдено';

  @override
  String get searchRecommended => 'Рекомендуемые';

  @override
  String searchResultCount(int count) {
    return '$count результатов';
  }

  @override
  String get searchFilters => 'Фильтры';

  @override
  String get searchClearFilters => 'Сбросить';

  @override
  String get searchCondition => 'Состояние';

  @override
  String get searchConditionAll => 'Все';

  @override
  String get searchPriceRange => 'Диапазон цен';

  @override
  String get searchPriceMin => 'От';

  @override
  String get searchPriceMax => 'До';

  @override
  String get searchApplyFilters => 'Применить';

  @override
  String get searchSortRelevance => 'По релевантности';

  @override
  String get searchSortNewest => 'Сначала новые';

  @override
  String get searchSortPriceAsc => 'Цена: по возрастанию';

  @override
  String get searchSortPriceDesc => 'Цена: по убыванию';

  @override
  String get detailDescription => 'Описание';

  @override
  String get detailAttributes => 'Характеристики';

  @override
  String get detailSeller => 'Продавец';

  @override
  String get detailSellerSince => 'На Sail с';

  @override
  String get detailSellerListings => 'Другие объявления продавца';

  @override
  String get detailViewAll => 'Все';

  @override
  String get detailFree => 'Бесплатно';

  @override
  String get detailNegotiable => 'Договорная';

  @override
  String get detailShowPhone => 'Показать телефон';

  @override
  String get detailSendMessage => 'Написать';

  @override
  String get detailChatComingSoon => 'Чат скоро будет доступен';

  @override
  String get detailLinkCopied => 'Ссылка скопирована';

  @override
  String get detailPromoted => 'TOP';

  @override
  String get detailLastActive => 'Был(а) в сети';

  @override
  String get detailSellerAllListings => 'Все объявления продавца';

  @override
  String get detailLocation => 'Местоположение';

  @override
  String get detailReport => 'Пожаловаться';

  @override
  String get detailReportConfirm =>
      'Вы уверены, что хотите пожаловаться на это объявление?';

  @override
  String get detailReportSent => 'Жалоба отправлена';

  @override
  String get detailContactInfo => 'Контактная информация';

  @override
  String get detailCopied => 'Скопировано';

  @override
  String get generalError => 'Что-то пошло не так';

  @override
  String get generalRetry => 'Повторить';

  @override
  String get generalSave => 'Сохранить';

  @override
  String get generalDelete => 'Удалить';

  @override
  String get generalConfirm => 'Подтвердить';

  @override
  String get generalCancel => 'Отмена';

  @override
  String get generalDone => 'Готово';

  @override
  String get generalLoading => 'Загрузка...';

  @override
  String get generalNoResults => 'Ничего не найдено';

  @override
  String get generalSeeAll => 'Показать все';
}
