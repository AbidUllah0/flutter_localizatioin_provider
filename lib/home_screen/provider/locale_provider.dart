import 'package:flutter/widgets.dart';
import 'package:flutter_localizatioin_provider/l10n/l10n.dart';

class LocaleProvider with ChangeNotifier {
  Locale? _locale;

  Locale? get locale => _locale;

  void setLocale(Locale locale) {
    ///we dont accept other locales(languages without defined in all )
    if (!L10n.all.contains(locale)) return;

    _locale = locale;
    notifyListeners();
  }

  void clearLocale() {
    _locale = null;
    notifyListeners();
  }
}
