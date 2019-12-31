import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'persian_material_localizations.dart';

class PersianLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const PersianLocalizationDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['fa'].contains(locale.languageCode);
  }

  @override
  Future<MaterialLocalizations> load(Locale locale) {
    return SynchronousFuture(PersianMaterialLocalizations());
  }

  @override
  bool shouldReload(LocalizationsDelegate old) {
    return false;
  }
}
