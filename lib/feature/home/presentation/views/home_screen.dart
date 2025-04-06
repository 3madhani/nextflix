import 'package:flutter/material.dart';
import 'package:nextflix/core/constants/app_colors.dart';
import 'package:nextflix/core/constants/dummy_data.dart';
import 'package:nextflix/feature/home/presentation/views/widgets/custom_card_normal.dart';
import 'package:nextflix/feature/home/presentation/views/widgets/page_indicator.dart';
import 'package:provider/provider.dart';

import '../view_model/home_view_model.dart';
import 'widgets/custom_search_bar.dart';
import 'widgets/for_you_layout.dart';
import 'widgets/home_header.dart';
import 'widgets/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Consumer<HomeViewModel>(
              builder: (context, viewModel, _) {
                return Column(
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
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 28,
                        vertical: 10,
                      ),
                      height: MediaQuery.sizeOf(context).height * 0.27,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: popularImages.length,
                        itemBuilder: (context, index) {
                          return CustomCardNormal(movie: popularImages[index]);
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
