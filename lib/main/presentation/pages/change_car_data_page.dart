import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:manzil/auth/bloc/user_bloc.dart';
import 'package:manzil/auth/presentation/widgets/car_page_widgets/select_item_widgets.dart';
import 'package:manzil/auth/presentation/widgets/name_input.dart';
import 'package:manzil/auth/presentation/widgets/personal_data_input.dart';
import 'package:manzil/core/bloc/user_data_bloc.dart';
import 'package:manzil/core/domain/car_data_model.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';

import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/core/presentation/widgets/confirm_button.dart';
import 'package:manzil/gen/assets.gen.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

class ChangeCarDataPage extends HookWidget {
  const ChangeCarDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    final carData = context.watch<UserBloc>().state.carmodel!;
    final data = context.watch<UserDataBloc>().state;
    final carNumberController =
        useTextEditingController(text: carData.plateNumber);
    final carYearController =
        useTextEditingController(text: carData.carYear.toString());
    final carLicenseController =
        useTextEditingController(text: carData.licenseNumber);
    final driverExperienceController =
        useTextEditingController(text: carData.driverExperience.toString());
    var currentClass = useState(carData.carClass);
    var currentBrand = useState(carData.carBrand);
    var currentModel = useState(carData.model);
    final l10n = context.l10n;
    void confirmInfo() {
      if (carNumberController.text.isEmpty ||
          carYearController.text.length < 4 ||
          carLicenseController.text.isEmpty ||
          driverExperienceController.text.isEmpty) {
        showSnackBar(
          context,
          l10n.fillAllForms,
          isError: true,
        );
        return;
      } else {
        showSnackBar(context, l10n.dataChecked);
        Future.delayed(const Duration(seconds: 2)).then(
          (value) {
            final carInfo = CarDataModel(
              carClass: currentClass.value,
              carBrand: currentBrand.value,
              model: currentModel.value,
              plateNumber: carNumberController.text,
              carYear: int.parse(carYearController.text),
              licenseNumber: carLicenseController.text,
              driverExperience: int.parse(driverExperienceController.text),
            );
            context.read<UserBloc>().addCarInfo(carInfo);
            context.read<UserBloc>().changeUserInfo();
            Navigator.of(context).pop();
          },
        );
      }
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: CustomAppBar(l10n.car),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(Assets.images.carImage.path),
                      const Gap(20),
                      Text(
                        l10n.carDetails,
                        style: AppStyles.fontSize16Weight400,
                      ),
                      const Gap(20),
                      PersonalDataInput(
                        title: nullTitle(
                            getClassName(currentClass.value.id, context)),
                        hintText: l10n.carClass,
                        icon: Assets.icons.addSquare,
                        onTap: () {
                          showSelectDialog(
                              context,
                              isShort: true,
                              SelectItemWidget(
                                items: data.classes,
                                item: currentClass,
                                title: l10n.carClass,
                              ));
                        },
                      ),
                      const Gap(20),
                      PersonalDataInput(
                        title: nullTitle(
                            getBrandName(currentBrand.value.id, context)),
                        hintText: l10n.carBrand,
                        icon: Assets.icons.addSquare,
                        onTap: () {
                          showSelectDialog(
                              context,
                              isShort: true,
                              SelectItemWidget(
                                items: data.carBrands,
                                item: currentBrand,
                                title: l10n.carBrand,
                              ));
                        },
                      ),
                      const Gap(20),
                      PersonalDataInput(
                        title: nullTitle(
                            getCarModelName(currentModel.value.id, context)),
                        hintText: l10n.carModel,
                        icon: Assets.icons.addSquare,
                        onTap: () {
                          showSelectDialog(
                              context,
                              SelectItemWidget(
                                items: data.carModels,
                                item: currentModel,
                                title: l10n.carModel,
                              ));
                        },
                      ),
                      const Gap(10),
                      NameInput(
                        controller: carNumberController,
                        hintText: l10n.carlicensePlate,
                        icon: Assets.icons.penIcon,
                      ),
                      const Gap(20),
                      NameInput(
                          controller: carYearController,
                          hintText: l10n.carYear,
                          icon: Assets.icons.penIcon,
                          isNumber: true),
                      const Gap(20),
                      NameInput(
                        controller: carLicenseController,
                        hintText: l10n.licenseNumber,
                        icon: Assets.icons.penIcon,
                      ),
                      const Gap(20),
                      NameInput(
                          controller: driverExperienceController,
                          hintText: l10n.drivingExperience,
                          icon: Assets.icons.penIcon,
                          isNumber: true),
                      const Gap(30),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(),
            const Gap(15),
            ConfirmButton(title: l10n.next, onPressed: () => confirmInfo()),
            const Gap(20)
          ],
        ),
      ),
    );
  }
}
