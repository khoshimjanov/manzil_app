import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';
import 'package:manzil/auth/bloc/user_bloc.dart';
import 'package:manzil/auth/domain/role_model.dart';

import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';
import 'package:manzil/gen/assets.gen.dart';
import 'package:manzil/main/presentation/widgets/custom_list_tile.dart';
import 'package:manzil/main/presentation/widgets/profile_page/profile_page_item.dart';
import 'package:manzil/main/presentation/pages/home_pages/create_trip_page.dart';
import 'package:manzil/routes/app_routes.dart';
import 'package:manzil/routes/route_names.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final user = context.watch<UserBloc>().state;
    final isDriver = user.role == Role.driver;
    final roleTitle = user.role == Role.driver ? l10n.driver : l10n.passenger;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size(double.infinity, 60),
            child: CustomAppBar(roleTitle)),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  padding: const EdgeInsets.all(0),
                  child: PageView(
                    children: [
                      Image.asset(Assets.images.publicOfferImage.path),
                      Image.asset(Assets.images.publicOfferImage.path),
                      Image.asset(Assets.images.publicOfferImage.path),
                    ],
                  ),
                ),
                const Gap(20),
                isDriver ? driverWidgets(context) : passengerWidgets(context),
              ],
            ),
          ),
        ));
  }

  Widget driverWidgets(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    return Column(
      children: [
        const Gap(10),
        CustomListTile(
          icon: Assets.icons.wallet,
          title: l10n.balance,
          trailingTitle: '1 500 000 сум',
        ),
        CustomListTile(
          icon: Assets.icons.roundedStar,
          title: l10n.rating,
          trailingTitle: '4,7',
        ),
        const Gap(10),
        const CustomDivider(),
        ProfilePageItem(
          title: l10n.currentOrders,
          icon: Assets.icons.notificationStatus,
          onTap: () {},
        ),
        const CustomDivider(),
        ProfilePageItem(
          title: l10n.createAnnouncement,
          icon: Assets.icons.messageEdit,
          onTap: () {
            Navigator.of(context).pushNamed(AppRouteNames.createTripPage);
          },
        ),
        const CustomDivider(),
        ProfilePageItem(
          title: l10n.tripHistory,
          icon: Assets.icons.tripsGreen,
          onTap: () {
            Navigator.of(context).pushNamed(AppRouteNames.tripsHistroyPage);
          },
        ),
        const CustomDivider(),
        ProfilePageItem(
          title: l10n.refillBalance,
          icon: Assets.icons.cardAdd,
          onTap: () {
            Navigator.of(context).pushNamed(AppRouteNames.fillBalancePage);
          },
        ),
      ],
    );
  }

  Widget passengerWidgets(BuildContext context) {
    final AppLocalizations l10n = context.l10n;
    return Column(
      children: [
        CustomListTile(
          onTap: () {
            Navigator.of(context).push(fade(const CreateTripPage(
              initialType: TripType.taxi,
            )));
          },
          icon: Assets.icons.taxi,
          title: l10n.taxi,
        ),
        CustomListTile(
          onTap: () {
            Navigator.of(context).push(fade(const CreateTripPage(
              initialType: TripType.delivery,
            )));
          },
          icon: Assets.icons.delivery,
          title: l10n.delivery,
        ),
        CustomListTile(
          onTap: () {
            Navigator.of(context).push(fade(const CreateTripPage(
              initialType: TripType.towTruck,
            )));
          },
          icon: Assets.icons.towTruck,
          title: l10n.towTruck,
        ),
        CustomListTile(
          onTap: () {
            Navigator.of(context).push(fade(const CreateTripPage(
              initialType: TripType.driverServices,
            )));
          },
          icon: Assets.icons.driverServices,
          title: l10n.driverServices,
        ),
        const Gap(10),
        const CustomDivider(),
        ProfilePageItem(
          title: l10n.currentOrders,
          icon: Assets.icons.notificationStatus,
          onTap: () {
            Navigator.of(context).pushNamed(AppRouteNames.tripsHistroyPage);
          },
        ),
        const CustomDivider(),
        ProfilePageItem(
          title: l10n.tripHistory,
          icon: Assets.icons.tripsGreen,
          onTap: () {
            Navigator.of(context).pushNamed(AppRouteNames.tripsHistroyPage);
          },
        ),
      ],
    );
  }
}
