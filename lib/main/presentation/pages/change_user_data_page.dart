import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gap/gap.dart';
import 'package:manzil/auth/bloc/user_bloc.dart';
import 'package:manzil/auth/presentation/widgets/auth_page_widgets/phone_number_input.dart';
import 'package:manzil/auth/presentation/widgets/car_page_widgets/select_item_widgets.dart';
import 'package:manzil/auth/presentation/widgets/name_input.dart';
import 'package:manzil/auth/presentation/widgets/personal_data_input.dart';
import 'package:manzil/auth/presentation/widgets/select_gender_button.dart';
import 'package:manzil/core/bloc/user_data_bloc.dart';
import 'package:manzil/core/domain/gender_model.dart';

import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';

import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/core/presentation/widgets/confirm_button.dart';
import 'package:manzil/gen/assets.gen.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

class ChangeUserDataPage extends HookWidget {
  const ChangeUserDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userData = context.watch<UserBloc>().state;
    final nameController = useTextEditingController(text: userData.name);
    final surnameController = useTextEditingController(text: userData.surname);
    final phoneNumber = context.watch<UserBloc>().state.phoneNumber;
    final phoneController =
        useTextEditingController(text: phoneNumber.toString());
    final currentRegion = useState(context.watch<UserBloc>().state.region);
    final regions = context.watch<UserDataBloc>().state.regions;
    final DateTime currentBirthDay = context.watch<UserBloc>().state.birthday;
    final gender = context.watch<UserBloc>().state.gender;
    final l10n = context.l10n;
    void confirmInfo() {
      context.read<UserBloc>().changeName(nameController.text);
      context.read<UserBloc>().changeSurname(surnameController.text);

      if (nameController.text.isEmpty ||
          surnameController.text.isEmpty ||
          currentBirthDay == DateTime(0) ||
          currentRegion.value.name.isEmpty ||
          phoneController.text.length < 11) {
        showSnackBar(
          context,
          l10n.fillAllForms,
          isError: true,
        );
        return;
      } else {
        showSnackBar(context, l10n.dataChecked);
        context.read<UserBloc>().changeRegion(currentRegion.value);
        Future.delayed(const Duration(seconds: 2)).then(
          (value) {
            context.read<UserBloc>().changeUserInfo();
            Navigator.of(context).pop();
          },
        );
      }
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: CustomAppBar(l10n.personalData),
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
                      const Gap(20),
                      Text(
                        l10n.selectGender,
                        style: AppStyles.fontSize16Weight500,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: SelectGenderButton(
                              isSelected: gender == Gender.male,
                              onTap: () {
                                context
                                    .read<UserBloc>()
                                    .changeGender(Gender.male);
                              },
                              title: l10n.male,
                            ),
                          ),
                          Expanded(
                            child: SelectGenderButton(
                              isSelected: gender == Gender.female,
                              onTap: () {
                                context
                                    .read<UserBloc>()
                                    .changeGender(Gender.female);
                              },
                              title: l10n.female,
                            ),
                          ),
                        ],
                      ),
                      const Gap(10),
                      NameInput(
                          controller: nameController,
                          hintText: l10n.name,
                          icon: Assets.icons.personIcon),
                      const Gap(22),
                      NameInput(
                        controller: surnameController,
                        hintText: l10n.surname,
                        icon: Assets.icons.personIcon,
                      ),
                      const Gap(22),
                      PersonalDataInput(
                        title: nullTitle(
                            getRegionName(currentRegion.value.id, context)),
                        icon: Assets.icons.addSquare,
                        onTap: () {
                          showSelectDialog(
                            context,
                            SelectItemWidget(
                              items: regions,
                              item: currentRegion,
                              title: l10n.selectRegion,
                            ),
                          );
                        },
                        hintText: l10n.region,
                      ),
                      const Gap(22),
                      PersonalDataInput(
                        icon: Assets.icons.calendar,
                        title: currentBirthDay == DateTime(0)
                            ? null
                            : formatDate(currentBirthDay),
                        onTap: () {
                          showBirthdayPicker(context);
                        },
                        hintText: l10n.birthday,
                      ),
                      const Gap(22),
                      PhoneNumberInput(phoneController: phoneController),
                      const Gap(30),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(),
            const Gap(15),
            ConfirmButton(
              title: l10n.save,
              onPressed: () => confirmInfo(),
            ),
            const Gap(20)
          ],
        ),
      ),
    );
  }
}
