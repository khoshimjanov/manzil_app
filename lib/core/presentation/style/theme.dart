import 'package:flutter/material.dart';
import 'package:manzil/core/presentation/style/colors.dart';

class AppTheme {
  ThemeData lightTheme() {
    return ThemeData(
      textTheme: const TextTheme(),
      fontFamily: 'Montserrat',

      // scaffoldBackgroundColor: AppColors.mainDark,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.appbarBackground,
      ),

      // extensions: [
      //   AppFonts(
      //     fontSize20Weight300: TextStyle(
      //
      //       fontSize: 20,
      //       fontWeight: FontWeight.w300,
      //       color: AppColors.white,
      //     ),
      //     fontSize40Weight700: TextStyle(
      //       fontSize: 40,
      //       fontWeight: FontWeight.w700,
      //       color: AppColors.whiteLabel,
      //     ),
      //     fontSize16Weight400: TextStyle(
      //
      //       fontSize: 16,
      //       fontWeight: FontWeight.w400,
      //       color: AppColors.black,
      //     ),
      //     fontSize16Weight500: TextStyle(
      //
      //       fontSize: 16,
      //       fontWeight: FontWeight.w500,
      //       color: AppColors.black,
      //     ),
      //     fontSize16Weight500Blue: TextStyle(
      //
      //       fontSize: 16,
      //       fontWeight: FontWeight.w500,
      //       color: AppColors.black,
      //     ),
      //     fontSize16Weight500Grey: TextStyle(
      //
      //       fontSize: 16,
      //       fontWeight: FontWeight.w500,
      //       color: AppColors.black,
      //     ),
      //     fontSize16Weight600: TextStyle(
      //
      //       fontSize: 16,
      //       fontWeight: FontWeight.w600,
      //       color: AppColors.black,
      //     ),
      //     fontSize16Weight700: TextStyle(
      //
      //       fontSize: 16,
      //       fontWeight: FontWeight.w700,
      //       color: AppColors.black,
      //     ),
      //     fontSize14Weight400: TextStyle(
      //
      //       fontSize: 14,
      //       fontWeight: FontWeight.w400,
      //       color: AppColors.whiteLabel,
      //     ),
      //     fontSize24Weight600: TextStyle(
      //       fontSize: 24,
      //       fontWeight: FontWeight.w600,
      //       color: AppColors.whiteLabel.withOpacity(0.8),
      //     ),
      //     fontSize24Weight700: TextStyle(
      //
      //       fontSize: 24,
      //       fontWeight: FontWeight.w700,
      //       color: AppColors.whiteLabel,
      //     ),
      //     fontSize20Weight700: TextStyle(
      //
      //       fontSize: 20,
      //       fontWeight: FontWeight.w700,
      //       color: AppColors.whiteLabel,
      //     ),
      //     fontSize20Weight500: TextStyle(
      //
      //       fontSize: 20,
      //       fontWeight: FontWeight.w500,
      //       color: AppColors.whiteLabel,
      //     ),
      //     fontSize20Weight400: TextStyle(
      //
      //       fontSize: 20,
      //       fontWeight: FontWeight.w400,
      //       color: AppColors.whiteLabel,
      //     ),
      //     fontSize18Weight700: TextStyle(
      //
      //       fontSize: 18,
      //       fontWeight: FontWeight.w700,
      //       color: AppColors.whiteLabel,
      //     ),
      //     fontSize18Weight600: TextStyle(
      //
      //       fontSize: 18,
      //       fontWeight: FontWeight.w600,
      //       color: AppColors.whiteLabel,
      //     ),
      //     fontSize18Weight500: TextStyle(
      //
      //       fontSize: 18,
      //       fontWeight: FontWeight.w500,
      //       color: AppColors.black,
      //     ),
      //     fontSize18Weight500red: TextStyle(
      //
      //         fontSize: 18,
      //         fontWeight: FontWeight.w500,
      //         color: AppColors.notificationsClear),
      //     fontSize18Weight500green: TextStyle(
      //
      //       fontSize: 18,
      //       fontWeight: FontWeight.w500,
      //       color: AppColors.expensesGreen,
      //     ),
      //     fontSize18Weight500Grey: TextStyle(
      //
      //       fontSize: 18,
      //       fontWeight: FontWeight.w500,
      //       color: AppColors.unactivatedColor,
      //     ),
      //     fontSize18Weight400: TextStyle(
      //
      //       fontSize: 18,
      //       fontWeight: FontWeight.w400,
      //       color: AppColors.whiteLabel,
      //     ),
      //     fontSize15Weight400: TextStyle(
      //
      //       fontSize: 15,
      //       fontWeight: FontWeight.w400,
      //       color: AppColors.whiteLabel,
      //     ),
      //     fontSize14Weight700: TextStyle(
      //
      //       fontSize: 14,
      //       fontWeight: FontWeight.w700,
      //       color: AppColors.whiteLabel,
      //     ),
      //     fontSize16Weight500orange: const TextStyle(
      //
      //       fontSize: 16,
      //       fontWeight: FontWeight.w500,
      //     ),
      //     fontSize16Weight500blue: TextStyle(
      //
      //       fontSize: 16,
      //       fontWeight: FontWeight.w500,
      //       color: AppColors.expensesShopping,
      //     ),
      //     fontSize16Weight500purple: TextStyle(
      //
      //       fontSize: 16,
      //       fontWeight: FontWeight.w500,
      //       color: AppColors.expensesGift,
      //     ),
      //     fontSize16Weight400blue: TextStyle(
      //
      //       fontSize: 16,
      //       fontWeight: FontWeight.w400,
      //       color: AppColors.addButtonLinear1,
      //     ),
      //     fontSize14Weight600: TextStyle(
      //
      //       fontSize: 14,
      //       fontWeight: FontWeight.w600,
      //       color: AppColors.whiteLabel,
      //     ),
      //     fontSize14Weight400grey: TextStyle(
      //
      //       fontSize: 14,
      //       fontWeight: FontWeight.w400,
      //       color: AppColors.tasksTimeColor,
      //     ),
      //     fontSize14Weight500: TextStyle(
      //
      //       fontSize: 14,
      //       fontWeight: FontWeight.w500,
      //       color: AppColors.whiteLabel,
      //     ),
      //     fontSize14Weight500whitish: TextStyle(
      //
      //       fontSize: 14,
      //       fontWeight: FontWeight.w500,
      //       color: AppColors.tasksTimeColor,
      //     ),
      //     fontSize12Weight500: TextStyle(
      //
      //       fontSize: 12,
      //       fontWeight: FontWeight.w500,
      //       color: AppColors.whiteLabel,
      //     ),
      //     fontSize12Weight400: TextStyle(
      //
      //       fontSize: 12,
      //       fontWeight: FontWeight.w400,
      //       color: AppColors.whiteLabel,
      //     ),
      //     fontSize10Weight400: TextStyle(
      //
      //       fontSize: 10,
      //       fontWeight: FontWeight.w400,
      //       color: AppColors.whiteLabel,
      //     ),
      //     fontSize8Weight400: TextStyle(
      //
      //       fontSize: 8,
      //       fontWeight: FontWeight.w400,
      //       color: AppColors.whiteLabel,
      //     ),
      //     fontSize30Weight700: TextStyle(
      //
      //       fontSize: 30,
      //       fontWeight: FontWeight.w700,
      //       color: AppColors.whiteLabel,
      //     ),
      //     fontSize14Weight400Grey: TextStyle(
      //
      //       fontSize: 14,
      //       fontWeight: FontWeight.w400,
      //       color: AppColors.unactivatedColor,
      //     ),
      //     fontSize14Weight500Grey: TextStyle(
      //
      //       fontSize: 14,
      //       fontWeight: FontWeight.w500,
      //       color: AppColors.createTaskTime,
      //     ),
      //   ),
      // ],
    );
  }

  ThemeData darkTheme() {
    // final AppColors = AppAppColors();
    return ThemeData(
      fontFamily: 'Montserrat',
      scaffoldBackgroundColor: AppColors.mainDark,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.mainDark,
      ),
    );
  }
}

abstract class AppStyles {
  AppStyles._();

  static const headline4 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  static const fontSize20Weight300 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w300,
    color: AppColors.white,
  );
  static const fontSize40Weight700 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w700,
    color: AppColors.whiteLabel,
  );
  static const fontSize16Weight400 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
  static const fontSize16Weight500 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static const TextStyle fontSize16Weight500Blue = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static const fontSize16Weight500Grey = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static const fontSize16Weight600 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static const fontSize16Weight700 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );
  static const fontSize14Weight400 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.whiteLabel,
  );
  static const fontSize24Weight600 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteLabel,
  );
  static const fontSize24Weight700 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.whiteLabel,
  );
  static const fontSize20Weight700 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.whiteLabel,
  );
  static const fontSize20Weight500 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.whiteLabel,
  );
  static const fontSize20Weight400 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.whiteLabel,
  );
  static const fontSize18Weight700 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.whiteLabel,
  );
  static const fontSize18Weight600 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteLabel,
  );
  static const fontSize18Weight500 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static const fontSize18Weight500red = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static const fontSize18Weight500green = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static const fontSize18Weight500Grey = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.unactivatedColor,
  );
  static const fontSize18Weight400 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.whiteLabel,
  );
  static const fontSize15Weight400 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.whiteLabel,
  );
  static const fontSize15Weight500 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );
  static const fontSize14Weight700 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.whiteLabel,
  );
  static const fontSize16Weight500orange = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const fontSize16Weight500blue = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const fontSize16Weight500purple = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const fontSize16Weight400blue = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static const fontSize14Weight600 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  static const fontSize14Weight400grey = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static const fontSize14Weight500 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static const fontSize14Weight500whitish = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static const fontSize12Weight500 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.whiteLabel,
  );
  static const fontSize12Weight400 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.whiteLabel,
  );
  static const fontSize10Weight400 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.whiteLabel,
  );
  static const fontSize8Weight400 = TextStyle(
    fontSize: 8,
    fontWeight: FontWeight.w400,
    color: AppColors.whiteLabel,
  );
  static const fontSize30Weight700 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: AppColors.whiteLabel,
  );
  static const fontSize14Weight400Grey = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.unactivatedColor,
  );
  static const fontSize14Weight500Grey = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}
