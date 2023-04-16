import 'package:country_flags/src/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/helpers.dart';

void main() {
  group('CountryFlag', () {
    group('fromLanguageCode constructor', () {
      const validLanguageCode = 'es';
      const invalidLanguageCode = 'zz';

      test('can be instantiated', () {
        CountryFlag.fromLanguageCode(validLanguageCode);
      });

      testWidgets('renders the flag widget', (tester) async {
        await tester.pumpApp(CountryFlag.fromLanguageCode(validLanguageCode));
        expect(find.byType(ClipRRect), findsOneWidget);
        expect(find.byType(SvgPicture), findsOneWidget);
      });

      testWidgets(
          'renders a ColoredBox with a question mark if '
          'language code is invalid', (tester) async {
        await tester.pumpApp(CountryFlag.fromLanguageCode(invalidLanguageCode));
        expect(find.byType(ColoredBox), findsOneWidget);
        expect(find.byIcon(Icons.question_mark), findsOneWidget);
      });
    });

    group('fromCountryCode constructor', () {
      const validCountryCode = 'ES';
      const invalidCountryCode = 'ZZ';

      test('can be instantiated', () {
        CountryFlag.fromCountryCode(validCountryCode);
      });

      testWidgets('renders the flag widget', (tester) async {
        await tester.pumpApp(CountryFlag.fromCountryCode(validCountryCode));
        expect(find.byType(ClipRRect), findsOneWidget);
        expect(find.byType(SvgPicture), findsOneWidget);
      });

      testWidgets(
          'renders a ColoredBox with a question mark if '
          'language code is invalid', (tester) async {
        await tester.pumpApp(CountryFlag.fromCountryCode(invalidCountryCode));
        expect(find.byType(ColoredBox), findsOneWidget);
        expect(find.byIcon(Icons.question_mark), findsOneWidget);
      });
    });
  });
}
