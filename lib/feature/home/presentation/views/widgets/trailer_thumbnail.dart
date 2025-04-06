import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/constants/app_colors.dart';

class TrailerThumbnail extends StatelessWidget {
  const TrailerThumbnail({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            image: const DecorationImage(
              image: AssetImage("assets/trailer.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 90,
          child: InkResponse(
            radius: 100,
            splashColor: AppColors.buttonColor.withOpacity(0.3),
            onTap: () {
              // Handle tap event here
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.6),
              ),
              child: Icon(
                FontAwesomeIcons.play,
                color: AppColors.buttonColor.withOpacity(.8),
                size: 25,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
