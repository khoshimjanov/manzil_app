import 'package:flutter/material.dart';

import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manzil/auth/presentation/widgets/social_media_button.dart';
import 'package:manzil/auth/shared/providers..dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/widgets/confirm_button.dart';
import 'package:manzil/gen/assets.gen.dart';
import 'package:manzil/routes/route_names.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AuthPage extends HookConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phoneController = TextEditingController();
    // ValueNotifier selected = ValueNotifier(false);
    var isSubmitted = useState(false);
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
          foregroundColor: context.colors.white,
          title: Text(l10n.authentication),
          backgroundColor: AppColors.appbarBackground,
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                Assets.icons.global,
              ),
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Gap(30),
              SvgPicture.asset(Assets.icons.appLogo),
              const Gap(30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  textAlign: TextAlign.center,
                  l10n.authPhoneNumber,
                  style: context.style.fontSize16Weight500
                      .copyWith(color: context.colors.black),
                ),
              ),
              const Gap(20),
              isSubmitted.value
                  ? PinCodeTextField(
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        // color: Colors.green.shade600,
                        fontWeight: FontWeight.bold,
                      ),
                      length: 6,
                      // obscureText: true,
                      // obscuringCharacter: '*',
                      // obscuringWidget: const FlutterLogo(
                      //   size: 24,
                      // ),
                      blinkWhenObscuring: true,
                      animationType: AnimationType.fade,
                      validator: (v) {
                        if (v!.length < 3) {
                          return "I'm from validator";
                        } else {
                          return null;
                        }
                      },
                      pinTheme: PinTheme(
                        // selectedColor: Colors.deepPurple,
                        // disabledColor: Colors.yellow,
                        // inactiveColor: Colors.green,
                        shape: PinCodeFieldShape.underline,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 60,
                        fieldWidth: 50,

                        // activeFillColor: Colors.white,
                        // inactiveFillColor: Colors.deepOrange
                        inactiveColor:
                            Colors.white, // Color when the field is inactive
                        selectedColor: Colors.green,
                        activeFillColor: Colors.white,
                        // inactiveColor: Colors.white,
                        inactiveFillColor: Colors.white,
                        activeColor: Colors.white,
                        selectedFillColor: Colors.white,
                      ),
                      cursorColor: Colors.black,
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      // errorAnimationController: errorController,
                      // controller: textEditingController,
                      keyboardType: TextInputType.number,
                      boxShadows: const [
                        // BoxShadow(
                        //   offset: Offset(0, 1),
                        //   color: Colors.black12,
                        //   blurRadius: 10,
                        // )
                      ],
                      onCompleted: (v) {
                        print("Completed");
                      },

                      onChanged: (value) {
                        debugPrint(value);
                        // setState(() {
                        // currentText = value;
                        // });
                      },
                      beforeTextPaste: (text) {
                        debugPrint("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                    )
                  : Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: AppColors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        controller: phoneController,
                        inputFormatters: [
                          PhoneInputFormatter(
                            defaultCountryCode: 'UZ',
                            onCountrySelected: (value) {
                              phoneController.clear();
                            },
                          ),
                        ],
                        autofocus: true,
                        decoration: InputDecoration(
                          suffix: SizedBox(
                            child: SvgPicture.asset(Assets.icons.call),
                          ),
                          prefix: Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Text(
                              '+998',
                              style: context.style.fontSize16Weight500
                                  .copyWith(color: AppColors.greyish),
                            ),
                          ),
                          border: InputBorder.none,
                        ),
                        onSubmitted: (value) {
                          if (isSubmitted.value) {}
                          if (value.length < 11) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: AppColors.appbarBackground,
                                duration: const Duration(seconds: 1),
                                content: Text(
                                  "Please, enter a phone number fully",
                                  style: context.style.fontSize16Weight500
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                            );
                          }
                        },
                        keyboardType: TextInputType.number,
                      ),
                    ),
              const Gap(30),
              ConfirmButton(
                  title: isSubmitted.value ? l10n.login : l10n.sendSMScode,
                  onPressed: () async {
                    if (isSubmitted.value) {
                      Navigator.of(context)
                          .pushNamed(AppRouteNames.authRolePage);
                    } else {
                      if (phoneController.text.length < 11) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: AppColors.appbarBackground,
                            duration: const Duration(seconds: 1),
                            content: Text(
                              "Please, enter a phone number fully",
                              style: context.style.fontSize16Weight500
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        );
                        return;
                      }
                      isSubmitted.value = true;

                      ref
                          .read(authRepositoryProvider)
                          .getCode(phoneController.text);
                    }
                  }),
              const Gap(30),
              const Divider(),
              const Gap(15),
              Text(
                l10n.loginWith,
                textAlign: TextAlign.center,
                style: context.style.fontSize16Weight500
                    .copyWith(color: context.colors.black),
              ),
              const Gap(15),
              Row(
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
              ),
              const Gap(30),
              Divider(
                color: AppColors.grey,
              ),
              const Gap(40),
              MouseRegion(
                child: TextButton(
                  onPressed: () {},
                  child: Text(l10n.noAccount,
                      style: context.style.fontSize16Weight500.copyWith(
                        decoration: TextDecoration.underline,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
