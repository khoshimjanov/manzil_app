import 'package:flutter/material.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/presentation/style/colors.dart';

class ConfirmButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const ConfirmButton(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        onPressed: () => onPressed(),
        elevation: 0,
        highlightElevation: 0,
        color: AppColors.appbarBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          title,
          style: context.style.fontSize16Weight600.copyWith(
            color: AppColors.whitee,
          ),
        ));
  }
}
