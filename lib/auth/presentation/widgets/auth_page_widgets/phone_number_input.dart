// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/gen/assets.gen.dart';

class PhoneNumberInput extends StatelessWidget {
  const PhoneNumberInput({
    super.key,
    required this.phoneController,
  });

  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      margin: const EdgeInsets.symmetric(vertical: 9),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        // focusNode: phoneFocusNode,
        controller: phoneController,
        inputFormatters: [
          PhoneInputFormatter(
            defaultCountryCode: 'UZ',
            onCountrySelected: (value) {
              phoneController.clear();
            },
          ),
        ],
        autofocus: true,
        decoration: InputDecoration(
          suffixIconConstraints: const BoxConstraints(minWidth: 0),
          suffixIcon: SvgPicture.asset(Assets.icons.call),
          prefix: Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Text(
              '+998',
              style: AppStyles.fontSize16Weight500
                  .copyWith(color: AppColors.greyish),
            ),
          ),
          border: InputBorder.none,
        ),
        onSubmitted: (value) {
          if (value.length < 11) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: AppColors.appbarBackground,
                duration: const Duration(seconds: 1),
                content: Text(
                  context.l10n.enterPhoneNumber,
                  style: AppStyles.fontSize16Weight500
                      .copyWith(color: Colors.white),
                ),
              ),
            );
          }
        },
        keyboardType: TextInputType.number,
      ),
    );
  }
}
