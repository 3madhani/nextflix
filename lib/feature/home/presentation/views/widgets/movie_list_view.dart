import 'package:flutter/material.dart';
import 'package:nextflix/feature/home/data/model/movie_model.dart';
import 'custom_card_normal.dart';

class MovieListView extends StatelessWidget {
  final List<MovieModel> movieModels;
  const MovieListView({super.key, required this.movieModels});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
      height: MediaQuery.sizeOf(context).height * 0.27,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: movieModels.length,
        itemBuilder: (context, index) {
          return CustomCardNormal(movie: movieModels[index]);
        },
      ),
    );
  }
}
