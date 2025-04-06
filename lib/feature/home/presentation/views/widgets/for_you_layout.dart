import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/home_view_model.dart';
import 'custom_card_thumbnail.dart';

class ForYouCardsLayout extends StatelessWidget {
  const ForYouCardsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: (context, viewModel, _) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: PageView.builder(
            controller: viewModel.pageController,
            itemCount: viewModel.forYouMovies.length,
            itemBuilder: (context, index) {
              return TweenAnimationBuilder<Offset>(
                duration: const Duration(milliseconds: 500),
                tween: Tween<Offset>(
                  begin: const Offset(0, 1),
                  end: Offset.zero,
                ),
                curve: Curves.easeInOut,
                builder: (context, Offset offset, child) {
                  return SlideTransition(
                    position: AlwaysStoppedAnimation<Offset>(offset),
                    child: child,
                  );
                },
                child: CustomCardThumbnail(
                  imageUrl: viewModel.forYouMovies[index].imageUrl ?? '',
                ),
              );
            },
            onPageChanged: (index) {
              viewModel.setCurrentPage(index); // Update page in ViewModel
            },
          ),
        );
      },
    );
  }
}
