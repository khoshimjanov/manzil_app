import 'package:flutter/material.dart';
import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/style/theme.dart';

class SelectTypeWidget extends StatelessWidget {
  final bool isSelected;
  final Function() onTap;
  final String title;
  const SelectTypeWidget({
    super.key,
    required this.title,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      borderRadius: BorderRadius.circular(15),
      child: Ink(
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.selectedBackground : Colors.transparent,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: isSelected ? AppColors.appbarBackground : AppColors.grey,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppStyles.fontSize16Weight400
                  .copyWith(color: AppColors.appbarBackground),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
