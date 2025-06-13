import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const MyButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: Color(0XFF31A062)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(text, style: TextStyle(fontSize: 17, color: Colors.white)),
      ),
    );
  }
}
