import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/shared/providers.dart';
import 'package:manzil/injection.dart';
import 'package:manzil/routes/app_routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final injection = Injection();
  final appInjections = await injection.setUpInjection();

  runApp(ProviderScope(overrides: [
    sharedPrefsProvider.overrideWithValue(appInjections.sharedPrefs),
    dioNotifierProvider.overrideWithValue(appInjections.dio),
  ], child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      theme: context.theme.lightTheme(),
      locale: ref.watch(localeNotifierProvider),
      title: 'Manzil',
      debugShowMaterialGrid: false,
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
