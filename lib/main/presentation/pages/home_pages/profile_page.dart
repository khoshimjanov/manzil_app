import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:manzil/auth/bloc/user_bloc.dart';
import 'package:manzil/auth/domain/role_model.dart';

import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';
import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/gen/assets.gen.dart';
import 'package:manzil/main/presentation/widgets/profile_page/profile_page_item.dart';
import 'package:manzil/routes/route_names.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final data = context.watch<UserBloc>().state;
    final isDriver = data.role == Role.driver ? true : false;
    final carData = data.carmodel;
    final l10n = context.l10n;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 60),
          child: CustomAppBar(l10n.profile),
        ),
        body: Padding(
          padding: const EdgeInsets.all(0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Image.asset(Assets.images.profilePageImage.path),
                            Image.asset(Assets.images.penGreen.path),
                          ],
                        ),
                      ),
                      const Gap(20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${data.name} ${data.surname}",
                              overflow: TextOverflow.ellipsis,
                              style: AppStyles.fontSize18Weight500,
                              maxLines: 2,
                            ),
                            const Gap(10),
                            if (isDriver)
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.lightgrey,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    padding: const EdgeInsets.all(5),
                                    child: Text(
                                      carData!.plateNumber,
                                    ),
                                  ),
                                  const Gap(10),
                                  const Icon(
                                    Icons.star_rounded,
                                    color: AppColors.gold,
                                  ),
                                  const Text("4,7")
                                ],
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const CustomDivider(),
                ProfilePageItem(
                  icon: Assets.icons.profileGreen,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      AppRouteNames.changeUserDataPage,
                    );
                  },
                  title: l10n.changeProfileData,
                ),
                isDriver ? const CustomDivider() : Container(),
                isDriver
                    ? ProfilePageItem(
                        icon: Assets.icons.carGreen,
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            AppRouteNames.changeCarDataPage,
                          );
                        },
                        title: l10n.changeCarData,
                      )
                    : Container(),
                const CustomDivider(),
                ProfilePageItem(
                  icon: Assets.icons.tripsGreen,
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(AppRouteNames.tripsHistroyPage);
                  },
                  title: l10n.tripHistory,
                ),
                const CustomDivider(),
                ProfilePageItem(
                  icon: Assets.icons.messageGreen,
                  onTap: () {},
                  title: l10n.myReviews,
                ),
                const CustomDivider(),
                ProfilePageItem(
                  icon: Assets.icons.receiptGreen,
                  onTap: () {},
                  title: l10n.balanceHistory,
                ),
                const CustomDivider(),
                ProfilePageItem(
                  icon: Assets.icons.profileAddGreen,
                  onTap: () {
                    if (isDriver) {
                    } else {
                      Navigator.pushNamed(context, AppRouteNames.authCarPage);
                    }
                  },
                  title: isDriver ? l10n.becomePassenger : l10n.becomeDriver,
                ),
                const CustomDivider(),
                const Gap(10),
                ListTile(
                  onTap: () {
                    showCupertinoDialog(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                        actions: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: SvgPicture.asset(Assets.icons.cancel),
                          ),
                          IconButton(
                            onPressed: () {
                              context.read<UserBloc>().logOut();
                              Future.delayed(const Duration(seconds: 2)).then(
                                (value) {
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                    AppRouteNames.languagePage,
                                    (route) => false,
                                  );
                                },
                              );
                            },
                            icon: SvgPicture.asset(Assets.icons.confirm),
                          ),
                        ],
                        content: Text(l10n.logOutTitle),
                      ),
                    );
                  },
                  title: Text(
                    l10n.logOut,
                    style: AppStyles.fontSize16Weight500
                        .copyWith(color: Colors.red),
                  ),
                  leading: SvgPicture.asset(
                    Assets.icons.logout,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
