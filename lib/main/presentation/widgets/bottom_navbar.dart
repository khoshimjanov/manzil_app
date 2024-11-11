import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/presentation/style/theme.dart';

import '/core/presentation/style/colors.dart';
import '/gen/assets.gen.dart';

class BottomNavBar extends StatelessWidget {
  final int index;
  final void Function(int index) selectPage;

  const BottomNavBar({
    super.key,
    required this.controller,
    required this.index,
    required this.selectPage,
  });

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColors.grey,
            width: 1,
          ),
        ),
      ),
      child: TabBar(
        overlayColor: const WidgetStatePropertyAll(AppColors.grey),
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(
            width: 1,
            color: AppColors.appbarBackground,
          ),
          insets: EdgeInsets.only(bottom: 90),
        ),
        controller: controller,
        labelStyle: AppStyles.fontSize16Weight600,
        unselectedLabelStyle: AppStyles.fontSize16Weight400,
        onTap: (value) {
          controller.animateTo(value);
          print(controller.index);
          selectPage(value);
        },
        tabs: [
          Tab(
            icon: SvgPicture.asset(
              index == 0
                  ? Assets.icons.documentSelected
                  : Assets.icons.documentUnselected,
            ),
            text: l10n.orders,
            height: 90,
          ),
          Tab(
            icon: SvgPicture.asset(
              index == 1
                  ? Assets.icons.homeSelected
                  : Assets.icons.homeUnselected,
            ),
            text: l10n.main,
            height: 90,
          ),
          Tab(
            icon: SvgPicture.asset(
              index == 2
                  ? Assets.icons.profileSelected
                  : Assets.icons.profileUnselected,
            ),
            text: l10n.profile,
            height: 90,
          ),
        ],
      ),
    );
  }
}
