import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/style/theme.dart';

class NameInput extends StatelessWidget {
  const NameInput({
    super.key,
    required this.controller,
    required this.hintText,
    required this.icon,
    this.isNumber = false,
  });

  final TextEditingController controller;
  final String hintText;
  final String icon;
  final bool isNumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        autocorrect: false,
        textInputAction: TextInputAction.next,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle:
              AppStyles.fontSize16Weight400.copyWith(color: AppColors.greyish),
          suffixIconConstraints: const BoxConstraints(minWidth: 0),
          suffixIcon: SizedBox(
              child: SvgPicture.asset(
            icon,
            width: 22,
          )),
          border: InputBorder.none,
        ),
        onSubmitted: (value) {},
        keyboardType: isNumber ? TextInputType.number : TextInputType.name,
      ),
    );
  }
}
