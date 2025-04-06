import 'package:flutter/material.dart';
import 'package:nextflix/core/constants/app_colors.dart';

class CustomCardThumbnail extends StatelessWidget {
  final String imageUrl;
  const CustomCardThumbnail({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15, top: 10, bottom: 30),

      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.buttonColor.withOpacity(0.25),
            blurRadius: 5,
            spreadRadius: 1,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
      ),
    );
  }
}
