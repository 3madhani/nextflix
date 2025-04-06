import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';

class PlayNowButton extends StatelessWidget {
  const PlayNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      right: 30,
      left: 30,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.buttonColor.withOpacity(0.8),
        ),
        alignment: Alignment.center,
        child: Text(
          "Play Now",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
      ),
    );
  }
}
