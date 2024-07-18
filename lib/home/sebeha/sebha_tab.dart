import 'dart:math';
import 'package:flutter/material.dart';
import 'package:islami/home/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> phrases(BuildContext context) {
    return [
      AppLocalizations.of(context)!.sobhan_allah,
      AppLocalizations.of(context)!.elhamd_ly_allah,
      AppLocalizations.of(context)!.allah_we_akber,
    ];
  }

  int counter = 1;
  int index = 0;
  double angle = 0;

  void rotateCircle() {
    setState(() {
      counter++;
      angle += 10;
      if (counter == 34) {
        counter = 1;
        index = ((index + 1) % phrases(context as BuildContext).length) as int;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/head_sebeha.png'),
          Transform.rotate(
            angle: angle * pi / 180,
            child: InkWell(
              onTap: rotateCircle,
              child: Image.asset(
                'assets/images/sebeha_logo.png',
                width: 300,
                height: 300,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            AppLocalizations.of(context)!.number_of_tasbeh,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 80,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.primaryLightColor,
            ),
            child: Center(
              child: Text(
                '$counter',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.primaryLightColor,
            ),
            child: Center(
              child: Text(
                '${phrases(context)[index]}',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
