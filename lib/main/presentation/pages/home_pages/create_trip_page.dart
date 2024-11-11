import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:manzil/auth/bloc/user_bloc.dart';
import 'package:manzil/auth/domain/role_model.dart';
import 'package:manzil/auth/presentation/widgets/name_input.dart';
import 'package:manzil/auth/presentation/widgets/personal_data_input.dart';

import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';
import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/core/presentation/widgets/confirm_button.dart';

import 'package:manzil/gen/assets.gen.dart';
import 'package:manzil/main/domain/trip_model.dart';
import 'package:manzil/main/presentation/widgets/create_trip_page/select_region_page.dart';
import 'package:manzil/main/presentation/widgets/create_trip_page/select_trip_type.dart';
import 'package:manzil/orders/bloc/trip_bloc.dart';
import 'package:manzil/orders/bloc/trips_bloc.dart';

import 'package:manzil/routes/route_names.dart';

enum TripType {
  taxi,
  delivery,
  towTruck,
  driverServices,
}

class CreateTripPage extends HookWidget {
  final TripType initialType;

  const CreateTripPage({super.key, this.initialType = TripType.taxi});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final weightController = useTextEditingController();
    final l10n = context.l10n;
    final tripType = useState(initialType);
    final userType = context.watch<UserBloc>().state.role;
    return BlocBuilder<TripBloc, TripModel>(
      builder: (context, tripState) {
        return Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size(double.infinity, 60),
              child: CustomAppBar(getTripTitle(tripType.value, context))),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _selectAddress(context, tripState),
                        const Gap(20),
                        if (userType == Role.driver)
                          _selectTripType(context, tripType),
                        Text(
                          l10n.selectDate,
                          style: AppStyles.fontSize16Weight500,
                        ),
                        const Gap(10),
                        PersonalDataInput(
                          icon: Assets.icons.calendar,
                          title: tripState.date.isEmpty ? null : tripState.date,
                          onTap: () {
                            showTripdayPicker(context);
                          },
                          hintText: l10n.enter,
                        ),
                        const Gap(20),
                        Text(
                          l10n.landingTime,
                          style: AppStyles.fontSize16Weight500,
                        ),
                        const Gap(10),
                        Row(
                          children: [
                            Expanded(
                              child: PersonalDataInput(
                                icon: Assets.icons.clockGrey,
                                title: tripState.fromTime.isEmpty
                                    ? null
                                    : tripState.fromTime,
                                onTap: () {
                                  showTriptimePicker(context, isFrom: true);
                                },
                                hintText: l10n.fromTime,
                              ),
                            ),
                            const Gap(20),
                            Expanded(
                              child: PersonalDataInput(
                                icon: Assets.icons.clockGrey,
                                title: tripState.toTime.isEmpty
                                    ? null
                                    : tripState.toTime,
                                onTap: () {
                                  showTriptimePicker(context);
                                },
                                hintText: l10n.enter,
                              ),
                            ),
                          ],
                        ),
                        const Gap(20),
                        Text(
                          l10n.extraInfo,
                          style: AppStyles.fontSize16Weight500,
                        ),
                        const Gap(10),
                        NameInput(
                          controller: controller,
                          hintText: l10n.enter,
                          icon: Assets.icons.penIcon,
                        ),
                        if (tripType.value == TripType.delivery)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Gap(20),
                              Text(
                                l10n.weight,
                                style: AppStyles.fontSize16Weight500,
                              ),
                              const Gap(10),
                              NameInput(
                                controller: weightController,
                                hintText: l10n.enter,
                                icon: Assets.icons.penIcon,
                                isNumber: true,
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
                const CustomDivider(),
                const Gap(20),
                ConfirmButton(
                  title: l10n.publish,
                  onPressed: () {
                    if (tripType.value == TripType.delivery) {
                      if (weightController.text.isEmpty) {
                        showSnackBar(context, l10n.fillAllForms, isError: true);
                        return;
                      }
                      context
                          .read<TripBloc>()
                          .changeTripWeight(weightController.text);
                    }
                    print("comment: ${controller.text}");
                    if (tripState.fromAddress == null ||
                        tripState.toAddress == null ||
                        tripState.fromTime.isEmpty ||
                        tripState.toTime.isEmpty ||
                        tripState.date.isEmpty ||
                        tripState.toRegionId==0 ||
                        tripState.fromRegionId==0) {
                      showSnackBar(context, l10n.fillAllForms, isError: true);
                      return;
                    }
                    context.read<TripBloc>().changeTripComment(controller.text);

                    final user = context.read<UserBloc>().state;
                    context.read<TripsBloc>().addTrip(tripState, user);
                    context.read<TripBloc>().publishTrip();
                    Navigator.of(context).pop();
                    showSnackBar(context, "Trip added");
                  },
                ),
                const Gap(10),
              ],
            ),
          ),
        );
      },
    );
  }

  Column _selectTripType(
      BuildContext context, ValueNotifier<TripType> tripType) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.serviceOptions,
          style: AppStyles.fontSize16Weight500,
        ),
        const Gap(10),
        SelectTripType(
          tripType: tripType,
          type: TripType.taxi,
          icon: Assets.icons.taxiWhite,
          title: l10n.taxi,
        ),
        SelectTripType(
          tripType: tripType,
          type: TripType.delivery,
          icon: Assets.icons.deliveryWhite,
          title: l10n.delivery,
        ),
        SelectTripType(
          tripType: tripType,
          type: TripType.towTruck,
          icon: Assets.icons.towTruckWhite,
          title: l10n.towTruck,
        ),
        SelectTripType(
          tripType: tripType,
          type: TripType.driverServices,
          icon: Assets.icons.driverServicesWhite,
          title: l10n.driverServices,
        ),
        const Gap(20)
      ],
    );
  }

  Widget _selectAddress(BuildContext context, TripModel tripState) {
    final l10n = context.l10n;
    return Row(
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
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(AppRouteNames.selectRegionPage);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.fromWhere,
                      style: AppStyles.fontSize16Weight500,
                    ),
                    Text(
                      tripState.fromAddress ?? l10n.enterAddress,
                    ),
                  ],
                ),
              ),
              const Gap(50),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SelectRegionPage(
                      isTo: true,
                    ),
                  ));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.toWhere,
                      style: AppStyles.fontSize16Weight500,
                    ),
                    Text(
                      tripState.toAddress ?? l10n.enterAddress,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(Assets.icons.addSquare),
            const Gap(60),
            SvgPicture.asset(Assets.icons.addSquare),
          ],
        ),
      ],
    );
  }
}
