import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:manzil/auth/presentation/widgets/select_role_widget.dart';

import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';

import 'package:manzil/core/presentation/widgets/confirm_button.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:manzil/gen/assets.gen.dart';

class FillBalancePage extends HookWidget {
  const FillBalancePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final isPayme = useState(false);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: CustomAppBar(l10n.refillBalance),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: SelectRoleWidget(
                          title: l10n.passenger,
                          icon: Assets.icons.click,
                          onTap: () {
                            isPayme.value = false;
                          },
                          isSelected: isPayme.value == false,
                        ),
                      ),
                      const Gap(20),
                      Expanded(
                        child: SelectRoleWidget(
                          title: l10n.driver,
                          icon: Assets.icons.payme,
                          onTap: () {
                            isPayme.value = true;
                          },
                          isSelected: isPayme.value,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            const Gap(20),
            ConfirmButton(title: l10n.next, onPressed: () {}),
            const Gap(20)
          ],
        ),
      ),
    );
  }
}
