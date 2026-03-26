import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_tr.dart';

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

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
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
  static const List<Locale> supportedLocales = <Locale>[Locale('tr')];

  /// No description provided for @splash_info_text.
  ///
  /// In tr, this message translates to:
  /// **'Geleceği Şekillendirin, \nKarbon Ayak İzinizi \nKüçültün!'**
  String get splash_info_text;

  /// No description provided for @login_button_title_bizizmir.
  ///
  /// In tr, this message translates to:
  /// **'Bizizmir ile Giriş Yap'**
  String get login_button_title_bizizmir;

  /// No description provided for @register_button_bizizmir.
  ///
  /// In tr, this message translates to:
  /// **'Bizizmir ile Kayıt Ol'**
  String get register_button_bizizmir;

  /// No description provided for @login_info_text.
  ///
  /// In tr, this message translates to:
  /// **'Giriş yapmak için Bizizmir kullanıcı bilgilerinizi \ndoldurunuz.'**
  String get login_info_text;

  /// No description provided for @login_title.
  ///
  /// In tr, this message translates to:
  /// **'Geleceği Şekillendirmeye \nHoş Geldin!'**
  String get login_title;

  /// No description provided for @login_tc_or_email_textfield_text.
  ///
  /// In tr, this message translates to:
  /// **'E-Posta ya da T.C. Kimlik Numaranız'**
  String get login_tc_or_email_textfield_text;

  /// No description provided for @login_password_textfield_text.
  ///
  /// In tr, this message translates to:
  /// **'Şifreniz'**
  String get login_password_textfield_text;

  /// No description provided for @login_forgot_password_text.
  ///
  /// In tr, this message translates to:
  /// **'Şifremi Unuttum'**
  String get login_forgot_password_text;

  /// No description provided for @login_error_empty_fields.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen e-posta ve şifre alanlarını doldurunuz.'**
  String get login_error_empty_fields;

  /// No description provided for @forgot_password_info_text.
  ///
  /// In tr, this message translates to:
  /// **'Şifrenizi yenilemek için kayıtlı telefon numaranızı \ngirip “Kod Gönder” butpnuna basınız.'**
  String get forgot_password_info_text;

  /// No description provided for @forgot_password_title.
  ///
  /// In tr, this message translates to:
  /// **'Geleceği Şekillendirmek için \nŞifreni Yakala!'**
  String get forgot_password_title;

  /// No description provided for @forgot_password_textfield_text.
  ///
  /// In tr, this message translates to:
  /// **'Cep Telefonu Numaranız'**
  String get forgot_password_textfield_text;

  /// No description provided for @forgot_password_button_title.
  ///
  /// In tr, this message translates to:
  /// **'Kod Gönder'**
  String get forgot_password_button_title;

  /// No description provided for @register_info_text.
  ///
  /// In tr, this message translates to:
  /// **'Kayıt olduğunuzda Bizizmir kullanıcısı da \nolacaksınız.'**
  String get register_info_text;

  /// No description provided for @register_title.
  ///
  /// In tr, this message translates to:
  /// **'Geleceği Şekillendirmek için \nKaydoluyorsun!'**
  String get register_title;

  /// No description provided for @register_email_textfield_text.
  ///
  /// In tr, this message translates to:
  /// **'E-Posta Adresiniz'**
  String get register_email_textfield_text;

  /// No description provided for @register_tcno_textfield_text.
  ///
  /// In tr, this message translates to:
  /// **'T.C. Kimlik No'**
  String get register_tcno_textfield_text;

  /// No description provided for @register_name_textfield_text.
  ///
  /// In tr, this message translates to:
  /// **'Adınız'**
  String get register_name_textfield_text;

  /// No description provided for @register_surname_textfield_text.
  ///
  /// In tr, this message translates to:
  /// **'Soyadınız'**
  String get register_surname_textfield_text;

  /// No description provided for @register_dogum_tarihi_textfield_text.
  ///
  /// In tr, this message translates to:
  /// **'Doğum Tarihiniz'**
  String get register_dogum_tarihi_textfield_text;

  /// No description provided for @register_password_textfield_text.
  ///
  /// In tr, this message translates to:
  /// **'Şifrenizi Giriniz'**
  String get register_password_textfield_text;

  /// No description provided for @register_confirm_password_textfield_text.
  ///
  /// In tr, this message translates to:
  /// **'Şifreniz Tekrar Giriniz'**
  String get register_confirm_password_textfield_text;

  /// No description provided for @register_phone_textfield_text.
  ///
  /// In tr, this message translates to:
  /// **'Cep Telefonu'**
  String get register_phone_textfield_text;

  /// No description provided for @kvkk_info_text.
  ///
  /// In tr, this message translates to:
  /// **'KVKK Sözleşmesini kabul ediyorum.'**
  String get kvkk_info_text;

  /// No description provided for @register_button_title.
  ///
  /// In tr, this message translates to:
  /// **'Kayıt Ol'**
  String get register_button_title;

  /// No description provided for @reset_password_textfield_text.
  ///
  /// In tr, this message translates to:
  /// **'Şifrenizi Giriniz'**
  String get reset_password_textfield_text;

  /// No description provided for @reset_password_confirm_password_textfield_text.
  ///
  /// In tr, this message translates to:
  /// **'Şifreniz Tekrar Giriniz'**
  String get reset_password_confirm_password_textfield_text;

  /// No description provided for @reset_password_info_text.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen telefon numaranıza SMS olarak gelen \n5 haneli kodu giriniz.'**
  String get reset_password_info_text;

  /// No description provided for @reset_password_button_title.
  ///
  /// In tr, this message translates to:
  /// **'Şifremi Değiştir'**
  String get reset_password_button_title;

  /// No description provided for @home_page_header_text.
  ///
  /// In tr, this message translates to:
  /// **'Karbon Salım'**
  String get home_page_header_text;

  /// No description provided for @home_page_stats_card_1_title.
  ///
  /// In tr, this message translates to:
  /// **'Ulaşılması Hedeflenen Ağaç'**
  String get home_page_stats_card_1_title;

  /// No description provided for @home_page_stats_card_2_title.
  ///
  /// In tr, this message translates to:
  /// **'Bir Ayda Hedeflenen Ağaç'**
  String get home_page_stats_card_2_title;

  /// No description provided for @home_page_leader_of_month_header_text.
  ///
  /// In tr, this message translates to:
  /// **'Bu Ayın Yaşam Liderleri'**
  String get home_page_leader_of_month_header_text;

  /// No description provided for @home_page_see_others_text.
  ///
  /// In tr, this message translates to:
  /// **'Diğer Liderleri Gör'**
  String get home_page_see_others_text;

  /// No description provided for @useful_infos_button_title.
  ///
  /// In tr, this message translates to:
  /// **'Faydalı Bilgiler'**
  String get useful_infos_button_title;

  /// No description provided for @carbon_calculate_button_title.
  ///
  /// In tr, this message translates to:
  /// **'Karbon Ayak İzi Hesapla'**
  String get carbon_calculate_button_title;

  /// No description provided for @carbon_calculate_header_text.
  ///
  /// In tr, this message translates to:
  /// **'Karbon Ayak İzi Hesapla'**
  String get carbon_calculate_header_text;

  /// No description provided for @carbon_calculate_title.
  ///
  /// In tr, this message translates to:
  /// **'Karbon Ayak İzini Hesaplamaya Hoş Geldin!'**
  String get carbon_calculate_title;

  /// No description provided for @carbon_calculate_info_text.
  ///
  /// In tr, this message translates to:
  /// **'Çevresel farkındalığını artırarak karbon ayak izini hesaplamaya başladın ve sürdürülebilir alışkanlıklar benimseyerek doğal kaynakları daha bilinçli kullanmaya adım atıyorsun. Atık azaltma ve geri dönüşüm gibi çabaların küçük adımlar olarak görülebilir, ancak bunlar gelecek nesillere daha yaşanabilir bir dünya bırakma hedefine ulaşmada önemli katkılardır. Çevresel sorumluluklarını sürdürdükçe, çevrende ve toplumda ilham kaynağı olmaya devam edebilirsin.'**
  String get carbon_calculate_info_text;

  /// No description provided for @carbon_calculate_idiom.
  ///
  /// In tr, this message translates to:
  /// **'Küçük adımlar, büyük gelecek!'**
  String get carbon_calculate_idiom;

  /// No description provided for @carbon_calculate_first_step_button_title.
  ///
  /// In tr, this message translates to:
  /// **'Hemen Başla'**
  String get carbon_calculate_first_step_button_title;

  /// No description provided for @carbon_calculate_question_back_button_title.
  ///
  /// In tr, this message translates to:
  /// **'Önceki'**
  String get carbon_calculate_question_back_button_title;

  /// No description provided for @carbon_calculate_question_next_button_title.
  ///
  /// In tr, this message translates to:
  /// **'Sonraki'**
  String get carbon_calculate_question_next_button_title;

  /// No description provided for @carbon_calculate_question_next_warning_title.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen bir seçim yapınız!'**
  String get carbon_calculate_question_next_warning_title;

  /// No description provided for @carbon_calculate_first_question_button_title.
  ///
  /// In tr, this message translates to:
  /// **'Sonraki Soru'**
  String get carbon_calculate_first_question_button_title;

  /// No description provided for @carbon_calculate_last_question_button_title.
  ///
  /// In tr, this message translates to:
  /// **'Bitir'**
  String get carbon_calculate_last_question_button_title;

  /// No description provided for @carbon_calculate_calculate_again_button_title.
  ///
  /// In tr, this message translates to:
  /// **'Tekrar Hesapla'**
  String get carbon_calculate_calculate_again_button_title;

  /// No description provided for @carbon_calculate_go_to_home_button_title.
  ///
  /// In tr, this message translates to:
  /// **'Ana Sayfaya Dön'**
  String get carbon_calculate_go_to_home_button_title;

  /// No description provided for @carbon_calculate_result_header_text.
  ///
  /// In tr, this message translates to:
  /// **'Karbon Ayak İzi Sonuç'**
  String get carbon_calculate_result_header_text;

  /// No description provided for @carbon_score_board_title.
  ///
  /// In tr, this message translates to:
  /// **'Karbon Ayak İzi Skorun'**
  String get carbon_score_board_title;

  /// No description provided for @carbon_score_text_title.
  ///
  /// In tr, this message translates to:
  /// **'Tebrikler!'**
  String get carbon_score_text_title;

  /// No description provided for @carbon_score_text_description.
  ///
  /// In tr, this message translates to:
  /// **'Gezegen için uyguladığın bireysel adımlarınla sürdürülebilir bir çevre ve gelecek kuşaklar için fark yaratıyorsun. Karbon ayak izi farkındalığı ile ilgili uygulamalarını etrafınla paylaşabilir ve bu alışkanlıkların yayılmasına katkıda bulunabilirsin'**
  String get carbon_score_text_description;

  /// No description provided for @useful_infos_header_text.
  ///
  /// In tr, this message translates to:
  /// **'Faydalı Bilgiler'**
  String get useful_infos_header_text;

  /// No description provided for @leaderofmonth_header_text.
  ///
  /// In tr, this message translates to:
  /// **'Bu Hedefin Liderleri'**
  String get leaderofmonth_header_text;

  /// No description provided for @leaderofmonth_bottom_footer_text.
  ///
  /// In tr, this message translates to:
  /// **'Kazananları tebrik eder, sıralamaya giren her arkadaşımızın çabası için teşekkür ederiz. Unutmayın bu sırada yer alacak olan yarın sizsiniz!'**
  String get leaderofmonth_bottom_footer_text;

  /// No description provided for @daily_activities_today_section_header_text.
  ///
  /// In tr, this message translates to:
  /// **'Bugünün Soruları'**
  String get daily_activities_today_section_header_text;

  /// No description provided for @daily_activities_info_text.
  ///
  /// In tr, this message translates to:
  /// **'Günlük aktivitelerden elde ettiğiniz skorlar “Puanlar” tabında gösterilir. Oradan bugün için aldığınız toplam puanı takip edebilirsiniz.'**
  String get daily_activities_info_text;

  /// No description provided for @daily_activities_empty_hint.
  ///
  /// In tr, this message translates to:
  /// **'Bugün için soru bulunmuyor.'**
  String get daily_activities_empty_hint;

  /// No description provided for @daily_activities_history_section_header_text.
  ///
  /// In tr, this message translates to:
  /// **'Önceki Cevaplarınız'**
  String get daily_activities_history_section_header_text;

  /// No description provided for @selected_question_header_text.
  ///
  /// In tr, this message translates to:
  /// **'Seçili Soru Detayı'**
  String get selected_question_header_text;

  /// No description provided for @selected_question_bottom_button_title.
  ///
  /// In tr, this message translates to:
  /// **'Puanı Al'**
  String get selected_question_bottom_button_title;

  /// No description provided for @lorem_ipsum.
  ///
  /// In tr, this message translates to:
  /// **'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.'**
  String get lorem_ipsum;
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
      <String>['tr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'tr':
      return AppLocalizationsTr();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
