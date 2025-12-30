import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jovial_svg/jovial_svg.dart';

/// A widget that displays a country flag as an image.
abstract class FlagImage extends StatelessWidget {
  /// Default constructor for [FlagImage].
  const FlagImage({super.key});

  /// Renders a rectangular flag image.
  factory FlagImage.rectangular({
    String? flagCode,
    double? width,
    double? height,
  }) {
    if (flagCode == null) return const _NotFoundFlag();

    return _RectangularFlag(
      flagCode: flagCode,
      width: width,
      height: height,
    );
  }

  /// Renders a rounded rectangular flag image.
  factory FlagImage.roundedRectangular({
    required double borderRadius,
    String? flagCode,
    double? width,
    double? height,
  }) {
    if (flagCode == null) return const _NotFoundFlag();

    return _RoundedRectangularFlag(
      borderRadius: borderRadius,
      flagCode: flagCode,
      width: width,
      height: height,
    );
  }

  /// Renders a circular flag image.
  factory FlagImage.circular({
    String? flagCode,
    double? width,
    double? height,
  }) {
    if (flagCode == null) return const _NotFoundFlag();

    return _CircularFlag(
      flagCode: flagCode,
      width: width,
      height: height,
    );
  }
}

class _RectangularFlag extends FlagImage {
  const _RectangularFlag({
    required this.flagCode,
    double? width,
    double? height,
  })  : _width = width ?? 60,
        _height = height ?? 40;

  final String flagCode;
  final double _width;
  final double _height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _width,
      height: _height,
      child: _ImageWidget(
        flagCode,
      ),
    );
  }
}

class _RoundedRectangularFlag extends FlagImage {
  const _RoundedRectangularFlag({
    required this.borderRadius,
    required this.flagCode,
    double? width,
    double? height,
  })  : _width = width ?? 60,
        _height = height ?? 40;

  final String flagCode;
  final double _width;
  final double _height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: SizedBox(
        key: const Key('countryFlags_RoundedRectangularFlag_SizedBox'),
        width: _width,
        height: _height,
        child: _ImageWidget(flagCode),
      ),
    );
  }
}

class _CircularFlag extends FlagImage {
  const _CircularFlag({
    required this.flagCode,
    double? width,
    double? height,
  })  : _width = width ?? 40,
        _height = height ?? 40;

  final String flagCode;
  final double _width;
  final double _height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: const Key('countryFlags_CircularFlag_SizedBox'),
      width: _width,
      height: _height,
      child: ClipOval(child: _ImageWidget(flagCode)),
    );
  }
}

class _NotFoundFlag extends FlagImage {
  const _NotFoundFlag();

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      key: Key('countryFlags_NotFound_ColoredBox'),
      color: Colors.white,
      child: Center(
        child: Icon(
          Icons.question_mark,
          key: Key('countryFlags_NotFound_Icon'),
        ),
      ),
    );
  }
}

class _ImageWidget extends StatelessWidget {
  const _ImageWidget(
    this.flagCode,
  );

  final String flagCode;

  @override
  Widget build(BuildContext context) {
    return ScalableImageWidget.fromSISource(
      key: const Key('svgFlag'),
      si: ScalableImageSource.fromSI(
        rootBundle,
        'packages/country_flags/res/si/$flagCode.si',
      ),
      fit: BoxFit.cover,
    );
  }
}
