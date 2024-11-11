// import 'dart:ui';

// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:manzil/localization/domain/language_model.dart';
// import 'package:shared_preferences/shared_preferences.dart';


// class  AuthNotifier extends StateNotifier<Locale> {
//   final SharedPreferences _prefs;
//   AuthNotifier(this._prefs) : super(const Locale('ru')){
//     fetchLocale();
//   }

//   void fetchLocale() {

//     if (_prefs.getString(languageCode) == null) {
//       state = localeRu;
//     } else {
//       state = Locale(_prefs.getString(languageCode)!);
//     }
//   }

//   Future<void> changeLanguage(AppLocale locale) async {
//      if (locale == AppLocale.russian) {
//       await _prefs.setString(languageCode, 'ru');
//       state = localeRu;
//     } else if (locale == AppLocale.english) {
//       await _prefs.setString(languageCode, 'en');
//       state = localeEn;
//     } else {
//       await _prefs.setString(languageCode, 'uz');
//       state = localeUz;
//     }
    
//   }
// }
