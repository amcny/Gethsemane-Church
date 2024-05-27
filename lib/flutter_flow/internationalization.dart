import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'te'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? teText = '',
  }) =>
      [enText, teText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // onboarding
  {
    'a41bogkl': {
      'en': 'Get Started',
      'te': '',
    },
    'vsvyvztr': {
      'en': 'Gethsemane Church\nGuntur',
      'te': '',
    },
    'fcv8mdh6': {
      'en': 'Revive',
      'te': '',
    },
    'klgq3dxj': {
      'en': ' · ',
      'te': '',
    },
    'cppd1tdd': {
      'en': 'Refresh',
      'te': '',
    },
    '2hggitjp': {
      'en': ' · ',
      'te': '',
    },
    'yloyifit': {
      'en': 'Regain',
      'te': '',
    },
    'smaepx3o': {
      'en': 'Home',
      'te': '',
    },
  },
  // Miscellaneous
  {
    'x3fwh110': {
      'en': '',
      'te': '',
    },
    'gly9oe7h': {
      'en': '',
      'te': '',
    },
    'qsn8oxhj': {
      'en': '',
      'te': '',
    },
    '49ujdihx': {
      'en': '',
      'te': '',
    },
    'blqdo6dh': {
      'en': '',
      'te': '',
    },
    'cdi6msy5': {
      'en': '',
      'te': '',
    },
    'jmkec86a': {
      'en': '',
      'te': '',
    },
    'bjntvoox': {
      'en': '',
      'te': '',
    },
    'b2dviy3k': {
      'en': '',
      'te': '',
    },
    '5sa7cugp': {
      'en': '',
      'te': '',
    },
    'dae74fqq': {
      'en': '',
      'te': '',
    },
    'ox0eydxf': {
      'en': '',
      'te': '',
    },
    'whxf5gnq': {
      'en': '',
      'te': '',
    },
    'k9ux7en0': {
      'en': '',
      'te': '',
    },
    '95eldu64': {
      'en': '',
      'te': '',
    },
    '7ia32fjp': {
      'en': '',
      'te': '',
    },
    '1ct50x5w': {
      'en': '',
      'te': '',
    },
    'q1mlh7zl': {
      'en': '',
      'te': '',
    },
    '9w1tdvkk': {
      'en': '',
      'te': '',
    },
    'ioucdw98': {
      'en': '',
      'te': '',
    },
    'wvaevs73': {
      'en': '',
      'te': '',
    },
    '7zggl1wu': {
      'en': '',
      'te': '',
    },
    'h96klkqu': {
      'en': '',
      'te': '',
    },
    'xvqmvkuo': {
      'en': '',
      'te': '',
    },
    'wijueb4t': {
      'en': '',
      'te': '',
    },
  },
].reduce((a, b) => a..addAll(b));
