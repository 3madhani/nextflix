import 'package:flutter/material.dart';
import 'package:nextflix/core/constants/app_colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Search",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        backgroundColor: AppColors.backgroundColor,
      ),
      body: const Center(
        child: Text(
          "Search Screen",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
