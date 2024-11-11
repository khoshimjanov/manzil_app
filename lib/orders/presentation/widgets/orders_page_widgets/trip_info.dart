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

class TripInfo extends HookWidget {
  final int id;
  const TripInfo({super.key, this.id = 100006});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return FutureBuilder(
      future: context.read<TripsBloc>().getTrip(id),
      builder: (context, tripState) {
        return FutureBuilder(
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
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                    Assets.images.profilePageImage.path),
                              ],
                            ),
                            IconButton(
                              icon: SvgPicture.asset(Assets.icons.deleteGreen),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            const Gap(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "${l10n.name}:",
                                          style: AppStyles.fontSize14Weight500,
                                        ),
                                        const Gap(10),
                                        Text(
                                            "${trip.name.isEmpty ? "No name" : trip.name} ${trip.surname}"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "${l10n.service}:",
                                          style: AppStyles.fontSize14Weight500,
                                        ),
                                        const Gap(10),
                                        Text(
                                          getTripType(trip.type, context),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "${l10n.car}:",
                                  style: AppStyles.fontSize14Weight500,
                                ),
                                const Gap(10),
                                Text(
                                    "${getCarBrandName(trip.carClassId == null ? 0 : trip.carClassId!, context)} ,${getCarModelName(trip.carId == null ? 0 : trip.carId!, context)}")
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "${l10n.carlicensePlate}:",
                                  style: AppStyles.fontSize14Weight500,
                                ),
                                const Gap(10),
                                Text(trip.number ?? "unknown")
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "${l10n.rating}:",
                                  style: AppStyles.fontSize14Weight500,
                                ),
                                const Gap(5),
                                const Icon(
                                  Icons.star,
                                  color: AppColors.gold,
                                ),
                                const Gap(5),
                                Text(trip.rating == null
                                    ? "unknown"
                                    : trip.rating.toString())
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "${l10n.extraInfo}:",
                                  style: AppStyles.fontSize14Weight500,
                                ),
                                const Gap(10),
                                Text(trip.comment)
                              ],
                            ),
                            const Gap(10),
                            const DividerWithoutIndent(),
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
                              padding: const EdgeInsets.symmetric(vertical: 10),
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MaterialButton(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 8),
                              onPressed: () {
                                // sendRequest(context, user);
                              },
                              elevation: 0,
                              highlightElevation: 0,
                              color: AppColors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text(
                                l10n.sendRequest,
                                style: AppStyles.fontSize16Weight400.copyWith(
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                            InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {},
                              child: Ink(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: SvgPicture.asset(Assets.icons.callGreen),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
            });
      },
    );
  }
}
