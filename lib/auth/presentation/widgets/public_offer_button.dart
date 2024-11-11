import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';

import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/style/theme.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:manzil/gen/assets.gen.dart';

class PublicOfferButton extends HookWidget {
  final ValueNotifier<bool> isPressed;
  const PublicOfferButton({
    super.key,
    required this.isPressed,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        isPressed.value = !isPressed.value;
      },
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              isPressed.value
                  ? Assets.icons.selectedIcon
                  : Assets.icons.unselectedIcon,
            ),
            const Gap(20),
            Expanded(
              flex: 7,
              child: Text(
                l10n.publicOfferAcceptance,
                maxLines: 4,
                style: AppStyles.fontSize16Weight400
                    .copyWith(color: AppColors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
