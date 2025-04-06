import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nextflix/core/constants/app_colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.searchBarColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Row(
          children: [
            Icon(FontAwesomeIcons.magnifyingGlass, color: Colors.white30),
            SizedBox(width: 15),
            Text(
              "Search for Movies, Series",
              style: TextStyle(color: Colors.white30, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}