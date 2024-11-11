import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/gen/assets.gen.dart';

class SelectGenderButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function() onTap;
  const SelectGenderButton({
    super.key,
    required this.isSelected,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () => onTap(),
      child: Ink(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Row(
          children: [
            SvgPicture.asset(
              isSelected
                  ? Assets.icons.selectedIcon
                  : Assets.icons.unselectedIcon,
            ),
            const Gap(20),
            Text(
              title,
              maxLines: 4,
              style: AppStyles.fontSize16Weight400
                  .copyWith(color: AppColors.black),
            ),
          ],
        ),
      ),
    );
  }
}
