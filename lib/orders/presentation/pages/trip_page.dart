import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';
import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/gen/assets.gen.dart';
import 'package:manzil/orders/bloc/trips_bloc.dart';
import 'package:manzil/orders/presentation/widgets/orders_page_widgets/countdown_timer.dart';
import 'package:manzil/orders/presentation/widgets/trip_page_widgets/trip_page_request_item.dart';

class TripPage extends HookWidget {
  final int id;
  const TripPage({super.key, this.id = 100006});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return FutureBuilder(
      future: context.read<TripsBloc>().getTrip(id),
      builder: (context, tripState) {
        return Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size(double.infinity, 60),
              child: CustomAppBar(l10n.createAnnouncement)),
          body: FutureBuilder(
              future: context.read<TripsBloc>().getTrip(id),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CupertinoActivityIndicator(),
                  );
                } else if (snapshot.connectionState == ConnectionState.none) {
                  return const Center(
                    child: Text("something went wrong"),
                  );
                } else {
                  final data = snapshot.data!;
                  final trip = data.$1;
                  final requests = data.$2;
                  final requestsNum = requests
                      .where((element) =>
                          element.accepted != null || element.accepted != null)
                      .length;
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 15),
                          margin: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 15),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: AppColors.grey),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      SvgPicture.asset(
                                          Assets.icons.yellowPoint),
                                      const Gap(8),
                                      SvgPicture.asset(Assets.icons.fromToLine),
                                      const Gap(8),
                                      SvgPicture.asset(Assets.icons.greenPoint),
                                    ],
                                  ),
                                  const Gap(10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          l10n.fromWhere,
                                          style: AppStyles.fontSize16Weight500,
                                        ),
                                        Text(
                                            "${getCountryName(trip.fromCountryId, context)},  ${getRegionName(trip.fromRegionId, context)},  ${getDistrictName(trip.fromDistrictId, context)}"),
                                        const Gap(50),
                                        Text(
                                            "${getCountryName(trip.toCountryId, context)},  ${getRegionName(trip.toRegionId, context)},  ${getDistrictName(trip.toDistrictId, context)}"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(10),
                              const DividerWithoutIndent(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            Assets.icons.calendarGreen),
                                        const Gap(10),
                                        Text(
                                          "${l10n.date}:",
                                          style: AppStyles.fontSize16Weight500,
                                        ),
                                        const Gap(10),
                                        Text(
                                          trip.date,
                                          style: AppStyles.fontSize16Weight400,
                                        ),
                                      ],
                                    ),
                                    const Gap(5),
                                    Row(
                                      children: [
                                        SvgPicture.asset(Assets.icons.clock),
                                        const Gap(10),
                                        Text(
                                          "${l10n.time}:",
                                          style: AppStyles.fontSize16Weight500,
                                        ),
                                        const Gap(10),
                                        Text(
                                          "${trip.fromTime.substring(0, 5)}--${trip.toTime.substring(0, 5)}",
                                          style: AppStyles.fontSize16Weight400,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const DividerWithoutIndent(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: CountdownTimer(
                                  duration: timeLeft(trip.date, trip.toTime),
                                ),
                              ),
                              const DividerWithoutIndent(),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(50),
                                        onTap: () {},
                                        child: Ink(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: requestsNum == 0
                                                ? AppColors.grey
                                                : AppColors.notificationButton,
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 8),
                                          child: Text(
                                            requestsNum != 0
                                                ? "$requestsNum ${l10n.unacceptedRequested}"
                                                : l10n.noacceptedRequested,
                                            style: AppStyles.fontSize16Weight400
                                                .copyWith(
                                              color: requestsNum == 0
                                                  ? AppColors.black
                                                  : AppColors.appbarBackground,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Gap(0),
                                    IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                            Assets.icons.notification)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        if (requests.isNotEmpty)
                          Column(children: [
                            Text(
                              "Есть $requestsNum активных запроса",
                              style: AppStyles.fontSize16Weight500,
                            ),
                            ...List.generate(
                              requests.length,
                              (i) {
                                if (requests[i].cancelled != null ||
                                    requests[i].accepted != null) {
                                  return Container();
                                }
                                return TripPageRequestItem(
                                  request: requests[i],
                                );
                              },
                            ),
                          ])
                      ],
                    ),
                  );
                }
              }),
        );
      },
    );
  }
}
