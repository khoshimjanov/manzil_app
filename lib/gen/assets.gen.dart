/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/app-logo.svg
  String get appLogo => 'assets/icons/app-logo.svg';

  /// File path: assets/icons/call.svg
  String get call => 'assets/icons/call.svg';

  /// File path: assets/icons/driver-icon.svg
  String get driverIcon => 'assets/icons/driver-icon.svg';

  /// File path: assets/icons/english-flag.svg
  String get englishFlag => 'assets/icons/english-flag.svg';

  /// File path: assets/icons/facebook-logo.svg
  String get facebookLogo => 'assets/icons/facebook-logo.svg';

  /// File path: assets/icons/global.svg
  String get global => 'assets/icons/global.svg';

  /// File path: assets/icons/google-logo.svg
  String get googleLogo => 'assets/icons/google-logo.svg';

  /// File path: assets/icons/passenger-icon.svg
  String get passengerIcon => 'assets/icons/passenger-icon.svg';

  /// File path: assets/icons/russian-flag.svg
  String get russianFlag => 'assets/icons/russian-flag.svg';

  /// File path: assets/icons/selected_icon.svg
  String get selectedIcon => 'assets/icons/selected_icon.svg';

  /// File path: assets/icons/telegram-logo.svg
  String get telegramLogo => 'assets/icons/telegram-logo.svg';

  /// File path: assets/icons/unselected-icon.svg
  String get unselectedIcon => 'assets/icons/unselected-icon.svg';

  /// File path: assets/icons/uzbek-flag.svg
  String get uzbekFlag => 'assets/icons/uzbek-flag.svg';

  /// List of all assets
  List<String> get values => [
        appLogo,
        call,
        driverIcon,
        englishFlag,
        facebookLogo,
        global,
        googleLogo,
        passengerIcon,
        russianFlag,
        selectedIcon,
        telegramLogo,
        unselectedIcon,
        uzbekFlag
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app-logo-main.png
  AssetGenImage get appLogoMain =>
      const AssetGenImage('assets/images/app-logo-main.png');

  /// File path: assets/images/public-offer-image.png
  AssetGenImage get publicOfferImage =>
      const AssetGenImage('assets/images/public-offer-image.png');

  /// File path: assets/images/splash-image.png
  AssetGenImage get splashImage =>
      const AssetGenImage('assets/images/splash-image.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [appLogoMain, publicOfferImage, splashImage];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}