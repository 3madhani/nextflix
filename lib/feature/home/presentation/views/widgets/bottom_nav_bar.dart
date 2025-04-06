import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../view_model/home_view_model.dart' show HomeViewModel;

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder:
          (context, viewModel, child) => Positioned(
            bottom: 30,
            left: 25,
            right: 25,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.searchBarColor.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: AppColors.buttonColor.withOpacity(0.4),
                      width: 2,
                    ),
                  ),
                  height: 70,
                  width: MediaQuery.sizeOf(context).width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(viewModel.tabBarIcons.length, (
                      index,
                    ) {
                      final icon = viewModel.tabBarIcons[index];
                      final isSelected = viewModel.selectedIndex == index;

                      return GestureDetector(
                        onTap: () {
                          viewModel.setSelectedIndex(index);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow:
                                isSelected
                                    ? [
                                      BoxShadow(
                                        color: Colors.white.withOpacity(0.4),
                                        blurRadius: 16,
                                        spreadRadius: 0,
                                      ),
                                    ]
                                    : [],
                          ),
                          child: Icon(
                            icon,
                            color: isSelected ? Colors.white : Colors.white54,
                            size: 25,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ),
          ),
    );
  }
}
