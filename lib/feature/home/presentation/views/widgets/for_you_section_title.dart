import 'package:flutter/material.dart';

class ForYouSectionTitle extends StatelessWidget {
  const ForYouSectionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Text(
        'For You',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white54,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
