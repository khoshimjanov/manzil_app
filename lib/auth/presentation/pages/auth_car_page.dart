// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manzil/auth/bloc/user_bloc.dart';
import 'package:manzil/auth/presentation/widgets/car_page_widgets/select_item_widgets.dart';
import 'package:manzil/auth/presentation/widgets/name_input.dart';
import 'package:manzil/auth/presentation/widgets/personal_data_input.dart';
import 'package:manzil/auth/presentation/widgets/public_offer_button.dart';
import 'package:manzil/auth/shared/providers..dart';
import 'package:manzil/core/bloc/user_data_bloc.dart';
import 'package:manzil/core/domain/car_brand_model.dart';
import 'package:manzil/core/domain/car_data_model.dart';
import 'package:manzil/core/domain/car_model.dart';
import 'package:manzil/core/domain/class_model.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';

import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/core/presentation/widgets/confirm_button.dart';
import 'package:manzil/gen/assets.gen.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:manzil/routes/route_names.dart';

class AuthCarPage extends HookConsumerWidget {
  const AuthCarPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final carNumberController = useTextEditingController();
    final carYearController = useTextEditingController();
    final carLicenseController = useTextEditingController();
    final driverExperienceController = useTextEditingController();
    var isPressed = useState(false);
    var currentClass = useState(const CarClassModel(id: 0, name: ""));
    var currentBrand = useState(const CarBrandModel(id: 0, name: ""));
    var currentModel = useState(const CarModel(id: 0, name: ""));
    final data = context.watch<UserDataBloc>().state;
    final user = context.watch<UserBloc>().state;
    final l10n = context.l10n;
    void confirmInfo() {
      if (isPressed.value == false ||
          currentClass.value.id == 0 ||
          currentBrand.value.id == 0 ||
          currentModel.value.id == 0 ||
          carNumberController.text.isEmpty ||
          carYearController.text.isEmpty ||
          carLicenseController.text.isEmpty ||
          driverExperienceController.text.isEmpty) {
        showSnackBar(
          context,
          l10n.publicOfferConfirm,
          isError: true,
        );
        return;
      } else {
        showSnackBar(context, l10n.dataChecked);
        Future.delayed(const Duration(seconds: 2)).then(
          (value) async {
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
            print("user code ${user.code}");
            final id = await ref
                .read(authRepositoryProvider)
                .register(user, int.parse(user.code!));
            if (id == 0) {
              showSnackBar(context, "something went wrong", isError: true);
              return;
            }
            context.read<UserBloc>().addUserInfo(id);

            Navigator.of(context).pushNamedAndRemoveUntil(
              AppRouteNames.homePage,
              (route) => false,
            );
          },
        );
      }
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: CustomAppBar(l10n.driverTitle),
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
                        title: nullTitle(currentClass.value.name),
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
                        title: nullTitle(currentBrand.value.name),
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
                        title: nullTitle(currentModel.value.name),
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
                      PublicOfferButton(
                        isPressed: isPressed,
                      )
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
