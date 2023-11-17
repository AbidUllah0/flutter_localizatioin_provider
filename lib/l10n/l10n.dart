import 'dart:ui';

class L10n {
  static List<Locale> all = const [
    Locale('en'), //english
    Locale('es'), //spanish
    Locale('id'), //bahasa indonesia
    Locale('ar'), //arabic
    Locale('hi'), //hindi
    Locale('de'), //german
  ];

  static String getFlag(String code) {
    switch (code) {
      case 'en':
        return '🇬🇧';
      case 'es':
        return '🇪🇸';
      case 'id':
        return '🇮🇩';
      case 'ar':
        return '🇦🇪';
      case 'hi':
        return '🇮🇳';
      default:
        return '🇩🇪';
    }
  }
}
