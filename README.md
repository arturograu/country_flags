# Country Flags

[![Pub](https://img.shields.io/pub/v/country_flags.svg)](https://pub.dev/packages/country_flags)
![GitHub Workflow Status (with branch)](https://img.shields.io/github/actions/workflow/status/arturograu/country_flags/main.yaml?branch=main)
[![Pull Requests are welcome](https://img.shields.io/badge/license-MIT-blue)](https://github.com/arturograu/country_flags/blob/master/LICENSE)
[![codecov](https://codecov.io/gh/arturograu/country_flags/branch/main/graph/badge.svg?token=NVFK3CAP1S)](https://codecov.io/gh/arturograu/country_flags)
![Null safety](https://img.shields.io/badge/null%20safety-true-brightgreen)

A Flutter package for displaying the SVG image of a country's flag.

The flag can be generated using either a country code or a language code.

View the complete list of supported countries [here](https://www.iban.com/country-codes).

For a list of supported languages, visit www.lingoes.net/en/translator/langcode.htm (please note that not all language codes on the list are supported).

![Showcase](https://i.imgur.com/quh79th.gif)

## Installation

Simply add `country_flags` to your [pubspec.yaml](https://flutter.io/using-packages/) file.

```yml
dependencies:
  country_flags: ^2.2.0
```

## Usage

### Create a flag using a country code.

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: CountryFlag.fromCountryCode(
            'ES',
            height: 48,
            width: 62,
            borderRadius: 8,
          ),
        ),
      ),
    );
  }
}
```

### Create a flag from a language code

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: CountryFlag.fromLanguageCode('en'),
        ),
      ),
    );
  }
}
```

## Credits

Special thanks to [jovial_svg](https://github.com/zathras/jovial_svg) which is utilized to render the SVG images from binary files.
Many thanks to [bgoncharuck](https://github.com/bgoncharuck) for the implementation.

Acknowledgments to the [flag-icons](https://github.com/lipis/flag-icons) project for providing the necessary SVG flags.

## Alternatives

- [Flag](https://github.com/LunaGao/flag_flutter)
