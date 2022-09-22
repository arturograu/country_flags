import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// Country flag widget
class CountryFlags extends StatelessWidget {
  /// Creates a flag widget.
  CountryFlags.flag(
    String countryCode, {
    super.key,
    this.height,
    this.width,
    this.borderRadius,
  }) : countryCode = countryCode.toLowerCase();

  /// The country ISO code of the flag to display.
  ///
  /// The list of country codes can be found here: https://www.iban.com/country-codes.
  final String countryCode;

  /// The height of the flag.
  final double? height;

  /// The width of the flag
  final double? width;

  /// The border radius of the corners of the flag.
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      child: SizedBox(
        width: width,
        height: height,
        child: flagsCountryCodes.contains(countryCode)
            ? SvgPicture.asset(
                'packages/country_flags/res/$countryCode.svg',
                semanticsLabel: countryCode,
              )
            : const ColoredBox(
                color: Colors.white,
                child: Center(
                  child: Icon(Icons.question_mark),
                ),
              ),
      ),
    );
  }
}
