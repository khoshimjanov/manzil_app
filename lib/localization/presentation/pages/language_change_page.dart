import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';

import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/core/presentation/widgets/confirm_button.dart';
import 'package:manzil/gen/assets.gen.dart';
import 'package:manzil/l10n/shared/providers.dart';
import 'package:manzil/localization/domain/language_model.dart';
import 'package:manzil/localization/presentation/widgets/select_language_widget.dart';

class LanguageChangePage extends ConsumerWidget {
  const LanguageChangePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLanguage =
        getLanguageType(ref.watch(localeNotifierProvider).languageCode);
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.languageTitle),
        foregroundColor: AppColors.white,
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Text(
                      l10n.selectLanguage,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: AppStyles.fontSize16Weight500
                          .copyWith(color: AppColors.black),
                    ),
                  ),
                  SelectLanguageWidget(
                    countryFlagIcon: Assets.icons.russianFlag,
                    isSelected: currentLanguage == AppLocale.russian,
                    locale: AppLocale.russian,
                    title: l10n.russian,
                  ),
                  SelectLanguageWidget(
                    countryFlagIcon: Assets.icons.uzbekFlag,
                    isSelected: currentLanguage == AppLocale.uzbek,
                    locale: AppLocale.uzbek,
                    title: l10n.uzbek,
                  ),
                  SelectLanguageWidget(
                    countryFlagIcon: Assets.icons.englishFlag,
                    isSelected: currentLanguage == AppLocale.english,
                    locale: AppLocale.english,
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
                      title: l10n.next,
                      onPressed: () {
                        Navigator.of(context).pop();
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
