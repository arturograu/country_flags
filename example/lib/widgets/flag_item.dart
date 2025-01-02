
// ignore_for_file: public_member_api_docs

import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';



class FlagItem extends StatelessWidget {
  const FlagItem({ 
    required this.flag,
    required this.countryCode,
    super.key,
  });

  final CountryFlag flag;
  final String countryCode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: flag),
        const SizedBox(height: 8),
        Expanded(
          child: Text(
            countryCode,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}
