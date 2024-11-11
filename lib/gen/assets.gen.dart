/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsBackgroundGen {
  const $AssetsBackgroundGen();

  /// File path: assets/background/bottom_1.png
  AssetGenImage get bottom1 =>
      const AssetGenImage('assets/background/bottom_1.png');

  /// File path: assets/background/bottom_2.png
  AssetGenImage get bottom2 =>
      const AssetGenImage('assets/background/bottom_2.png');

  /// File path: assets/background/top.png
  AssetGenImage get top => const AssetGenImage('assets/background/top.png');

  /// List of all assets
  List<AssetGenImage> get values => [bottom1, bottom2, top];
}

class $AssetsCardsGen {
  const $AssetsCardsGen();

  /// File path: assets/cards/bag.png
  AssetGenImage get bag => const AssetGenImage('assets/cards/bag.png');

  /// File path: assets/cards/car.png
  AssetGenImage get car => const AssetGenImage('assets/cards/car.png');

  /// File path: assets/cards/card_back.png
  AssetGenImage get cardBack =>
      const AssetGenImage('assets/cards/card_back.png');

  /// File path: assets/cards/chart.png
  AssetGenImage get chart => const AssetGenImage('assets/cards/chart.png');

  /// File path: assets/cards/co2.png
  AssetGenImage get co2 => const AssetGenImage('assets/cards/co2.png');

  /// File path: assets/cards/education.png
  AssetGenImage get education =>
      const AssetGenImage('assets/cards/education.png');

  /// File path: assets/cards/folder.png
  AssetGenImage get folder => const AssetGenImage('assets/cards/folder.png');

  /// File path: assets/cards/house.png
  AssetGenImage get house => const AssetGenImage('assets/cards/house.png');

  /// File path: assets/cards/invoice.png
  AssetGenImage get invoice => const AssetGenImage('assets/cards/invoice.png');

  /// File path: assets/cards/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/cards/logo.png');

  /// File path: assets/cards/mona_lisa.png
  AssetGenImage get monaLisa =>
      const AssetGenImage('assets/cards/mona_lisa.png');

  /// File path: assets/cards/note.png
  AssetGenImage get note => const AssetGenImage('assets/cards/note.png');

  /// File path: assets/cards/safe.png
  AssetGenImage get safe => const AssetGenImage('assets/cards/safe.png');

  /// File path: assets/cards/sneaker.png
  AssetGenImage get sneaker => const AssetGenImage('assets/cards/sneaker.png');

  /// File path: assets/cards/suitcase.png
  AssetGenImage get suitcase =>
      const AssetGenImage('assets/cards/suitcase.png');

  /// File path: assets/cards/wine.png
  AssetGenImage get wine => const AssetGenImage('assets/cards/wine.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        bag,
        car,
        cardBack,
        chart,
        co2,
        education,
        folder,
        house,
        invoice,
        logo,
        monaLisa,
        note,
        safe,
        sneaker,
        suitcase,
        wine
      ];
}

class Assets {
  Assets._();

  static const String package = 'cards';

  static const $AssetsBackgroundGen background = $AssetsBackgroundGen();
  static const $AssetsCardsGen cards = $AssetsCardsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  static const String package = 'cards';

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
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
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
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/cards/$_assetName';
}
