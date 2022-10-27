import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  CustomText({required this.text, required this.size,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: this.size,
        color: this.color,


      ),
    );
  }
}
