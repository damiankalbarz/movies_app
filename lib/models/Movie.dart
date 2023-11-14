class Movie{
  String id;
  String title;
  String imageUrl;
  String releaseYear;

  Movie({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.releaseYear,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      title: json['titleText']['text'],
      imageUrl: json['primaryImage']['url'],
      releaseYear: json['releaseYear']['year'].toString(),
    );
  }
}