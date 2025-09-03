import 'package:country_flags/country_flags.dart';
import 'package:country_flags/src/flag_emoji.dart';
import 'package:country_flags/src/flag_image.dart';
import 'package:flutter/material.dart';

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

/// The theme of the flag.
sealed class FlagTheme {
  const FlagTheme();
}

/// Image theme.
class ImageTheme extends FlagTheme {
  /// Create an instance of [ImageTheme].
  const ImageTheme({this.width, this.height});

  /// The width of the image flag.
  final double? width;

  /// The height of the image flag.
  final double? height;
}

/// Emoji theme.
class EmojiTheme extends FlagTheme {
  /// Create an instance of [EmojiTheme].
  const EmojiTheme({this.size});

  /// The size of the emoji flag.
  final double? size;
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
    FlagTheme? theme,
  }) : this._(
          key: key,
          flagCode: FlagCode.fromLanguageCode(languageCode.toLowerCase()),
          shape: shape,
          theme: theme ?? const ImageTheme(),
        );

  /// Create an instance of [CountryFlag] based on a country code.
  ///
  /// {@macro country_flags}
  CountryFlag.fromCountryCode(
    String countryCode, {
    Shape shape = const Rectangle(),
    FlagTheme? theme,
    Key? key,
  }) : this._(
          key: key,
          flagCode: FlagCode.fromCountryCode(countryCode.toUpperCase()),
          shape: shape,
          theme: theme ?? const ImageTheme(),
        );

  /// Create an instance of [CountryFlag] based on a currency code.
  ///
  /// {@macro country_flags}
  CountryFlag.fromCurrencyCode(
    String currencyCode, {
    Shape shape = const Circle(),
    FlagTheme? theme,
    Key? key,
  }) : this._(
          key: key,
          flagCode: FlagCode.fromCurrencyCode(currencyCode.toUpperCase()),
          shape: shape,
          theme: theme ?? const ImageTheme(),
        );

  /// {@macro country_flags}
  const CountryFlag._({
    required this.shape,
    required this.theme,
    super.key,
    this.flagCode,
  });

  /// The country ISO code of the flag to display.
  ///
  /// The list of country codes can be found here: https://www.iban.com/country-codes.
  final String? flagCode;

  /// The flag shape: 'circle' or 'rectangle'.
  final Shape shape;

  /// The flag theme: 'image' or 'emoji'.
  final FlagTheme theme;

  @override
  Widget build(BuildContext context) {
    return switch (theme) {
      ImageTheme(:final width, :final height) => _buildImageFlag(
          width: width,
          height: height,
        ),
      EmojiTheme(:final size) => _buildEmojiFlag(size),
    };
  }

  Widget _buildImageFlag({double? width, double? height}) => switch (shape) {
        Rectangle() => FlagImage.rectangular(
            flagCode: flagCode,
            width: width,
            height: height,
          ),
        Circle() => FlagImage.circular(
            flagCode: flagCode,
            width: width,
            height: height,
          ),
        RoundedRectangle(:final borderRadius) => FlagImage.roundedRectangular(
            borderRadius: borderRadius,
            width: width,
            height: height,
            flagCode: flagCode,
          ),
      };

  Widget _buildEmojiFlag(double? size) =>
      FlagEmoji(flagCode: flagCode ?? '', size: size);
}
