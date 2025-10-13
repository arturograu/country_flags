# Contributing to Country Flags

Thank you for your interest in contributing to the Country Flags Flutter package! This document provides guidelines and instructions for contributing to this project.

## Table of Contents

- [Getting Started](#getting-started)
- [Development Setup](#development-setup)
- [Testing Requirements](#testing-requirements)
- [Code Style and Standards](#code-style-and-standards)
- [Submitting Changes](#submitting-changes)
- [Project Structure](#project-structure)

## Getting Started

Before contributing, please:

1. Fork the repository
2. Create a new branch for your feature or bug fix
3. Make your changes following the guidelines below
4. Test your changes thoroughly
5. Submit a pull request

## Development Setup

1. Fork and clone the repository
2. Install dependencies:
   ```bash
   flutter pub get
   cd example && flutter pub get && cd ..
   ```

## Testing Requirements

**All contributions must include appropriate tests.** This project uses both unit tests and golden tests to ensure quality and prevent regressions.

### Running Tests

Run all tests from the root directory:

```bash
flutter test
```

Run tests with coverage:

```bash
flutter test --coverage
```

Run only golden tests:

```bash
flutter test --tags golden
```

### Testing the Example App

**It is mandatory to test the example app** to ensure your changes work correctly in a real-world scenario:

1. Navigate to the example directory:

   ```bash
   cd example
   ```

2. Run the example app on your preferred platform:

   ```bash
   flutter run
   ```

3. Test all functionality:
   - Verify that country flags display correctly
   - Test language code flags
   - Test currency code flags
   - Switch between Image and Emoji themes
   - Test different flag shapes (Rectangle, Circle, Rounded Rectangle)
   - Verify error handling for invalid codes

### Unit Tests

All new functionality must include unit tests. The project uses the following testing patterns:

- **Widget Tests**: Test widget rendering and behavior
- **Unit Tests**: Test business logic and utility functions
- **Integration Tests**: Test complete user flows

Example unit test structure:

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:country_flags/country_flags.dart';

void main() {
  group('YourFeature', () {
    test('should behave correctly', () {
      // Arrange
      // Act
      // Assert
    });
  });
}
```

### Golden Tests

Golden tests ensure visual consistency. When adding new visual features or modifying existing ones:

1. **Create golden tests** for new visual components
2. **Update existing golden tests** if you modify visual elements
3. **Regenerate golden files** when intentionally changing visuals:
   ```bash
   flutter test --update-goldens
   ```

Golden test example:

```dart
testGoldens('should render correctly', (tester) async {
  final widget = CountryFlag.fromCountryCode('US');
  await tester.pumpWidgetBuilder(widget);
  await screenMatchesGolden(tester, 'flag_test');
});
```

### Test File Structure

- Place unit tests in `test/src/`
- Use the same directory structure as `lib/src/`
- Name test files with `_test.dart` suffix
- Use helper functions from `test/helpers/`

## Code Style and Standards

### Code Formatting

This project uses `very_good_analysis` for linting. Ensure your code passes all linting rules:

```bash
flutter analyze
```

### Code Style Guidelines

1. **Follow Dart conventions**: Use `dart format` to format your code
2. **Use meaningful names**: Variables, functions, and classes should have descriptive names
3. **Add documentation**: Public APIs must have documentation comments
4. **Keep functions small**: Aim for single-responsibility functions
5. **Use const constructors**: When possible, make constructors const

### Documentation

- Add dartdoc comments for all public APIs
- Include usage examples in documentation
- Update README.md if adding new features

Example documentation:

````dart
/// Creates a country flag widget from a country code.
///
/// The [countryCode] should be a valid ISO 3166-1 alpha-2 or alpha-3 code.
///
/// Example:
/// ```dart
/// CountryFlag.fromCountryCode('US')
/// ```
CountryFlag.fromCountryCode(String countryCode);
````

### Pull Request Requirements

Your pull request must include:

- [ ] **Clear description** of changes made
- [ ] **Unit tests** for new functionality
- [ ] **Golden tests** for visual changes
- [ ] **Updated documentation** if applicable
- [ ] **Example app testing** confirmation
- [ ] **No linting errors**
- [ ] **All tests passing**

## Project Structure

Understanding the project structure will help you contribute effectively:

```
country_flags/
├── lib/
│   ├── country_flags.dart          # Main export file
│   └── src/
│       ├── country_flags.dart      # Main widget implementation
│       ├── flag_code.dart          # Code conversion utilities
│       ├── flag_emoji.dart         # Emoji flag implementation
│       └── flag_image.dart         # SVG flag implementation
├── example/                        # Example Flutter app
│   ├── lib/main.dart              # Example app implementation
│   └── pubspec.yaml               # Example app dependencies
├── test/
│   ├── src/                       # Unit and widget tests
│   │   ├── country_flags_test.dart
│   │   ├── flag_code_test.dart
│   │   └── goldens/               # Golden test reference images
│   ├── helpers/                   # Test helper functions
│   └── constants.dart             # Test constants
├── res/
│   ├── si/                        # Binary SVG flag files
│   └── svg/                       # Source SVG files
└── pubspec.yaml                   # Package dependencies
```

### Key Components

- **CountryFlag**: Main widget for displaying flags
- **FlagCode**: Utility class for code conversions
- **ImageTheme/EmojiTheme**: Theming system for flag display
- **Shape classes**: Circle, Rectangle, RoundedRectangle for flag shapes

## Questions or Issues?

If you have questions or encounter issues:

1. Check existing [issues](https://github.com/arturograu/country_flags/issues)
2. Create a new issue with detailed information
3. Join discussions in existing issues

Thank you for contributing to Country Flags! 🎌
