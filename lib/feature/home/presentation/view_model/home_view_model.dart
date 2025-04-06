import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/constants/dummy_data.dart';
import '../../data/model/movie_model.dart';

class HomeViewModel extends ChangeNotifier {
  int selectedIndex = 0;
  final List<MovieModel> forYouMovies = List.of(forYouImages);
  final List<MovieModel> popularMovies = List.of(popularImages);
  final List<MovieModel> legendaryMovies = List.of(legendaryImages);
  final List<MovieModel> genres = List.of(genresList);
  final List<IconData> tabBarIcons = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.compass,
    FontAwesomeIcons.play,
    FontAwesomeIcons.user,
  ];
  final PageController pageController = PageController(viewportFraction: 0.8);
  int currentPage = 0;
  late Timer _timer;

  HomeViewModel() {
    _startAutoScroll();
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the ViewModel is disposed
    pageController.dispose();
    super.dispose();
  }

  void setCurrentPage(int index) {
    currentPage = index;
    notifyListeners();
  }

  // Method to change the current tab bar icon
  void setSelectedIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  // Timer logic to scroll automatically
  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageController.hasClients) {
        final nextPage =
            (pageController.page!.toInt() + 1) % forYouMovies.length;
        pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
        setCurrentPage(nextPage); // Notify listeners of page change
      }
    });
  }
}
