import 'package:flutter/material.dart';
import 'package:manzil/auth/presentation/pages/auth_page.dart';
import 'package:manzil/auth/presentation/pages/auth_role_page.dart';
import 'package:manzil/auth/presentation/pages/sign_up_page.dart';
import 'package:manzil/auth/presentation/widgets/public_offer_page.dart';
import 'package:manzil/localization/presentation/pages/language_page.dart';
import 'package:manzil/routes/route_names.dart';
import 'package:flutter/cupertino.dart';

class AppRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteNames.splash:
        return fade(const AuthRolePage());
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
      // case AppRouteNames.createNewPassword:
      //   return fade(const CreateNewPassword());
      // case AppRouteNames.calendar:
      //   return fade(const CalendarScreen());
      // case AppRouteNames.statistics:
      //   return fade(const StatisticsScreen());
      // // case AppRouteNames.login:
      // //   return fade(const LoginScreen());
      // // case AppRouteNames.signUp:
      // //   return fade(const SignUpScreen());
      // case AppRouteNames.forgotPassword:
      //   return fade(const ForgotPassword());
      // case AppRouteNames.verification:
      //   return fade(const VerificationPage());
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
