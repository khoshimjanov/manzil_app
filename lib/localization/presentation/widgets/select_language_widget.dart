import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class SelectLanguageWidget extends StatelessWidget {

  final String title;
  final String icon;
  final String countryFlagIcon;
  final Function() onTap;
  const SelectLanguageWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.countryFlagIcon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      leading: SvgPicture.asset(countryFlagIcon),
      title: Text(title),
      trailing: SvgPicture.asset(icon),
    );
  }
}
