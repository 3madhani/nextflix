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
import 'widgets/popular_list_view.dart';
import 'widgets/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel(),
      child: const Scaffold(
        body: Stack(
          children: [
            SafeArea(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomeHeader(),
                    SizedBox(height: 20),
                    CustomSearchBar(),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 5,
                      ),
                      child: SectionTitle(title: "For You"),
                    ),
                    ForYouCardsLayout(),
                    PageIndicator(),
                    // popular movies
                    Padding(
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
                    PopularListView(),
                    // genre movies
                    Padding(
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
                    GenresListView(),
                    // legend movies
                    Padding(
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
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            // nav bar
            BottomNavBar(),
          ],
        ),
      ),
    );
  }
}
