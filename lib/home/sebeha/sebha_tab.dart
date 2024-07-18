import 'package:flutter/material.dart';
import 'package:islami/home/app_colors.dart';

class SebhaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/head_sebeha.png'),
          Image.asset(
            'assets/images/sebeha_logo.png',
            width: 300,
            height: 300,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Number of Tasbeh',
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
                '30',
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
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.primaryLightColor,
            ),
            child: Center(
              child: Text(
                'Sobhan Allah',
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
