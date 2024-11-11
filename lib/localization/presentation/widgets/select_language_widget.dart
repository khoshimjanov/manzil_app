import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manzil/gen/assets.gen.dart';
import 'package:manzil/l10n/shared/providers.dart';
import 'package:manzil/localization/domain/language_model.dart';

class SelectLanguageWidget extends ConsumerWidget {
  final String title;
  final bool isSelected;
  final String countryFlagIcon;
  final AppLocale locale;
  const SelectLanguageWidget({
    super.key,
    required this.title,
    required this.isSelected,
    required this.countryFlagIcon,
    required this.locale,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      onTap: () {
        ref.read(localeNotifierProvider.notifier).changeLanguage(locale);
      },
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      leading: SvgPicture.asset(countryFlagIcon),
      title: Text(title),
      trailing: SvgPicture.asset(
        isSelected ? Assets.icons.selectedIcon : Assets.icons.unselectedIcon,
      ),
    );
  }
}
