import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';
import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/gen/assets.gen.dart';
import 'package:manzil/main/domain/trip_model.dart';
import 'package:manzil/orders/presentation/pages/trip_page.dart';
import 'package:manzil/orders/presentation/widgets/orders_page_widgets/countdown_timer.dart';
import 'package:manzil/routes/app_routes.dart';

class OrderPageItem extends StatelessWidget {
  const OrderPageItem({
    super.key,
    required this.trip,
  });

  final TripModel trip;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final requests = trip.requests;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {
          Navigator.push(
              context,
              fade(TripPage(
                id: trip.id,
              )));
        },
        child: Ink(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
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
                children: [
                  Column(
                    children: [
                      SvgPicture.asset(Assets.icons.yellowPoint),
                      const Gap(8),
                      SvgPicture.asset(Assets.icons.fromToLine),
                      const Gap(8),
                      SvgPicture.asset(Assets.icons.greenPoint),
                    ],
                  ),
                  const Gap(10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          l10n.fromWhere,
                          style: AppStyles.fontSize16Weight500,
                        ),
                        Text(
                            "${getCountryName(trip.fromCountryId, context)},  ${getRegionName(trip.fromRegionId, context)},  ${getDistrictName(trip.fromDistrictId, context)}"),

                        // Text(trip.fromAddress ?? 'nulla'),
                        const Gap(50),
                        // Text(
                        //   l10n.toWhere,
                        //   style: AppStyles.fontSize16Weight500,
                        // ),
                        Text(
                            "${getCountryName(trip.toCountryId, context)},  ${getRegionName(trip.toRegionId, context)},  ${getDistrictName(trip.toDistrictId, context)}"),

                        Text(trip.toAddress ?? "nulla"),
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(10),
              const DividerWithoutIndent(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(Assets.icons.calendarGreen),
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
                padding: const EdgeInsets.symmetric(vertical: 10),
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
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: requests == 0
                              ? AppColors.grey
                              : AppColors.notificationButton,
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        // onPressed: () {},
                        // elevation: 0,
                        // highlightElevation: 0,

                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(50),
                        // ),

                        child: Text(
                          requests != 0
                              ? "$requests ${l10n.unacceptedRequested}"
                              : l10n.noacceptedRequested,
                          style: AppStyles.fontSize16Weight400.copyWith(
                            color: requests == 0
                                ? AppColors.black
                                : AppColors.appbarBackground,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const Gap(20),
                    SvgPicture.asset(Assets.icons.notification),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
