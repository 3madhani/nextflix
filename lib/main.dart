import 'package:flutter/material.dart';
import 'package:nextflix/core/constants/app_colors.dart';
import 'package:nextflix/feature/home/presentation/views/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.backgroundColor),

      home: const HomeScreen(),
    );
  }
}
