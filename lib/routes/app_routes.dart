import 'package:flutter/material.dart';
import 'package:manzil/auth/presentation/pages/auth_car_page.dart';
import 'package:manzil/auth/presentation/pages/auth_page.dart';
import 'package:manzil/auth/presentation/pages/auth_role_page.dart';
import 'package:manzil/auth/presentation/pages/sign_up_page.dart';
import 'package:manzil/auth/presentation/pages/public_offer_page.dart';
import 'package:manzil/localization/presentation/pages/language_change_page.dart';
import 'package:manzil/localization/presentation/pages/language_page.dart';
import 'package:manzil/main/presentation/pages/change_car_data_page.dart';
import 'package:manzil/main/presentation/pages/change_user_data_page.dart';
import 'package:manzil/main/presentation/pages/home_page.dart';
import 'package:manzil/main/presentation/pages/home_pages/fill_balance_page.dart';
import 'package:manzil/main/presentation/pages/home_pages/trips_histroy_page.dart';
import 'package:manzil/main/presentation/pages/home_pages/create_trip_page.dart';
import 'package:manzil/main/presentation/widgets/create_trip_page/select_region_page.dart';
import 'package:manzil/orders/presentation/pages/map_page.dart';
import 'package:manzil/orders/presentation/pages/trip_page.dart';
import 'package:manzil/routes/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:manzil/splash/presentation/splash_page.dart';

class AppRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteNames.splash:
        return fade(const SplashPage());
      case AppRouteNames.languagePage:
        return fade(const LanguagePage());
      case AppRouteNames.publicOfferPage:
        return fade(const PublicOfferPage());
      case AppRouteNames.authPage:
        return fade(const AuthPage());
      case AppRouteNames.authRolePage:
        return fade(const AuthRolePage());
      case AppRouteNames.signUpPage:
        return fade(const SignUpPage());
      case AppRouteNames.authCarPage:
        return fade(const AuthCarPage());
      case AppRouteNames.homePage:
        return fade(const HomePage());
      case AppRouteNames.languageChangePage:
        return fade(const LanguageChangePage());
      case AppRouteNames.changeUserDataPage:
        return fade(const ChangeUserDataPage());
      case AppRouteNames.changeCarDataPage:
        return fade(const ChangeCarDataPage());
      case AppRouteNames.fillBalancePage:
        return fade(const FillBalancePage());
      case AppRouteNames.createTripPage:
        return fade(const CreateTripPage());
      case AppRouteNames.mapPage:
        return fade(const MapPage());
      case AppRouteNames.tripsHistroyPage:
        return fade(const TripsHistroyPage());
      case AppRouteNames.tripPage:
        return fade(const TripPage());
      case AppRouteNames.selectRegionPage:
        return fade(const SelectRegionPage());
      // case CalendarRouteNames.calendar:
      //   return fade(const CalendarScreen());
      // case CreateRouteNames.createevent:
      //   return fade(const CreateEvent());
      // // case CreateRouteNames.createincome:
      // //   return fade(const CreateIncomeScreen());
      // case ExpenseRouteNames.expense:
      //   return fade(const ExpenseScreen());
      // case StatsRouteNames.stats:
      //   return fade(const StatisticsScreen());
      // // case TaskRouteNames.tasks:
      // //   return fade(const TaskScreen());
      // case TaskRouteNames.notifications:
      //   return fade(const NotificationPage());
      // case AppRouteNames.notes:
      //   return fade(const NotesPage());
      default:
        return fade(const Scaffold());
    }
  }
}

CupertinoPageRoute fade(Widget widget) {
  return CupertinoPageRoute(
    builder: (context) {
      return widget;
    },
  );

  // return PageRouteBuilder(
  //   transitionsBuilder: (_, __, ___, child) {
  //
  //     return FadeTransition(
  //       opacity: opacity,
  //       child: child,
  //     );
  //   },
  //   pageBuilder: (_, __, ___) {
  //     return widget;
  //   },
  // );
}
