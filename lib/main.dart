import 'package:flutter/material.dart';
import 'package:flutter_hooks_bloc/flutter_hooks_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manzil/auth/bloc/user_bloc.dart';
import 'package:manzil/core/bloc/user_data_bloc.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/shared/providers.dart';
import 'package:manzil/injection.dart';
import 'package:manzil/l10n/shared/providers.dart';
import 'package:manzil/orders/bloc/trip_bloc.dart';
import 'package:manzil/orders/bloc/trips_bloc.dart';
import 'package:manzil/routes/app_routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AndroidYandexMap.useAndroidViewSurface = false;
  final injection = Injection();
  final appInjections = await injection.setUpInjection();
  runApp(
    ProviderScope(
      overrides: [
        sharedPrefsProvider.overrideWithValue(appInjections.sharedPrefs),
        dioNotifierProvider.overrideWithValue(appInjections.dio),
      ],
      child: const MyApp(),
    ),
  );
}



class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserDataBloc(ref.watch(dioNotifierProvider)),
        ),
        BlocProvider(create: (context) => UserBloc()),
        BlocProvider(
            create: (context) => TripsBloc(ref.watch(dioNotifierProvider))),
        BlocProvider(create: (context) => TripBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
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
      ),
    );
  }
}
