import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:manzil/auth/bloc/user_bloc.dart';
import 'package:manzil/core/domain/user_model.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';
import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/gen/assets.gen.dart';
import 'package:manzil/main/domain/trip_model.dart';
import 'package:manzil/orders/bloc/trips_bloc.dart';
import 'package:manzil/orders/presentation/widgets/orders_page_widgets/trip_info.dart';

class RequestPageItem extends StatelessWidget {
  const RequestPageItem({
    super.key,
    required this.trip,
  });

  final TripModel trip;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final user = context.watch<UserBloc>().state;
    return Column(
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
            InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {},
              child: SvgPicture.asset(Assets.icons.callGreen),
            )
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
            Text(trip.rating == null ? "unknown" : trip.rating.toString())
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MaterialButton(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
              onPressed: () {
                sendRequest(context, user);
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
            // const Gap(20),
            InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => Dialog(
                          child: TripInfo(
                            id: trip.id,
                          ),
                        )
                  
                    );
              },
              child: Ink(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.grey)),
                child: const Icon(Icons.more_horiz),
              ),
            ),
          ],
        ),
        const DividerWithoutIndent(),
      ],
    );
  }

  Future<void> sendRequest(BuildContext context, UserModel user) {
    final l10n = context.l10n;
    return showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(l10n.sendRequestTitle),
        actions: [
          CupertinoButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Column(
              children: [
                SvgPicture.asset(Assets.icons.cancel),
                const Gap(3),
                const Text("no")
              ],
            ),
          ),
          CupertinoButton(
            onPressed: () {
              context.read<TripsBloc>().sendRequest(trip, user);
              Navigator.of(context).pop();
            },
            child: Column(
              children: [
                SvgPicture.asset(Assets.icons.confirm),
                const Gap(5),
                const Text("yes")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
