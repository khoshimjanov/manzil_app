// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';

import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/widgets/confirm_button.dart';
import 'package:manzil/gen/assets.gen.dart';
import 'package:manzil/routes/route_names.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

class SignUpPage extends HookWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var isSelected = useState(false);
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: context.colors.white,
        title: Text(l10n.authentication),
        backgroundColor: AppColors.appbarBackground,
      ),
      body: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
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
                      // const Gap(30),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                isSelected.value = !isSelected.value;
                              },
                              icon: SvgPicture.asset(
                                isSelected.value
                                    ? Assets.icons.selectedIcon
                                    : Assets.icons.unselectedIcon,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                l10n.publicOfferAcceptance,
                                maxLines: 3,
                                style: context.style.fontSize16Weight400
                                    .copyWith(color: context.colors.black),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Gap(20),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(),
            const Gap(15),
            ConfirmButton(
                title: 'Confirm',
                onPressed: () {
                  if (isSelected.value == false) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Please, Confirm public offer")));
                    return;
                  }
                  Navigator.of(context).pushNamed(AppRouteNames.authPage);
                }),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
