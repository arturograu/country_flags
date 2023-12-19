import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jovial_svg/jovial_svg.dart';

/// {@template country_flags}
/// A widget that displays a country flag.
/// {@endtemplate}
class CountryFlag extends StatelessWidget {
  /// Create an instance of [CountryFlag] based on a language.
  ///
  /// {@macro country_flags}
  CountryFlag.fromLanguageCode(
    String languageCode, {
    required Shape shape,
    Key? key,
    double? height,
    double? width,
    double? borderRadius,
  }) : this._(
          key: key,
          flagCode: FlagCode.fromLanguageCode(languageCode.toLowerCase()),
          height: height,
          width: width,
          borderRadius: borderRadius,
          shape: shape,
        );

  /// Create an instance of [CountryFlag] based on a country code.
  ///
  /// {@macro country_flags}
  CountryFlag.fromCountryCode(
    String countryCode, {
    required Shape shape, 
    Key? key,
    double? height,
    double? width,
    double? borderRadius,
  }) : this._(
          key: key,
          flagCode: FlagCode.fromCountryCode(countryCode.toUpperCase()),
          height: height,
          width: width,
          borderRadius: borderRadius,
          shape: shape,
        );

  /// {@macro country_flags}
  const CountryFlag._({
    required this.shape, 
    super.key,
    this.flagCode,
    this.height,
    this.width,
    this.borderRadius,
  });

  /// The country ISO code of the flag to display.
  ///
  /// The list of country codes can be found here: https://www.iban.com/country-codes.
  final String? flagCode;

  /// The height of the flag.
  final double? height;

  /// The width of the flag.
  final double? width;

  /// The border radius of the corners of the flag.
  final double? borderRadius;

  /// The flag shape: 'circle' or 'rectangle'.
  final Shape shape;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      child: SizedBox(
        width: width,
        height: height,
        child: switch (flagCode) {
          String() => Semantics(
              label: flagCode,
              child: _buildFlagWidget(),
            ),
          null => const ColoredBox(
              color: Colors.white,
              child: Center(
                child: Icon(Icons.question_mark),
              ),
            ),
        },
      ),
    );
  }

  /// Build the flag widget according to the specified shape.
  Widget _buildFlagWidget() {
    switch (shape) {
      case Shape.circle:
        return _buildCircularFlag();
      case Shape.rectangle:
        return _buildRectangularFlag();
    }
  }

  /// Build the circular flag widget.
  Widget _buildCircularFlag() {
    return ClipOval(
      child: ScalableImageWidget.fromSISource(
        key: const Key('svgFlag'),
        si: ScalableImageSource.fromSI(
          rootBundle,
          'packages/country_flags/res/si/$flagCode.si',
        ),
        fit: BoxFit.cover,
      ),
    );
  }

  /// Build the rectangular flag widget.
  Widget _buildRectangularFlag() {
    return ScalableImageWidget.fromSISource(
        key: const Key('svgFlag'),
        si: ScalableImageSource.fromSI(
          rootBundle,
          'packages/country_flags/res/si/$flagCode.si',
        ),
    );
  }  
}

/// Enum representing the shape of a widget.
enum Shape {
  /// Circular shape.
  circle,
  /// Rectangular shape.
  rectangle,
}
