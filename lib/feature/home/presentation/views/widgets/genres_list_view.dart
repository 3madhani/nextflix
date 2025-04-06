import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/home_view_model.dart';

class GenresListView extends StatelessWidget {
  const GenresListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder:
          (context, viewModel, _) => Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            height: MediaQuery.sizeOf(context).height * 0.2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: viewModel.genres.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        bottom: 20,
                        top: 8,
                      ),
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(viewModel.genres[index].imageUrl!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      bottom: -8,
                      child: Text(
                        viewModel.genres[index].title!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
    );
  }
}
