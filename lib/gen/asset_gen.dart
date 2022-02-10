/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************
import 'package:flutter/widgets.dart';

class $AssetsCategoryGen {
  const $AssetsCategoryGen();

  AssetGenImage get bottomicon1 =>
      const AssetGenImage('assets/category/bottomicon1.png');
  AssetGenImage get bottomicon2 =>
      const AssetGenImage('assets/category/bottomicon2.png');
  AssetGenImage get bottomicon3 =>
      const AssetGenImage('assets/category/bottomicon3.png');
  AssetGenImage get grid => const AssetGenImage('assets/category/grid.png');
  AssetGenImage get grid2 => const AssetGenImage('assets/category/grid2.png');
  AssetGenImage get icSweets =>
      const AssetGenImage('assets/category/icSweets.png');
  AssetGenImage get imageBread =>
      const AssetGenImage('assets/category/image_Bread.png');
  AssetGenImage get imageFruit =>
      const AssetGenImage('assets/category/image_fruit.png');
  AssetGenImage get media => const AssetGenImage('assets/category/media.png');
}

class $AssetsCategorydetailGen {
  const $AssetsCategorydetailGen();

  AssetGenImage get categorydetail =>
      const AssetGenImage('assets/categorydetail/categorydetail.png');
  AssetGenImage get vegetable =>
      const AssetGenImage('assets/categorydetail/vegetable.png');
}

class $AssetsMockGen {
  const $AssetsMockGen();

  String get categories => 'assets/mock/categories.json';
}

class $AssetsPaymentGen {
  const $AssetsPaymentGen();

  AssetGenImage get camera => const AssetGenImage('assets/payment/camera.png');
  AssetGenImage get pay1 => const AssetGenImage('assets/payment/pay1.png');
  AssetGenImage get pay2 => const AssetGenImage('assets/payment/pay2.png');
  AssetGenImage get pay3 => const AssetGenImage('assets/payment/pay3.png');
  AssetGenImage get pay4 => const AssetGenImage('assets/payment/pay4.png');
}

class $AssetsProductdetailGen {
  const $AssetsProductdetailGen();

  AssetGenImage get productdetail1 =>
      const AssetGenImage('assets/productdetail/productdetail1.png');
}

class $AssetsSplashGen {
  const $AssetsSplashGen();

  AssetGenImage get splashbackground =>
      const AssetGenImage('assets/splash/splashbackground.png');
  AssetGenImage get splashicon =>
      const AssetGenImage('assets/splash/splashicon.png');
  AssetGenImage get splashlogo =>
      const AssetGenImage('assets/splash/splashlogo.png');
}

class Assets {
  Assets._();

  static const $AssetsCategoryGen category = $AssetsCategoryGen();
  static const $AssetsCategorydetailGen categorydetail =
  $AssetsCategorydetailGen();
  static const $AssetsMockGen mock = $AssetsMockGen();
  static const $AssetsPaymentGen payment = $AssetsPaymentGen();
  static const $AssetsProductdetailGen productdetail =
  $AssetsProductdetailGen();
  static const $AssetsSplashGen splash = $AssetsSplashGen();
  static const AssetGenImage splashbackground =
  AssetGenImage('assets/splashbackground.png');
  static const AssetGenImage splashicon =
  AssetGenImage('assets/splashicon.png');
  static const AssetGenImage splashlogo =
  AssetGenImage('assets/splashlogo.png');
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
