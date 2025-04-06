import '../../feature/home/data/model/movie_model.dart';

final forYouImages = [
  MovieModel(imageUrl: "assets/for_your_image_1.jpeg"),
  MovieModel(imageUrl: "assets/for_your_image_2.jpeg"),
  MovieModel(imageUrl: "assets/for_your_image_3.jpeg"),
  MovieModel(imageUrl: "assets/for_your_image_4.jpeg"),
];

final popularImages = [
  MovieModel(
    imageUrl: "assets/popular_image_1.jpeg",
    title: 'Dune',
    cast: [
      {
        "name": "Timothée Chalamet",
        "role": "Paul Atreides",
        "imageUrl": "assets/actor_1.jpeg",
      },
      {"name": "Zendaya", "role": "Chani", "imageUrl": "assets/actor_2.jpeg"},
      {
        "name": "Rebecca Ferguson",
        "role": "Lady Jessica Atreides",
        "imageUrl": "assets/actor_3.jpeg",
      },
      {
        "name": "Oscar Isaac",
        "role": "Duke Leto Atreides",
        "imageUrl": "assets/actor_4.jpeg",
      },
      {
        "name": "Jason Momoa",
        "role": "Duncan Idaho",
        "imageUrl": "assets/actor_5.jpeg",
      },
    ],
    comments: [
      {
        "name": "John Doe",
        "comment": "Amazing movie!",
        "date": "2023-10-01",
        "rating": "5.0",
        "imageUrl": "assets/actor_1.jpeg",
      },
      {
        "name": "Jane Smith",
        "comment": "A must-watch for sci-fi fans.",
        "date": "2023-10-02",
        "rating": "4.5",
        "imageUrl": "assets/actor_2.jpeg",
      },
      {
        "name": "Alice Johnson",
        "comment": "Visually stunning and thought-provoking.",
        "date": "2023-10-03",
        "rating": "4.8",
        "imageUrl": "assets/actor_3.jpeg",
      },
      {
        "name": "Bob Brown",
        "comment": "A masterpiece of modern cinema.",
        "date": "2023-10-04",
        "rating": "5.0",
        "imageUrl": "assets/actor_4.jpeg",
      },
      {
        "name": "Charlie Davis",
        "comment": "Epic storytelling and character development.",
        "date": "2023-10-05",
        "rating": "4.7",
        "imageUrl": "assets/actor_5.jpeg",
      },
    ],
    releaseYear: "2021",
    rating: "8.2",
  ),
  MovieModel(
    imageUrl: "assets/popular_image_2.jpeg",
    title: 'Shang-Chi and the Legend of the Ten Rings',
    releaseYear: '2022',
    rating: '7.5',
  ),
  MovieModel(
    imageUrl: "assets/popular_image_3.jpeg",
    title: 'Narcos',
    releaseYear: '2020',
    rating: '9.7',
  ),
  MovieModel(
    imageUrl: "assets/for_your_image_2.jpeg",
    title: 'Shazam!',
    releaseYear: '2021',
    rating: '7.5',
  ),
  MovieModel(
    imageUrl: "assets/popular_image_3.jpeg",
    title: 'Stranger Things',
    releaseYear: '2020',
    rating: '9.7',
  ),
];

final legendaryImages = [
  MovieModel(
    imageUrl: "assets/legendary_movie_1.jpeg",
    title: "Alien",
    releaseYear: "1979",
    rating: "8.5",
  ),
  MovieModel(
    imageUrl: "assets/legendary_movie_2.jpeg",
    title: "300",
    releaseYear: "2006",
    rating: "9.4",
  ),
  MovieModel(
    imageUrl: "assets/popular_image_3.jpeg",
    title: "Narcos",
    releaseYear: "2020",
    rating: "8.7",
  ),
  MovieModel(
    imageUrl: "assets/for_your_image_2.jpeg",
    title: "Shazam!",
    releaseYear: "2021",
    rating: "7.5",
  ),
  MovieModel(
    imageUrl: "for_your_image_1.jpeg",
    title: "Cruella",
    releaseYear: "2021",
    rating: "9.2",
  ),
];

final genresList = [
  MovieModel(title: "Horror", imageUrl: "assets/genres_1.png"),
  MovieModel(title: "Fantasy", imageUrl: "assets/genres_2.jpeg"),
  MovieModel(title: "History", imageUrl: "assets/genres_3.jpeg"),
  MovieModel(title: "Detective", imageUrl: "assets/genres_4.jpeg"),
  MovieModel(title: "Action", imageUrl: "assets/genres_5.jpeg"),
];
