import 'package:flutter/material.dart';
import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/l10n/l10n.dart';
// export 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension BuildContextGeneral on BuildContext {


  AppTheme get theme {
    return AppTheme();
  }

  // AppFonts get style {
  //   return theme.darkTheme().extension<AppFonts>()!;

  // }
  AppLocalizations get l10n => AppLocalizations.of(this);

  // AppLocalizations get l10n => AppLocalizations.of(this);

  // AppLocalization get localization {
  //   return AppLocalization();
  // }

  // AppIcons get icons {
  //   return AppIcons();
  // }

  // AppImages get images {
  //   return AppImages();
  // }
}
