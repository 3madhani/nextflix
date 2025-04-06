class MovieModel {
  String? title;
  List<Map>? comments;
  String? imageUrl;
  String? releaseYear;
  String? rating;
  List<Map>? cast;

  MovieModel({
    this.title,
    this.comments,
    this.imageUrl,
    this.releaseYear,
    this.rating,
    this.cast,
  });
}
