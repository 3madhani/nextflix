import 'package:flutter/material.dart';
import 'package:nextflix/core/constants/app_colors.dart';
import 'package:nextflix/feature/home/presentation/views/widgets/page_indicator.dart';
import 'package:provider/provider.dart';

import '../view_model/home_view_model.dart';
import 'widgets/bottom_nav_bar.dart';
import 'widgets/custom_search_bar.dart';
import 'widgets/for_you_layout.dart';
import 'widgets/genres_list_view.dart';
import 'widgets/home_header.dart';
import 'widgets/movie_list_view.dart';
import 'widgets/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel(),
      child: Scaffold(
        body: Stack(
          children: [
            SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HomeHeader(),
                    const SizedBox(height: 20),
                    const CustomSearchBar(),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 5,
                      ),
                      child: SectionTitle(title: "For You"),
                    ),
                    const ForYouCardsLayout(),
                    const PageIndicator(),
                    // popular movies
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 30,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SectionTitle(title: "Popular on Nextflix"),
                              SectionTitle(
                                title: "See All",
                                color: AppColors.buttonColor,
                                fontSize: 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Consumer<HomeViewModel>(
                      builder:
                          (context, viewModel, _) => MovieListView(
                            movieModels: viewModel.popularMovies,
                          ),
                    ),
                    // genre movies
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 30,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SectionTitle(title: "Genres"),
                              SectionTitle(
                                title: "See All",
                                color: AppColors.buttonColor,
                                fontSize: 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const GenresListView(),
                    // legend movies
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 30,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SectionTitle(title: "Legendary Movies"),
                              SectionTitle(
                                title: "See All",
                                color: AppColors.buttonColor,
                                fontSize: 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Consumer<HomeViewModel>(
                      builder:
                          (context, viewModel, _) => MovieListView(
                            movieModels: viewModel.legendaryMovies,
                          ),
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ),
            // nav bar
            const BottomNavBar(),
          ],
        ),
      ),
    );
  }
}
