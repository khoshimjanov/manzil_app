// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manzil/localization/domain/language_model.dart';
import 'package:shared_preferences/shared_preferences.dart';


const localeRu = Locale('ru');
const localeUz = Locale('uz');
const localeEn = Locale('en');

const languageCode = 'language_code';

class  LocaleNotifier extends StateNotifier<Locale> {
  final SharedPreferences _prefs;
  LocaleNotifier(this._prefs) : super(const Locale('ru')){
    fetchLocale();
  }

  void fetchLocale() {
    if (_prefs.getString(languageCode) == null) {
      state = localeRu;
    } else {
      state = Locale(_prefs.getString(languageCode)!);
    }
  }

  Future<void> changeLanguage(AppLocale locale) async {
     if (locale == AppLocale.russian) {
      await _prefs.setString(languageCode, 'ru');
      state = localeRu;
    } else if (locale == AppLocale.english) {
      await _prefs.setString(languageCode, 'en');
      state = localeEn;
    } else {
      await _prefs.setString(languageCode, 'uz');
      state = localeUz;
    } 
  }
}
