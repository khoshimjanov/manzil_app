import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/main/presentation/pages/home_pages/create_trip_page.dart';

class SelectTripType extends HookWidget {
  const SelectTripType({
    super.key,
    required this.title,
    required this.icon,
    required this.type,
    required this.tripType,
  });

  final ValueNotifier<TripType> tripType;
  final TripType type;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8),
      // onTap: () {
      //   tripType.value = type;
      // },
      leading: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1, color: AppColors.grey),
        ),
        child: SvgPicture.asset(icon),
      ),
      title: Text(
        title,
        style: AppStyles.fontSize16Weight500,
      ),
      trailing: CupertinoSwitch(
        value: tripType.value == type,
        onChanged: (value) {
          tripType.value = type;
        },
        activeColor: AppColors.appbarBackground,
      ),
    );
  }
}
