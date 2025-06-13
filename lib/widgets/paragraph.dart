import 'package:flutter/material.dart';

class MyParagraph extends StatelessWidget {
  final String text;
  final double size;
  const MyParagraph({super.key, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: Colors.grey),
      textAlign: TextAlign.center,
    );
  }
}
