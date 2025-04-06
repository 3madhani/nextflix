import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';

class TagWidget extends StatelessWidget {
  final String tag;
  const TagWidget({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.searchBarColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(
        tag,
        style: const TextStyle(fontSize: 16, color: Colors.white30),
      ),
    );
  }
}
