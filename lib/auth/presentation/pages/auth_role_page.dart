import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:manzil/auth/presentation/widgets/select_role_widget.dart';

import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/widgets/confirm_button.dart';
import 'package:manzil/gen/assets.gen.dart';
import 'package:manzil/routes/route_names.dart';

enum Role { passenger, driver }

class AuthRolePage extends HookWidget {
  const AuthRolePage({super.key});

  @override
  Widget build(BuildContext context) {
    var role = useState(Role.passenger);
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
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    l10n.authAs,
                    style: context.style.fontSize18Weight500,
                  ),
                  const Gap(30),
                  Row(
                    children: [
                      Expanded(
                        child: SelectRoleWidget(
                          title: l10n.passenger,
                          icon: Assets.icons.passengerIcon,
                          onTap: () {
                            role.value = Role.passenger;
                          },
                          isSelected: role.value == Role.passenger,
                        ),
                      ),
                      const Gap(20),
                      Expanded(
                        child: SelectRoleWidget(
                          title: l10n.driver,
                          icon: Assets.icons.driverIcon,
                          onTap: () {
                            role.value = Role.driver;
                          },
                          isSelected: role.value == Role.driver,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ConfirmButton(
              title: l10n.next,
              onPressed: () {
              Navigator.of(context).pushNamed(AppRouteNames.signUpPage);
              },
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
