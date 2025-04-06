import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/home_view_model.dart';
import 'widgets/custom_search_bar.dart';
import 'widgets/for_you_layout.dart';
import 'widgets/for_you_section_title.dart';
import 'widgets/home_header.dart';

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
                return const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomeHeader(),
                    SizedBox(height: 20),
                    CustomSearchBar(),
                    SizedBox(height: 20),
                    ForYouSectionTitle(),
                    ForYouCardsLayout(),
                    SizedBox(height: 20),
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
