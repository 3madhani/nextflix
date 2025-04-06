import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  final Color color;

  final double fontSize;

  const SectionTitle({
    super.key,
    required this.title,
    this.color = Colors.white54,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
