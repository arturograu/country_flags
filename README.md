# Country Flags

[![Pub](https://img.shields.io/pub/v/country_flags.svg)](https://pub.dev/packages/country_flags)
![GitHub Workflow Status (with branch)](https://img.shields.io/github/actions/workflow/status/arturograu/country_flags/main.yaml?branch=main)
[![Pull Requests are welcome](https://img.shields.io/badge/license-MIT-blue)](https://github.com/arturograu/country_flags/blob/master/LICENSE)
[![codecov](https://codecov.io/gh/arturograu/country_flags/branch/main/graph/badge.svg?token=NVFK3CAP1S)](https://codecov.io/gh/arturograu/country_flags)
![Null safety](https://img.shields.io/badge/null%20safety-true-brightgreen)

A Flutter package to show an SVG image of the flag of a country.

The flag can be created from a country code or a language code.

You can find all the supported countries listed [here](https://www.iban.com/country-codes).

You can find the list of supported languages at www.lingoes.net/en/translator/langcode.htm (not all the language codes in the list are supported).

![Showcase](https://i.imgur.com/quh79th.gif)

## Installation

Just add `country_flags` to your [pubspec.yml](https://flutter.io/using-packages/) file

```yml
dependencies:
  country_flags: ^2.2.0
```

## Usage

### Create a flag from a country code

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

Thanks to [jovial_svg](https://github.com/zathras/jovial_svg) which is used to render the SVG images from binary files.
And many thanks to [bgoncharuck](https://github.com/bgoncharuck) for doing the implementation.

Thanks to the project [flag-icons](https://github.com/lipis/flag-icons) for providing the required SVG flags.

## Alternatives

- [Flag](https://github.com/LunaGao/flag_flutter)
