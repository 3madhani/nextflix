import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/home_view_model.dart';
import 'custom_card_normal.dart';

class PopularListView extends StatelessWidget {
  const PopularListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: (context, viewModel, _) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
          height: MediaQuery.sizeOf(context).height * 0.27,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: viewModel.popularMovies.length,
            itemBuilder: (context, index) {
              return CustomCardNormal(movie: viewModel.popularMovies[index]);
            },
          ),
        );
      },
    );
  }
}
