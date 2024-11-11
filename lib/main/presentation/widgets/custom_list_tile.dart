import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/gen/assets.gen.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.title,
      required this.icon,
      this.trailingTitle,
      this.onTap});

  final String title;
  final String icon;
  final String? trailingTitle;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: SvgPicture.asset(icon),
      title: Text(
        title,
        style: AppStyles.fontSize16Weight500,
      ),
      trailing: trailingTitle == null
          ? SvgPicture.asset(Assets.icons.rightArrow)
          : Text(
              trailingTitle!,
              style: AppStyles.fontSize16Weight500,
            ),
    );
  }
}
