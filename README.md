# Country Flags
[![Pub](https://img.shields.io/pub/v/country_flags.svg)](https://pub.dev/packages/country_flags)
![GitHub Workflow Status (with branch)](https://img.shields.io/github/actions/workflow/status/arturograu/country_flags/main.yaml?branch=main)
[![Pull Requests are welcome](https://img.shields.io/badge/license-MIT-blue)](https://github.com/arturograu/country_flags/blob/master/LICENSE)
[![codecov](https://codecov.io/gh/arturograu/country_flags/branch/main/graph/badge.svg?token=NVFK3CAP1S)](https://codecov.io/gh/arturograu/country_flags)
![Null safety](https://img.shields.io/badge/null%20safety-true-brightgreen)

A Flutter package to show a SVG image of the flag of a country.

The flag can be created from a country code or a language code.

This package includes the SVG flags from the project [flag-icons](https://github.com/lipis/flag-icons) and fixes
the rendering problems of the flags from this list:
- ar
- aw
- ky
- gd
- ht
- je
- kr
- pe
- rs
- lk
- tc
- fk

You can find all the supported countries list [here](https://www.iban.com/country-codes).

You can find all the supported languages list [here](http://www.lingoes.net/en/translator/langcode.htm) (not all the langauge codes in the list are supported).

![Showcase](https://i.imgur.com/quh79th.gif)

## Installation

Just add `country_flags` to your [pubspec.yml](https://flutter.io/using-packages/) file

```yml
dependencies:
  country_flags: ^1.1.0
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

Thanks to the amazing project [flutter-svg](https://github.com/dnfield/flutter_svg)

Thanks to the project [flag-icons](https://github.com/lipis/flag-icons) for providing with the required SVG flags.


## Alternatives

- [Flag](https://github.com/LunaGao/flag_flutter)
