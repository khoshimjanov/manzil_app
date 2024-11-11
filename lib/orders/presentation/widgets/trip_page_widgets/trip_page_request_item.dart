import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:manzil/core/domain/request_model.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';
import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/gen/assets.gen.dart';
import 'package:manzil/orders/presentation/widgets/trip_page_widgets/request_button.dart';

class TripPageRequestItem extends StatelessWidget {
  const TripPageRequestItem({
    super.key,
    required this.request,
  });

  final RequestModel request;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    // final user = context.watch<UserBloc>().state;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Gap(10),
          const DividerWithoutIndent(),
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
                      Text("${request.name} ${request.surname}"),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "${l10n.service}:",
                        style: AppStyles.fontSize14Weight500,
                      ),
                      const Gap(10),
                      // Text(
                      //   getTripType(request.type, context),
                      // )
                    ],
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(Assets.icons.callGreen),
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
            ],
          ),
          Row(
            children: [
              Text(
                "${l10n.carlicensePlate}:",
                style: AppStyles.fontSize14Weight500,
              ),
              const Gap(10),
              // Text(request. ?? "unknown")
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
              Text(request.rating.toString())
            ],
          ),
          Row(
            children: [
              Text(
                "${l10n.extraInfo}:",
                style: AppStyles.fontSize14Weight500,
              ),
              const Gap(10),
            ],
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RequestButton(
                title: "Deny",
                requestTitle: "Do you want to deny?",
                isDeny: true,
                reqeustId: request.id,
              ),
              RequestButton(
                title: "Accept",
                requestTitle: "Do you want to accept?",
                isDeny: false,
                reqeustId: request.id,
              ),
              // const Gap(20),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.grey)),
                child: const Icon(Icons.more_horiz),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
