// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manzil/auth/bloc/user_bloc.dart';
import 'package:manzil/auth/presentation/widgets/auth_page_widgets/phone_number_input.dart';
import 'package:manzil/auth/presentation/widgets/auth_page_widgets/pincode_widget.dart';
import 'package:manzil/auth/presentation/widgets/social_media_button.dart';
import 'package:manzil/auth/shared/providers..dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';
import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/core/presentation/widgets/confirm_button.dart';
import 'package:manzil/gen/assets.gen.dart';

class AuthPage extends HookConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phoneNumber = useState('');
    final phoneController = useTextEditingController();
    final codeController = useTextEditingController();
    final formKey = GlobalKey<FormState>();
    var isSubmitted = useState(false);
    var isRegistered = useState(false);
    var type = useState(2);
    final l10n = context.l10n;
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: CustomAppBar(l10n.authentication),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Gap(30),
                SvgPicture.asset(Assets.icons.appLogo),
                const Gap(30),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    l10n.authPhoneNumber,
                    style: AppStyles.fontSize16Weight500
                        .copyWith(color: AppColors.black),
                  ),
                ),
                const Gap(20),
                isSubmitted.value
                    ? PincodeWidget(
                        codeController: codeController,
                        ref: ref,
                        phoneNumber: phoneNumber,
                        isRegistered: isRegistered.value,
                        type: type.value,
                      )
                    : PhoneNumberInput(phoneController: phoneController),
                const Gap(20),
                ConfirmButton(
                  title: isSubmitted.value ? l10n.login : l10n.sendSMScode,
                  onPressed: () async {
                    if (isSubmitted.value) {
                      // Navigator.of(context)
                      //     .pushNamed(AppRouteNames.authRolePage);
                    } else {
                      if (phoneController.text.length < 11) {
                        showSnackBar(context, l10n.enterPhoneNumber);
                        return;
                      }
                      phoneNumber.value = phoneController.text;

                      await ref
                          .read(authRepositoryProvider)
                          .getCode(phoneNumber.value)
                          .then(
                        (value) {
                          isRegistered.value = value[0];
                          if (isRegistered.value) {
                            type.value = value[1];
                          }
                        },
                      );
                      isSubmitted.value = true;

                      context
                          .read<UserBloc>()
                          .changePhoneNumber(phoneController.text);
                      print("registered:${isRegistered.value}");
                    }
                  },
                ),
                const Gap(30),
                const Divider(),
                const Gap(15),
                Text(
                  l10n.loginWith,
                  textAlign: TextAlign.center,
                  style: AppStyles.fontSize16Weight500
                      .copyWith(color: AppColors.black),
                ),
                const Gap(15),
                _socialMediaButtons(),
                const Gap(30),
                const Divider(
                  color: AppColors.grey,
                ),
                const Gap(40),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    l10n.noAccount,
                    style: AppStyles.fontSize16Weight500
                        .copyWith(decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _socialMediaButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SocialMediaButton(
          icon: Assets.icons.facebookLogo,
          title: 'Facebook',
        ),
        SocialMediaButton(
          icon: Assets.icons.telegramLogo,
          title: 'Telegram',
        ),
        SocialMediaButton(
          icon: Assets.icons.googleLogo,
          title: 'Google',
        ),
      ],
    );
  }
}
