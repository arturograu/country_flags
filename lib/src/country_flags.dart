import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jovial_svg/jovial_svg.dart';

/// The shape of the flag.
sealed class Shape {
  const Shape();
}

/// Rectangular shape.
class Rectangle extends Shape {
  /// Create an instance of [Rectangle].
  const Rectangle();
}

/// Circular shape.
class Circle extends Shape {
  /// Create an instance of [Circle].
  const Circle();
}

/// Rectangular shape with rounded corners.
class RoundedRectangle extends Shape {
  /// Create an instance of [RoundedRectangle].
  const RoundedRectangle(this.borderRadius);

  /// The border radius of the corners of the rectangle.
  final double borderRadius;
}

/// {@template country_flags}
/// A widget that displays a country flag.
/// {@endtemplate}
class CountryFlag extends StatelessWidget {
  /// Create an instance of [CountryFlag] based on a language.
  ///
  /// {@macro country_flags}
  CountryFlag.fromLanguageCode(
    String languageCode, {
    Shape shape = const Rectangle(),
    Key? key,
    double? height,
    double? width,
    bool cache = true,
  }) : this._(
          key: key,
          flagCode: FlagCode.fromLanguageCode(languageCode.toLowerCase()),
          width: width,
          height: height,
          shape: shape,
          cache: cache,
        );

  /// Create an instance of [CountryFlag] based on a country code.
  ///
  /// {@macro country_flags}
  CountryFlag.fromCountryCode(
    String countryCode, {
    Shape shape = const Rectangle(),
    double? height,
    double? width,
    bool cache = true,
    Key? key,
  }) : this._(
          key: key,
          flagCode: FlagCode.fromCountryCode(countryCode.toUpperCase()),
          width: width,
          height: height,
          shape: shape,
          cache: cache,
        );

  /// {@macro country_flags}
  const CountryFlag._({
    required this.shape,
    super.key,
    this.flagCode,
    this.width,
    this.height,
    this.cache = true,
  });

  /// The country ISO code of the flag to display.
  ///
  /// The list of country codes can be found here: https://www.iban.com/country-codes.
  final String? flagCode;

  /// The height of the flag.
  final double? height;

  /// The width of the flag.
  final double? width;

  /// The flag shape: 'circle' or 'rectangle'.
  final Shape shape;

  /// Whether to cache the flag image.
  /// If set to true, the flag image will be cached for future use.
  final bool cache;

  @override
  Widget build(BuildContext context) {
    return switch (shape) {
      Rectangle() => _RectangularFlag(
          flagCode: flagCode,
          width: width,
          height: height,
          cache: cache,
        ),
      Circle() => _CircularFlag(
          flagCode: flagCode,
          width: width,
          height: width,
          cache: cache,
        ),
      RoundedRectangle(:final borderRadius) => _RoundedRectangularFlag(
          borderRadius: borderRadius,
          width: width,
          height: height,
          flagCode: flagCode,
          cache: cache,
        ),
    };
  }
}

class _RectangularFlag extends StatelessWidget {
  const _RectangularFlag({
    this.flagCode,
    double? width,
    double? height,
    this.cache = true,
  })  : _width = width ?? 60,
        _height = height ?? 40;

  final String? flagCode;
  final double _width;
  final double _height;
  final bool cache;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _width,
      height: _height,
      child: flagCode != null
          ? _FlagImage(
              flagCode: flagCode,
              fit: BoxFit.cover,
              cache: cache,
            )
          : const _NotFoundFlag(),
    );
  }
}

class _CircularFlag extends StatelessWidget {
  const _CircularFlag({
    this.flagCode,
    double? width,
    double? height,
    this.cache = true,
  })  : _width = width ?? 40,
        _height = height ?? 40;

  final String? flagCode;
  final double _width;
  final double _height;
  final bool cache;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: const Key('countryFlags_CircularFlag_SizedBox'),
      width: _width,
      height: _height,
      child: ClipOval(
        child: flagCode != null
            ? _FlagImage(
                flagCode: flagCode,
                fit: BoxFit.cover,
                cache: cache,
              )
            : const _NotFoundFlag(),
      ),
    );
  }
}

class _RoundedRectangularFlag extends StatelessWidget {
  const _RoundedRectangularFlag({
    required this.borderRadius,
    this.flagCode,
    double? width,
    double? height,
    this.cache = true,
  })  : _width = width ?? 60,
        _height = height ?? 40;

  final String? flagCode;
  final double _width;
  final double _height;
  final double borderRadius;
  final bool cache;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: SizedBox(
        key: const Key('countryFlags_RoundedRectangularFlag_SizedBox'),
        width: _width,
        height: _height,
        child: flagCode != null
            ? _FlagImage(
                flagCode: flagCode,
                fit: BoxFit.cover,
                cache: cache,
              )
            : const _NotFoundFlag(),
      ),
    );
  }
}

class _NotFoundFlag extends StatelessWidget {
  const _NotFoundFlag();

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Colors.white,
      child: Center(
        child: Icon(Icons.question_mark),
      ),
    );
  }
}

class _FlagImage extends StatelessWidget {
  const _FlagImage({
    this.flagCode,
    this.fit = BoxFit.contain,
    this.cache = true,
  });

  final BoxFit fit;
  final String? flagCode;
  final bool cache;

  @override
  Widget build(BuildContext context) {
    if (flagCode == null) {
      return ScalableImageWidget(
        key: const Key('svgFlag'),
        si: ScalableImage.blank(),
      );
    }
    return ScalableImageWidget.fromSISource(
      key: const Key('svgFlag'),
      si: cache
          ? _FlagSICacheStorage._instance.getFlagSI(flagCode!)
          : ScalableImageSource.fromSI(
              rootBundle,
              'packages/country_flags/res/si/$flagCode.si',
            ),
      fit: fit,
    );
  }
}

/// Stores the flag image in memory.
void loadCountryFlagAsset(String flagCode, Uint8List bytes) {
  final source = _PreloadedScalableImageSource(flagCode, bytes);
  _FlagSICacheStorage._instance._cache[flagCode] = source;
}

/// Preload the flag from a country code or a language code.
Future<void> preloadCountryFlags(
    {String? countryCode, String? languageCode}) async {
  assert(
    (countryCode != null && languageCode == null) ||
        (countryCode == null && languageCode != null),
    'Either countryCode or languageCode must be provided.',
  );
  if (countryCode != null) {
    final fromCountryCode = FlagCode.fromCountryCode(countryCode);
    if (fromCountryCode != null) {
      await _FlagSICacheStorage._instance.getFlagSI(fromCountryCode).createSI();
    }
  } else {
    final fromLanguageCode = FlagCode.fromLanguageCode(languageCode!);
    if (fromLanguageCode != null) {
      await _FlagSICacheStorage._instance
          .getFlagSI(fromLanguageCode)
          .createSI();
    }
  }
}

/// Preload all country flags.
Future<void> preloadAllCountryFlags() async {
  for (final flagCode in FlagCode.flagValues) {
    await _FlagSICacheStorage._instance.getFlagSI(flagCode).createSI();
  }
}

class _FlagSICacheStorage {
  _FlagSICacheStorage._();

  static final _FlagSICacheStorage _instance = _FlagSICacheStorage._();

  final Map<String, ScalableImageSource> _cache = {};

  /// Get the flag ScalableImageSource.
  /// If the flag is not cached, it will be loaded from the asset.
  /// If the flag is cached, it will be retrieved from the cache.
  /// The flag will be cached for future use.
  ScalableImageSource getFlagSI(String flagCode) {
    if (_cache.containsKey(flagCode)) {
      return _cache[flagCode]!;
    }
    final image = ScalableImage.fromSIAsset(
      rootBundle,
      'packages/country_flags/res/si/$flagCode.si',
    );
    final source = _CachedScalableImageSource(flagCode, image);
    _cache[flagCode] = source;
    return source;
  }
}

class _PreloadedScalableImageSource extends ScalableImageSource {
  _PreloadedScalableImageSource(this.flagCode, this.bytes);

  final String flagCode;
  final Uint8List bytes;
  @override
  Future<ScalableImage> createSI() {
    return Future.value(ScalableImage.fromSIBytes(bytes));
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is _PreloadedScalableImageSource) {
      return flagCode == other.flagCode;
    }
    return false;
  }

  @override
  int get hashCode => flagCode.hashCode;

  @override
  String toString() => 'PreloadedScalableImageSource{flagCode: $flagCode}';
}

class _CachedScalableImageSource extends ScalableImageSource {
  _CachedScalableImageSource(this.flagCode, this.image);

  final String flagCode;
  final Future<ScalableImage> image;
  @override
  Future<ScalableImage> createSI() {
    return image;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is _CachedScalableImageSource) {
      return flagCode == other.flagCode;
    }
    return false;
  }

  @override
  int get hashCode => flagCode.hashCode;

  @override
  String toString() => 'CachedScalableImageSource{flagCode: $flagCode}';
}
