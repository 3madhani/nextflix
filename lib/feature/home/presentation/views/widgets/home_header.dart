import 'package:flutter/material.dart';
import 'package:nextflix/core/constants/app_colors.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Hi, 3mad!",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          Stack(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/actor_5.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 2,
                top: 2,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.buttonColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}