// dart format width=100

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Calendar.svg
  SvgGenImage get calendar => const SvgGenImage('assets/icons/Calendar.svg');

  /// File path: assets/icons/calendar_month_outlined.svg
  SvgGenImage get calendarMonthOutlined =>
      const SvgGenImage('assets/icons/calendar_month_outlined.svg');

  /// File path: assets/icons/eye_slash_closed.svg
  SvgGenImage get eyeSlashClosed => const SvgGenImage('assets/icons/eye_slash_closed.svg');

  /// File path: assets/icons/eye_slash_opened.svg
  SvgGenImage get eyeSlashOpened => const SvgGenImage('assets/icons/eye_slash_opened.svg');

  /// File path: assets/icons/favorites.svg
  SvgGenImage get favorites => const SvgGenImage('assets/icons/favorites.svg');

  /// File path: assets/icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/home.svg');

  /// File path: assets/icons/iconbackbutton.svg
  SvgGenImage get iconbackbutton => const SvgGenImage('assets/icons/iconbackbutton.svg');

  /// File path: assets/icons/stats.svg
  SvgGenImage get stats => const SvgGenImage('assets/icons/stats.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        calendar,
        calendarMonthOutlined,
        eyeSlashClosed,
        eyeSlashOpened,
        favorites,
        home,
        iconbackbutton,
        stats
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/App_logo.png
  AssetGenImage get appLogo => const AssetGenImage('assets/images/App_logo.png');

  /// File path: assets/images/App_logo_front.png
  AssetGenImage get appLogoFront => const AssetGenImage('assets/images/App_logo_front.png');

  /// File path: assets/images/Karbon_hesapla.png
  AssetGenImage get karbonHesapla => const AssetGenImage('assets/images/Karbon_hesapla.png');

  /// File path: assets/images/Recycle.png
  AssetGenImage get recycle => const AssetGenImage('assets/images/Recycle.png');

  /// File path: assets/images/carbon_mask.png
  AssetGenImage get carbonMask => const AssetGenImage('assets/images/carbon_mask.png');

  /// File path: assets/images/home_stats_card1.png
  AssetGenImage get homeStatsCard1 => const AssetGenImage('assets/images/home_stats_card1.png');

  /// File path: assets/images/login_mask.png
  AssetGenImage get loginMask => const AssetGenImage('assets/images/login_mask.png');

  /// File path: assets/images/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        appLogo,
        appLogoFront,
        karbonHesapla,
        recycle,
        carbonMask,
        homeStatsCard1,
        loginMask,
        splash
      ];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/tr.json
  String get tr => 'assets/translations/tr.json';

  /// List of all assets
  List<String> get values => [tr];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ?? (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
