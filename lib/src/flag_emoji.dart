import 'dart:io';

import 'package:country_flags/src/flag_code.dart';
import 'package:flutter/material.dart';

/// {@template flag_emoji}
/// A widget that displays a country flag as an emoji.
/// {@endtemplate}
class FlagEmoji extends StatelessWidget {
  /// {@macro flag_emoji}
  const FlagEmoji({required this.flagCode, double? size = 32, super.key})
      : _size = size ?? 32;

  /// The country ISO code of the flag to display.
  final String flagCode;

  /// The size of the flag emoji.
  final double _size;

  String? _normalizeToAlpha2(String code) {
    final up = code.toUpperCase();

    // Subdivision like "GB-ENG" -> "GB"
    final base = up.contains('-') ? up.split('-').first : up;

    // Already alpha-2
    if (RegExp(r'^[A-Z]{2}$').hasMatch(base)) return base;

    // If alpha-3 (e.g. ESP), map via FlagCode
    if (RegExp(r'^[A-Z]{3}$').hasMatch(base)) {
      final mapped = FlagCode.fromCountryCode(base); // e.g. "es"
      return mapped?.toUpperCase();
    }
    return null;
  }

  String? _emojiFromAlpha2(String alpha2) {
    if (alpha2.length != 2) return null;
    final upper = alpha2.toUpperCase();

    final first = _toRegional(upper[0]);
    final second = _toRegional(upper[1]);

    return String.fromCharCode(first) + String.fromCharCode(second);
  }

  int _toRegional(String ch) {
    const regionalIndicatorA = 0x1F1E6; // 🇦
    const asciiA = 0x41; // 'A'
    final off = ch.codeUnitAt(0) - asciiA; // A=0..Z=25
    if (off < 0 || off > 25) throw ArgumentError('Invalid letter: $ch');
    return regionalIndicatorA + off;
  }

  @override
  Widget build(BuildContext context) {
    final alpha2 = _normalizeToAlpha2(flagCode);
    final emoji = alpha2 != null ? _emojiFromAlpha2(alpha2) : null;

    return emoji != null
        ? _FlagEmoji(flagCode: alpha2!, emoji: emoji, size: _size)
        : _FlagEmojiNotFound(_size);
  }
}

class _FlagEmoji extends StatelessWidget {
  const _FlagEmoji({
    required this.flagCode,
    required this.emoji,
    required this.size,
  });

  final String flagCode;
  final String emoji;
  final double size;

  @override
  Widget build(BuildContext context) {
    final isTest = Platform.environment.containsKey('FLUTTER_TEST');
    return Text(
      key: const Key('countryFlags_emoji'),
      emoji,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: isTest ? 'NotoColorEmoji' : null,
        fontSize: size,
        height: 1,
      ),
    );
  }
}

class _FlagEmojiNotFound extends StatelessWidget {
  const _FlagEmojiNotFound(this.size);

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: const Key('flagEmoji_notFound'),
      width: size,
      height: size,
      child: const ColoredBox(
        color: Colors.white,
        child: Center(
          child: Icon(Icons.question_mark),
        ),
      ),
    );
  }
}
