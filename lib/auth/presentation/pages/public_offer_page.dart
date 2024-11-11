import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:manzil/auth/presentation/widgets/public_offer_button.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';

import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/core/presentation/widgets/confirm_button.dart';
import 'package:manzil/gen/assets.gen.dart';
import 'package:manzil/routes/route_names.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

class PublicOfferPage extends HookWidget {
  const PublicOfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    var isSelected = useState(false);
    final l10n = context.l10n;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: CustomAppBar(l10n.authentication),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Gap(20),
                      Image.asset(Assets.images.publicOfferImage.path),
                      const Gap(30),
                      Text(
                        l10n.publicOfferText,
                        style: AppStyles.fontSize16Weight400
                            .copyWith(color: AppColors.black),
                      ),
                      const Gap(30),
                      PublicOfferButton(
                        isPressed: isSelected,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Divider(),
            const Gap(15),
            ConfirmButton(
                title: l10n.confirm,
                onPressed: () {
                  if (isSelected.value == false) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                        l10n.publicOfferConfirm,
                        style: AppStyles.fontSize16Weight400
                            .copyWith(color: AppColors.white),
                      ),
                      backgroundColor: AppColors.appbarBackground,
                      duration: const Duration(seconds: 1),
                    ));
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
