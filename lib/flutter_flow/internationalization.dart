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
    'a41bogkl': {
      'en': 'Get Started',
      'te': '',
    },
    'smaepx3o': {
      'en': 'Home',
      'te': '',
    },
  },
  // login
  {
    'ee8v8dfz': {
      'en': 'Login',
      'te': '',
    },
    '4pt94s8h': {
      'en': 'Email',
      'te': '',
    },
    '23hrd11x': {
      'en': 'Password',
      'te': '',
    },
    '0augqnb1': {
      'en': 'Submit',
      'te': '',
    },
    'vj6taey4': {
      'en': 'Forgot Password?',
      'te': '',
    },
    'oazndi5g': {
      'en': 'Don\'t have an account? ',
      'te': '',
    },
    'kzjt2ejo': {
      'en': 'Sign up here',
      'te': '',
    },
    '9qvroqh7': {
      'en': 'Don\'t have an account? Sign up here',
      'te': '',
    },
    'qo5637j5': {
      'en': 'Gethsemane Church',
      'te': '',
    },
    'xzwpiu0t': {
      'en': 'Revive',
      'te': '',
    },
    'pi1w9m37': {
      'en': ' · ',
      'te': '',
    },
    'vpxklbr4': {
      'en': 'Refresh',
      'te': '',
    },
    't1fisfbh': {
      'en': ' · ',
      'te': '',
    },
    '0scll0cm': {
      'en': 'Regain',
      'te': '',
    },
    'm4dcn61h': {
      'en': 'Home',
      'te': '',
    },
  },
  // signup
  {
    's6mf1q21': {
      'en': 'Sign up',
      'te': '',
    },
    'g9tyig20': {
      'en': 'Email',
      'te': '',
    },
    'ri25yjtw': {
      'en': 'Password',
      'te': '',
    },
    '9et1id6q': {
      'en': 'Submit',
      'te': '',
    },
    '6id43nkg': {
      'en': 'Already have an account?  ',
      'te': '',
    },
    'b72xulji': {
      'en': 'Login here',
      'te': '',
    },
    '0wciu16f': {
      'en': 'Don\'t have an account? Sign up here',
      'te': '',
    },
    'v4jdzt1z': {
      'en': 'Gethsemane Church',
      'te': '',
    },
    '0qbt7yop': {
      'en': 'Revive',
      'te': '',
    },
    'bq162vwv': {
      'en': ' · ',
      'te': '',
    },
    '0vvt46ub': {
      'en': 'Refresh',
      'te': '',
    },
    '0yjcocfo': {
      'en': ' · ',
      'te': '',
    },
    'nx16qtmt': {
      'en': 'Regain',
      'te': '',
    },
    'ktvkcu4d': {
      'en': 'Home',
      'te': '',
    },
  },
  // homepage
  {
    'i7j43r7a': {
      'en': 'Home',
      'te': '',
    },
  },
  // selection
  {
    '7o3rsbhh': {
      'en': 'Select your Church Branch',
      'te': '',
    },
    'gcefmz32': {
      'en': 'NGO\'s Colony',
      'te': '',
    },
    'hzs1cftf': {
      'en': 'Nethaji Nagar',
      'te': '',
    },
    '9cm40ujm': {
      'en': 'Pulladi Gunta',
      'te': '',
    },
    'x2ie96j2': {
      'en': 'Etukuru',
      'te': '',
    },
    'b5hu7z1h': {
      'en': 'Rajendra Nagar',
      'te': '',
    },
    '2nty70uc': {
      'en': 'Submit',
      'te': '',
    },
    'vag57etp': {
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
