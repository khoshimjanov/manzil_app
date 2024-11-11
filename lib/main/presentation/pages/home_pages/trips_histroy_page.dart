import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:manzil/auth/bloc/user_bloc.dart';

import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';
import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/gen/assets.gen.dart';
import 'package:manzil/main/domain/trip_model.dart';
import 'package:manzil/orders/bloc/trips_bloc.dart';
import 'package:manzil/orders/bloc/trips_state.dart';

class TripsHistroyPage extends StatelessWidget {
  const TripsHistroyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;    
      final user=context.watch<UserBloc>().state;

    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size(double.infinity, 60),
            child: CustomAppBar(l10n.tripHistory)),
        body: RefreshIndicator(
          onRefresh: () async {
            context.read<TripsBloc>().getTripsHistory(user);
          },
          child: BlocBuilder<TripsBloc, TripsState>(
              bloc: context.read<TripsBloc>()..getTripsHistory(user),
              builder: (context, state) {
                if (state.status == TripStateStatus.loading) {
                  return const Center(
                    child: CupertinoActivityIndicator(
                      radius: 12,
                    ),
                  );
                } else if (state.status == TripStateStatus.loadedWithError) {
                  return Center(
                    child: Text(
                      state.error.toString(),
                      style: AppStyles.fontSize16Weight500,
                    ),
                  );
                }
                final trips = state.historyTrips;
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: List.generate(
                        trips.length,
                        (index) => TripHistoryItem(
                          trip: trips[index],
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}

class TripHistoryItem extends StatelessWidget {
  const TripHistoryItem({
    super.key,
    required this.trip,
  });

  final TripModel trip;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: AppColors.grey,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "№",
                style: AppStyles.fontSize16Weight500,
              ),
              Text(
                trip.id.toString(),
                style: AppStyles.fontSize16Weight400
                    .copyWith(color: AppColors.appbarBackground),
              ),
            ],
          ),

          const Gap(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${l10n.date}:",
                style: AppStyles.fontSize16Weight500,
              ),
              Text(
                trip.date,
                style: AppStyles.fontSize16Weight400,
              ),
            ],
          ),
          const Gap(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${l10n.type}:",
                style: AppStyles.fontSize16Weight500,
              ),
              Text(
                getTripType(trip.type, context),
                style: AppStyles.fontSize16Weight400,
              ),
            ],
          ),
          // Text("${getToAddress(trip, context)}"),
          const Gap(10),
          const DividerWithoutIndent(),
          const Gap(10),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "${l10n.fromWhere}:",
                      style: AppStyles.fontSize16Weight500,
                    ),
                    Text(
                        "${getCountryName(trip.fromCountryId, context)},  ${getRegionName(trip.fromRegionId, context)},  ${getDistrictName(trip.fromDistrictId, context)}"),
                    const Gap(20),
                    Text(
                      "${l10n.toWhere}:",
                      style: AppStyles.fontSize16Weight500,
                    ),
                    Text(
                        "${getCountryName(trip.toCountryId, context)},  ${getRegionName(trip.toRegionId, context)},  ${getDistrictName(trip.toDistrictId, context)}"),
                  ],
                ),
              ),
              const Gap(10),
              Column(
                children: [
                  SvgPicture.asset(Assets.icons.yellowPoint),
                  const Gap(50),
                  SvgPicture.asset(Assets.icons.greenPoint),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

String getFromAddress(TripModel trip, BuildContext context) {
  return "${getCountryName(trip.fromCountryId, context)},  ${getRegionName(trip.fromRegionId, context)},  ${getDistrictName(trip.fromDistrictId, context)},";
}

String getToAddress(TripModel trip, BuildContext context) {
  return "${getCountryName(trip.toCountryId, context)},  ${getRegionName(trip.toRegionId, context)},  ${getDistrictName(trip.toDistrictId, context)},";
}
