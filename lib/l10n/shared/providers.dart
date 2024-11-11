// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manzil/core/shared/providers.dart';
import 'package:manzil/localization/application/app_language_notifier.dart';

final localeNotifierProvider = StateNotifierProvider<LocaleNotifier, Locale>(
  (ref) => LocaleNotifier(
    ref.watch(sharedPrefsProvider),
  ),
);