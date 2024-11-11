import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/style/theme.dart';

class PersonalDataInput extends StatelessWidget {
  final String hintText;
  final String? title;
  final String icon;
  final Function() onTap;
  const PersonalDataInput({
    super.key,
    required this.hintText,
    this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () => onTap(),
      child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: AppColors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title ?? hintText,
                style: AppStyles.fontSize16Weight400.copyWith(
                  color: title == null ? AppColors.greyish : AppColors.black,
                ),
              ),
              SvgPicture.asset(icon)
            ],
          )),
    );
  }
}
