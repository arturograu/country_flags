import 'package:country_flags/country_flags.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FlagCode.fromCountryCode', () {
    test('returns a String for a valid country code', () {
      expect(FlagCode.fromCountryCode('US'), isA<String>());
    });

    test('returns null for an invalid country code', () {
      expect(FlagCode.fromCountryCode('ZZ'), isNull);
    });
  });

  group('FlagCode.fromLanguageCode', () {
    test('returns a String for a valid language code', () {
      expect(FlagCode.fromLanguageCode('en'), isA<String>());
    });

    test('returns null for an invalid language code', () {
      expect(FlagCode.fromLanguageCode('zz'), isNull);
    });
  });
  group('FlagCode.fromCurrencyCode', () {
    test('returns a String for a valid currency code', () {
      expect(FlagCode.fromCurrencyCode('SYP'), isA<String>());
    });

    test('returns null for an invalid currency code', () {
      expect(FlagCode.fromCurrencyCode('zz'), isNull);
    });
  });
}
