import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  final String text;
  const MyTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}
