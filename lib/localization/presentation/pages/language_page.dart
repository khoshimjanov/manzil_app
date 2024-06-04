import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';

import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/widgets/confirm_button.dart';
import 'package:manzil/core/shared/providers.dart';
import 'package:manzil/gen/assets.gen.dart';
import 'package:manzil/localization/domain/language_model.dart';
import 'package:manzil/localization/presentation/widgets/select_language_widget.dart';
import 'package:manzil/routes/route_names.dart';

class LanguagePage extends ConsumerWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLanguage =
        getLanguageType(ref.watch(localeNotifierProvider).languageCode);
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.languageTitle),
        foregroundColor: context.colors.white,
        backgroundColor: AppColors.appbarBackground,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      l10n.selectLanguage,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: context.style.fontSize16Weight500
                          .copyWith(color: context.colors.black),
                    ),
                  ),
                  SelectLanguageWidget(
                    countryFlagIcon: Assets.icons.russianFlag,
                    icon: currentLanguage == AppLocale.russian
                        ? Assets.icons.selectedIcon
                        : Assets.icons.unselectedIcon,
                    onTap: () {
                      ref
                          .read(localeNotifierProvider.notifier)
                          .changeLanguage(AppLocale.russian);
                    },
                    title: l10n.russian,
                  ),
                  SelectLanguageWidget(
                    countryFlagIcon: Assets.icons.uzbekFlag,
                    icon: currentLanguage == AppLocale.uzbek
                        ? Assets.icons.selectedIcon
                        : Assets.icons.unselectedIcon,
                    onTap: () {
                      ref
                          .read(localeNotifierProvider.notifier)
                          .changeLanguage(AppLocale.uzbek);
                    },
                    title: l10n.uzbek,
                  ),
                  SelectLanguageWidget(
                    countryFlagIcon: Assets.icons.englishFlag,
                    icon: currentLanguage == AppLocale.english
                        ? Assets.icons.selectedIcon
                        : Assets.icons.unselectedIcon,
                    onTap: () {
                      ref
                          .read(localeNotifierProvider.notifier)
                          .changeLanguage(AppLocale.english);
                    },
                    title: l10n.english,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Divider(),
                  const Gap(15),
                  ConfirmButton(
                      title: 'Confirm',
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(AppRouteNames.publicOfferPage);
                      }),
                ],
              ),
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}

// String getLanguageName(BuildContext context, AppLocale language) {
//   final l10n = context.l10n;
//   switch (language) {
//     case AppLocale.uzbek:
//       return l10n.uz;
//     case AppLocale.russian:
//       return l10n.ru;
//     case AppLocale.english:
//       return l10n.en;
//   }
// }

AppLocale getLanguageType(String locale) {
  switch (locale) {
    case 'uz':
      return AppLocale.uzbek;
    case 'ru':
      return AppLocale.russian;
    case 'en':
      return AppLocale.english;
  }
  return AppLocale.english;
}
