import 'package:flutter/material.dart';

class ItemHadethDetailScreen extends StatelessWidget {
  String content;

  ItemHadethDetailScreen({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
