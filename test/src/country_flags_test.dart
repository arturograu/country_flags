import 'dart:io';

import 'package:country_flags/src/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../constants.dart';
import '../helpers/helpers.dart';

void main() {
  group('CountryFlag', () {
    const svgFlagKey = Key('svgFlag');
    const emojiFlagKey = Key('countryFlags_emoji');
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
            theme: const ImageTheme(shape: Circle()),
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
            theme: const ImageTheme(shape: RoundedRectangle(10)),
          ),
        );
        expect(find.byKey(roundedRectangularFlagSizedBoxKey), findsOneWidget);
        expect(find.byKey(svgFlagKey), findsOneWidget);
      });

      testWidgets('renders the flag widget with the emoji theme',
          (tester) async {
        await tester.pumpApp(
          CountryFlag.fromLanguageCode(
            validLanguageCode,
            theme: const EmojiTheme(size: 60),
          ),
        );
        expect(find.byKey(emojiFlagKey), findsOneWidget);
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
            theme: const ImageTheme(shape: Circle()),
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
            theme: const ImageTheme(shape: RoundedRectangle(10)),
          ),
        );
        expect(find.byKey(roundedRectangularFlagSizedBoxKey), findsOneWidget);
        expect(find.byKey(svgFlagKey), findsOneWidget);
      });

      testWidgets('renders the flag widget with the emoji theme',
          (tester) async {
        await tester.pumpApp(
          CountryFlag.fromCountryCode(
            validCountryCode,
            theme: const EmojiTheme(size: 60),
          ),
        );
        expect(find.byKey(emojiFlagKey), findsOneWidget);
      });

      testWidgets(
          'renders a ColoredBox with a question mark if '
          'country code is invalid', (tester) async {
        await tester.pumpApp(CountryFlag.fromCountryCode(invalidCountryCode));
        expect(find.byType(ColoredBox), findsOneWidget);
        expect(find.byIcon(Icons.question_mark), findsOneWidget);
      });
    });

    group('fromCurrencyCode constructor', () {
      const validCurrencyCode = 'SYP';
      const invalidCurrencyCode = 'ZZ';

      test('can be instantiated', () {
        CountryFlag.fromCurrencyCode(validCurrencyCode);
      });

      testWidgets('renders the flag widget', (tester) async {
        await tester.pumpApp(CountryFlag.fromCurrencyCode(validCurrencyCode));
        expect(find.byKey(svgFlagKey), findsOneWidget);
      });

      testWidgets('renders the flag widget with a circle shape',
          (tester) async {
        await tester.pumpApp(
          CountryFlag.fromCurrencyCode(
            validCurrencyCode,
            theme: const ImageTheme(shape: Circle()),
          ),
        );
        expect(find.byKey(circularFlagSizedBoxKey), findsOneWidget);
        expect(find.byType(ClipOval), findsOneWidget);
        expect(find.byKey(svgFlagKey), findsOneWidget);
      });

      testWidgets('renders the flag widget with a rounded rectangular shape',
          (tester) async {
        await tester.pumpApp(
          CountryFlag.fromCurrencyCode(
            validCurrencyCode,
            theme: const ImageTheme(shape: RoundedRectangle(10)),
          ),
        );
        expect(find.byKey(roundedRectangularFlagSizedBoxKey), findsOneWidget);
        expect(find.byKey(svgFlagKey), findsOneWidget);
      });

      testWidgets('renders the flag widget with the emoji theme',
          (tester) async {
        await tester.pumpApp(
          CountryFlag.fromCurrencyCode(
            validCurrencyCode,
            theme: const EmojiTheme(size: 60),
          ),
        );
        expect(find.byKey(emojiFlagKey), findsOneWidget);
      });

      testWidgets(
          'renders a ColoredBox with a question mark if '
          'currency code is invalid', (tester) async {
        await tester.pumpApp(CountryFlag.fromCurrencyCode(invalidCurrencyCode));
        expect(find.byType(ColoredBox), findsOneWidget);
        expect(find.byIcon(Icons.question_mark), findsOneWidget);
      });
    });

    group(
      'GoldenBuilder',
      () {
        const validCountryCode = 'ES';
        const invalidCountryCode = 'ZZ';

        setUpAll(() async {
          TestWidgetsFlutterBinding.ensureInitialized();
          await loadAppFonts();
          final bytes =
              await File('test/fonts/NotoColorEmoji.ttf').readAsBytes();
          final data = ByteData.view(bytes.buffer);
          final loader = FontLoader('NotoColorEmoji')
            ..addFont(Future.value(data));
          await loader.load();
        });

        group('different flag shapes', () {
          testGoldens(
            'with default values should look correct',
            (tester) async {
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
                    theme: const ImageTheme(shape: Circle()),
                  ),
                )
                ..addScenario(
                  'Rounded Rectangle',
                  CountryFlag.fromCountryCode(
                    validCountryCode,
                    theme: const ImageTheme(shape: RoundedRectangle(6)),
                  ),
                );
              await tester.pumpWidgetBuilder(builder.build());
              await screenMatchesGolden(tester, 'country_flag_types_column');
            },
            skip: true,
          );

          testGoldens(
            'with invalid country code should look correct',
            (tester) async {
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
                    theme: const ImageTheme(shape: Circle()),
                  ),
                )
                ..addScenario(
                  'Rounded Rectangle',
                  CountryFlag.fromCountryCode(
                    invalidCountryCode,
                    theme: const ImageTheme(shape: RoundedRectangle(6)),
                  ),
                );
              await tester.pumpWidgetBuilder(builder.build());
              await screenMatchesGolden(
                tester,
                'invalid_country_flag_types_column',
              );
            },
          );
        });

        group('renders the flag from all the countries', () {
          testGoldens(
            'in image format',
            (tester) async {
              final builder = GoldenBuilder.grid(
                columns: 6,
                widthToHeightRatio: 1,
              );
              for (final countryCode in countriesList) {
                builder.addScenario(
                  countryCode,
                  CountryFlag.fromCountryCode(countryCode),
                );
              }
              await tester.pumpWidgetBuilder(
                builder.build(),
                surfaceSize: const Size(1200, 8000),
              );
              await screenMatchesGolden(tester, 'all_country_flags_images');
            },
          );

          testGoldens(
            'in emoji format',
            (tester) async {
              final builder = GoldenBuilder.grid(
                columns: 6,
                widthToHeightRatio: 1,
              );
              for (final countryCode in countriesList) {
                builder.addScenario(
                  countryCode,
                  CountryFlag.fromCountryCode(
                    countryCode,
                    theme: const EmojiTheme(),
                  ),
                );
              }
              await tester.pumpWidgetBuilder(
                builder.build(),
                surfaceSize: const Size(1200, 8000),
              );
              await screenMatchesGolden(tester, 'all_country_flags_emoji');
            },
          );
        });

        group(
            'renders the flag from all the countries from a three letter'
            ' country code', () {
          testGoldens(
            'in image format',
            (tester) async {
              final builder = GoldenBuilder.grid(
                columns: 6,
                widthToHeightRatio: 1,
              );
              for (final countryCode in threeLetterCountriesList) {
                builder.addScenario(
                  countryCode,
                  CountryFlag.fromCountryCode(countryCode),
                );
              }
              await tester.pumpWidgetBuilder(
                builder.build(),
                surfaceSize: const Size(1200, 8000),
              );
              await screenMatchesGolden(
                tester,
                'all_three_code_country_flags_images',
              );
            },
          );

          testGoldens(
            'in emoji format',
            (tester) async {
              final builder = GoldenBuilder.grid(
                columns: 6,
                widthToHeightRatio: 1,
              );
              for (final countryCode in threeLetterCountriesList) {
                builder.addScenario(
                  countryCode,
                  CountryFlag.fromCountryCode(
                    countryCode,
                    theme: const EmojiTheme(),
                  ),
                );
              }
              await tester.pumpWidgetBuilder(
                builder.build(),
                surfaceSize: const Size(1200, 8000),
              );
              await screenMatchesGolden(
                tester,
                'all_three_code_country_flags_emoji',
              );
            },
          );
        });

        group(
          'renders the flags from all the languages',
          () {
            testGoldens(
              'in image format',
              (tester) async {
                final builder = GoldenBuilder.grid(
                  columns: 6,
                  widthToHeightRatio: 1,
                );
                for (final languageCode in languageCodes) {
                  builder.addScenario(
                    languageCode,
                    CountryFlag.fromCountryCode(languageCode),
                  );
                }
                await tester.pumpWidgetBuilder(
                  builder.build(),
                  surfaceSize: const Size(1200, 8000),
                );
                await screenMatchesGolden(
                  tester,
                  'all_language_codes_flags_images',
                );
              },
            );

            testGoldens(
              'in emoji format',
              (tester) async {
                final builder = GoldenBuilder.grid(
                  columns: 6,
                  widthToHeightRatio: 1,
                );
                for (final languageCode in languageCodes) {
                  builder.addScenario(
                    languageCode,
                    CountryFlag.fromCountryCode(
                      languageCode,
                      theme: const EmojiTheme(),
                    ),
                  );
                }
                await tester.pumpWidgetBuilder(
                  builder.build(),
                  surfaceSize: const Size(1200, 8000),
                );
                await screenMatchesGolden(
                  tester,
                  'all_language_codes_flags_emoji',
                );
              },
            );
          },
          // TODO(arturograu): We need to fix the functionality first since some
          // flags are not rendering.
          skip: true,
        );

        group(
          'renders the flags from all the currency codes',
          () {
            testGoldens(
              'in image format',
              (tester) async {
                final builder = GoldenBuilder.grid(
                  columns: 6,
                  widthToHeightRatio: 1,
                );
                for (final currencyCode in currencyCodes) {
                  builder.addScenario(
                    currencyCode,
                    CountryFlag.fromCurrencyCode(currencyCode),
                  );
                }
                await tester.pumpWidgetBuilder(
                  builder.build(),
                  surfaceSize: const Size(1200, 8000),
                );
                await screenMatchesGolden(
                  tester,
                  'all_currency_codes_flags_images',
                );
              },
            );

            testGoldens(
              'in emoji format',
              (tester) async {
                final builder = GoldenBuilder.grid(
                  columns: 6,
                  widthToHeightRatio: 1,
                );
                for (final currencyCode in currencyCodes) {
                  builder.addScenario(
                    currencyCode,
                    CountryFlag.fromCurrencyCode(
                      currencyCode,
                      theme: const EmojiTheme(),
                    ),
                  );
                }
                await tester.pumpWidgetBuilder(
                  builder.build(),
                  surfaceSize: const Size(1200, 8000),
                );
                await screenMatchesGolden(
                  tester,
                  'all_currency_codes_flags_emoji',
                );
              },
            );
          },
          // TODO(arturograu): We need to fix the functionality first since some
          // flags are not rendering.
          skip: true,
        );
      },
    );
  });
}
