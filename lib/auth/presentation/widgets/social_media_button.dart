import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';

class SocialMediaButton extends StatelessWidget {
  final String icon;
  final String title;
  const SocialMediaButton({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {},
      child: Ink(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              icon,
            ),
            const Gap(8),
            Text(
              title,
              style: context.style.fontSize14Weight400
                  .copyWith(color: context.colors.black),
            )
          ],
        ),
      ),
    );
  }
}