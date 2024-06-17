import 'package:country_flags/src/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../helpers/helpers.dart';

void main() {
  group('CountryFlag', () {
    const svgFlagKey = Key('svgFlag');
    const circularFlagSizedBoxKey = Key('countryFlags_CircularFlag_SizedBox');
    const roundedRectangularFlagSizedBoxKey =
        Key('countryFlags_RoundedRectangularFlag_SizedBox');

    group('fromLanguageCode constructor', () {
      const validLanguageCode = 'es';
      const invalidLanguageCode = 'zz';

      test('can be instantiated', () {
        CountryFlag.fromLanguageCode(validLanguageCode);
      });

      testWidgets('renders the flag widget', (tester) async {
        await tester.pumpApp(CountryFlag.fromLanguageCode(validLanguageCode));
        expect(find.byKey(svgFlagKey), findsOneWidget);
      });

      testWidgets('renders the flag widget with a circle shape',
          (tester) async {
        await tester.pumpApp(
          CountryFlag.fromLanguageCode(
            validLanguageCode,
            shape: const Circle(),
          ),
        );
        expect(find.byKey(circularFlagSizedBoxKey), findsOneWidget);
        expect(find.byType(ClipOval), findsOneWidget);
        expect(find.byKey(svgFlagKey), findsOneWidget);
      });

      testWidgets('renders the flag widget with a rounded rectangular shape',
          (tester) async {
        await tester.pumpApp(
          CountryFlag.fromLanguageCode(
            validLanguageCode,
            shape: const RoundedRectangle(10),
          ),
        );
        expect(find.byKey(roundedRectangularFlagSizedBoxKey), findsOneWidget);
        expect(find.byKey(svgFlagKey), findsOneWidget);
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
        expect(find.byKey(svgFlagKey), findsOneWidget);
      });

      testWidgets('renders the flag widget with a circle shape',
          (tester) async {
        await tester.pumpApp(
          CountryFlag.fromCountryCode(
            validCountryCode,
            shape: const Circle(),
          ),
        );
        expect(find.byKey(circularFlagSizedBoxKey), findsOneWidget);
        expect(find.byType(ClipOval), findsOneWidget);
        expect(find.byKey(svgFlagKey), findsOneWidget);
      });

      testWidgets('renders the flag widget with a rounded rectangular shape',
          (tester) async {
        await tester.pumpApp(
          CountryFlag.fromCountryCode(
            validCountryCode,
            shape: const RoundedRectangle(10),
          ),
        );
        expect(find.byKey(roundedRectangularFlagSizedBoxKey), findsOneWidget);
        expect(find.byKey(svgFlagKey), findsOneWidget);
      });

      testWidgets(
          'renders a ColoredBox with a question mark if '
          'language code is invalid', (tester) async {
        await tester.pumpApp(CountryFlag.fromCountryCode(invalidCountryCode));
        expect(find.byType(ColoredBox), findsOneWidget);
        expect(find.byIcon(Icons.question_mark), findsOneWidget);
      });
    });

    group('GoldenBuilder', () {
      const validCountryCode = 'ES';
      const invalidCountryCode = 'ZZ';

      testGoldens(
        'different flag shapes '
        'with default values should look correct',
        (tester) async {
          await loadAppFonts();
          final builder = GoldenBuilder.column()
            ..addScenario(
              'Rectangle',
              CountryFlag.fromCountryCode(
                validCountryCode,
              ),
            )
            ..addScenario(
              'Circle',
              CountryFlag.fromCountryCode(
                validCountryCode,
                shape: const Circle(),
              ),
            )
            ..addScenario(
              'Rounded Rectangle',
              CountryFlag.fromCountryCode(
                validCountryCode,
                shape: const RoundedRectangle(6),
              ),
            );
          await tester.pumpWidgetBuilder(builder.build());
          await screenMatchesGolden(tester, 'country_flag_types_column');
        },
        skip: true,
      );

      testGoldens(
        'different flag shapes '
        'with invalid country code should look correct',
        (tester) async {
          await loadAppFonts();
          final builder = GoldenBuilder.column()
            ..addScenario(
              'Rectangle',
              CountryFlag.fromCountryCode(
                invalidCountryCode,
              ),
            )
            ..addScenario(
              'Circle',
              CountryFlag.fromCountryCode(
                invalidCountryCode,
                shape: const Circle(),
              ),
            )
            ..addScenario(
              'Rounded Rectangle',
              CountryFlag.fromCountryCode(
                invalidCountryCode,
                shape: const RoundedRectangle(6),
              ),
            );
          await tester.pumpWidgetBuilder(builder.build());
          await screenMatchesGolden(
            tester,
            'invalid_country_flag_types_column',
          );
        },
        skip: true,
      );
    });
  });
}
