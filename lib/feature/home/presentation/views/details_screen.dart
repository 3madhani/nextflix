import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nextflix/core/constants/app_colors.dart';
import 'package:nextflix/feature/home/data/model/movie_model.dart';
import 'package:nextflix/feature/home/presentation/views/widgets/cast_and_crew.dart';
import 'package:readmore/readmore.dart';

import 'widgets/exit_button.dart';
import 'widgets/tag_widget.dart';
import 'widgets/trailer_thumbnail.dart';

class DetailsScreen extends StatelessWidget {
  final MovieModel movie;

  const DetailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * .5,
                  foregroundDecoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        AppColors.backgroundColor.withOpacity(0.8),
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(movie.imageUrl!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // the basic info
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movie.title!,
                                style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "${movie.releaseYear!}, Denis Villeneuve",
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white38,
                                ),
                              ),
                            ],
                          ),
                          // rating
                          Row(
                            children: [
                              Text(
                                movie.rating!,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Icon(
                                FontAwesomeIcons.solidStar,
                                color: Colors.amber,
                                size: 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                      // the category builder
                      const Wrap(
                        spacing: 10.0, // Add space between tags
                        children: [
                          TagWidget(tag: "Epic"),
                          TagWidget(tag: "Action"),
                          TagWidget(tag: "Adventure"),
                          TagWidget(tag: "Sci-Fi"),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        child: ReadMoreText(
                          "Dune is a 2021 American epic science fiction film directed by Denis Villeneuve from a screenplay he co-wrote with Jon Spaihts and Eric Roth. It is based on the 1965 novel of the same name by Frank Herbert.",
                          trimLines: 3,
                          trimMode: TrimMode.Line,
                          moreStyle: TextStyle(color: AppColors.buttonColor),
                          lessStyle: TextStyle(color: AppColors.buttonColor),
                          trimExpandedText: 'Read less',
                          style: TextStyle(
                            color: Colors.white70,
                            height: 1.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      // cast and crew
                      CastAndCrew(casts: movie.cast!),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Trailer",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ),
                            // thumbnail over each other
                            const TrailerThumbnail(),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Comments",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                ),
                                const Text(
                                  "See all",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.buttonColor,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * .15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ExitButton(),
        ],
      ),
    );
  }
}