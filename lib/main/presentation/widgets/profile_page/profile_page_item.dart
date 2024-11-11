import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/gen/assets.gen.dart';

class ProfilePageItem extends StatelessWidget {
  final String title;
  final String icon;
  final Function() onTap;
  const ProfilePageItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      onTap: () => onTap(),
      leading: SvgPicture.asset(icon),
      title: Text(
        title,
        style: AppStyles.fontSize16Weight400,
      ),
      trailing: SvgPicture.asset(Assets.icons.rightArrow),
    );
  }
}
