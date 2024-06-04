import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manzil/localization/application/app_language.dart';
import 'package:shared_preferences/shared_preferences.dart';


final sharedPrefsProvider = Provider<SharedPreferences>(
  (ref) => throw UnimplementedError(),
);
final localeNotifierProvider = StateNotifierProvider<LocaleNotifier, Locale>(
  (ref) => LocaleNotifier(
    ref.watch(sharedPrefsProvider),
  ),
);
final dioNotifierProvider =  Provider<Dio>(
  (ref) => throw UnimplementedError(),

);