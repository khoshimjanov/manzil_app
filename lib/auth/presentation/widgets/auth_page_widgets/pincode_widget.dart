// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manzil/auth/bloc/user_bloc.dart';
import 'package:manzil/auth/shared/providers..dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/routes/route_names.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PincodeWidget extends StatelessWidget {
  const PincodeWidget({
    super.key,
    required this.codeController,
    required this.ref,
    required this.phoneNumber,
    required this.isRegistered,
    required this.type,
  });
  final bool isRegistered;
  final int type;
  final TextEditingController codeController;
  final WidgetRef ref;
  final ValueNotifier<String> phoneNumber;

  @override
  Widget build(BuildContext context) {
    print("first registered:$isRegistered");
    print("has type:$type");
    return PinCodeTextField(
      controller: codeController,
      appContext: context,
      pastedTextStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      length: 6,
      blinkWhenObscuring: true,
      animationType: AnimationType.fade,
      textStyle: AppStyles.fontSize18Weight600
          .copyWith(color: AppColors.black, fontSize: 32),
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.underline,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 60,
        fieldWidth: 50,
        inactiveColor: AppColors.lightgrey,
        selectedColor: AppColors.appbarBackground,
        activeFillColor:
            AppColors.greyBackgroundColor, //  AppColors.backgroundWhite,
        inactiveFillColor: AppColors.lightgrey,
        activeColor: AppColors.appbarBackground,
        selectedFillColor: AppColors.greyBackgroundColor,
      ),
      cursorColor: Colors.black,
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      keyboardType: TextInputType.number,
      onCompleted: (v) async {
        final result = await ref
            .read(authRepositoryProvider)
            .checkCode(phoneNumber.value, v);

        if (result == true) {
          if (isRegistered == true) {
            context.read<UserBloc>().addUserCode(v);
            final result = await ref
                .read(authRepositoryProvider)
                .getUserData(phoneNumber.value, v, type);
            // context.read<UserBloc>().addUserInfo();
            context.read<UserBloc>().login(result);
            Navigator.of(context).pushNamedAndRemoveUntil(
              AppRouteNames.homePage,
              (route) => false,
            );
          } else {
            context.read<UserBloc>().addUserCode(v);
            Navigator.of(context)
                .pushReplacementNamed(AppRouteNames.authRolePage);
          }
        } else {
          codeController.clear();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.red,
              duration: const Duration(seconds: 3),
              content: Text(
                context.l10n.enterCorrectly,
                style:
                    AppStyles.fontSize16Weight500.copyWith(color: Colors.white),
              ),
            ),
          );
        }
      },
    );
  }
}
