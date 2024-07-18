import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 90),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('assets/images/radio_logo.png'),
          Text(
            AppLocalizations.of(context)!.holy_quran_radio,
          ),
          Image.asset('assets/images/radio_bottom.png'),
        ],
      ),
    );
  }
}
