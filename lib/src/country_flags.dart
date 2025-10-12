import 'package:country_flags/country_flags.dart';
import 'package:country_flags/src/flag_emoji.dart';
import 'package:country_flags/src/flag_image.dart';
import 'package:flutter/material.dart';

/// {@template shape}
/// The shape of the flag.
/// {@endtemplate}
sealed class Shape {
  const Shape();
}

/// {@template rectangle}
/// Rectangular shape.
/// {@endtemplate}
class Rectangle extends Shape {
  /// {@macro rectangle}
  const Rectangle();
}

/// {@template circle}
/// Circular shape.
/// {@endtemplate}
class Circle extends Shape {
  /// {@macro circle}
  const Circle();
}

/// {@template rounded_rectangle}
/// Rectangular shape with rounded corners.
/// {@endtemplate}
class RoundedRectangle extends Shape {
  /// {@macro rounded_rectangle}
  const RoundedRectangle(this.borderRadius);

  /// The border radius of the corners of the rectangle.
  final double borderRadius;
}

/// The theme of the flag.
sealed class FlagTheme {
  const FlagTheme();
}

/// {@template image_theme}
/// Image theme.
/// {@endtemplate}
class ImageTheme extends FlagTheme {
  /// {@macro image_theme}
  const ImageTheme({
    this.width,
    this.height,
    this.shape = const Rectangle(),
  });

  /// The width of the image flag.
  final double? width;

  /// The height of the image flag.
  final double? height;

  /// The shape of the image flag.
  final Shape shape;
}

/// {@template emoji_theme}
/// Emoji theme.
/// {@endtemplate}
class EmojiTheme extends FlagTheme {
  /// {@macro emoji_theme}
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
    Key? key,
    FlagTheme theme = const ImageTheme(),
  }) : this._(
          key: key,
          flagCode: FlagCode.fromLanguageCode(languageCode.toLowerCase()),
          theme: theme,
        );

  /// Create an instance of [CountryFlag] based on a country code.
  ///
  /// {@macro country_flags}
  CountryFlag.fromCountryCode(
    String countryCode, {
    FlagTheme theme = const ImageTheme(),
    Key? key,
  }) : this._(
          key: key,
          flagCode: FlagCode.fromCountryCode(countryCode.toUpperCase()),
          theme: theme,
        );

  /// Create an instance of [CountryFlag] based on a currency code.
  ///
  /// {@macro country_flags}
  CountryFlag.fromCurrencyCode(
    String currencyCode, {
    FlagTheme theme = const ImageTheme(),
    Key? key,
  }) : this._(
          key: key,
          flagCode: FlagCode.fromCurrencyCode(currencyCode.toUpperCase()),
          theme: theme,
        );

  /// Create an instance of [CountryFlag] based on a ddi code.
  ///
  /// {@macro country_flags}
  CountryFlag.fromPhonePrefix(
    String prefix, {
    FlagTheme theme = const ImageTheme(),
    Key? key,
  }) : this._(
          key: key,
          flagCode: FlagCode.fromPhonePrefix(prefix),
          theme: theme,
        );

  /// {@macro country_flags}
  const CountryFlag._({
    required this.theme,
    super.key,
    this.flagCode,
  });

  /// The country ISO code of the flag to display.
  ///
  /// The list of country codes can be found here: https://www.iban.com/country-codes.
  final String? flagCode;

  /// The flag theme: 'image' or 'emoji'.
  final FlagTheme theme;

  @override
  Widget build(BuildContext context) {
    return switch (theme) {
      ImageTheme(:final width, :final height, :final shape) => _buildImageFlag(
          width: width,
          height: height,
          shape: shape,
        ),
      EmojiTheme(:final size) => _buildEmojiFlag(size),
    };
  }

  Widget _buildImageFlag({
    required Shape shape,
    double? width,
    double? height,
  }) =>
      switch (shape) {
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
