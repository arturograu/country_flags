# Country Flags
[![Pub](https://img.shields.io/pub/v/country_flags.svg)](https://pub.dev/packages/country_flags)
[![Pull Requests are welcome](https://img.shields.io/badge/license-MIT-blue)](https://github.com/arturograu/country_flags/blob/master/LICENSE)
![Null safety](https://img.shields.io/badge/null%20safety-true-brightgreen)

A Flutter package to show a SVG image of the flag of a country.

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

![Showcase](https://i.imgur.com/eWDNlgA.gif)

## Installation

Just add `country_flags` to your [pubspec.yml](https://flutter.io/using-packages/) file

```yml
dependencies:
  country_flags: ^1.1.0
```

## Example

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: CountryFlags.flag(
            'es',
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

## Credits

Thanks to the amazing project [flutter-svg](https://github.com/dnfield/flutter_svg)

Thanks to the project [flag-icons](https://github.com/lipis/flag-icons) for providing with the required SVG flags.


## Alternatives

- [Flag](https://github.com/LunaGao/flag_flutter)
