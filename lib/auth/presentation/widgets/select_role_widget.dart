import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/presentation/style/colors.dart';


class SelectRoleWidget extends StatelessWidget {
  final bool isSelected;
  final Function() onTap;
  final String title;
  final String icon;
  const SelectRoleWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      borderRadius: BorderRadius.circular(20),
      child: Ink(
        padding: const EdgeInsets.symmetric(vertical: 30),
        decoration: BoxDecoration(
            color: isSelected
                ? AppColors.greyBackgroundColor
                : AppColors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color:
                  isSelected ? AppColors.appbarBackground : Colors.transparent,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(icon),
            const Gap(20),
            Text(
              title,
              style: context.style.fontSize16Weight600,
            ),
          ],
        ),
      ),
    );
  }
}
