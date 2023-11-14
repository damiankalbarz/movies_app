import 'Movie.dart';

class MoviesResponse {
  int page;
  String next;
  int entries;
  List<Movie> results;

  MoviesResponse({
    required this.page,
    required this.next,
    required this.entries,
    required this.results,
  });

  factory MoviesResponse.fromJson(Map<String, dynamic> json) {
    List<Movie> movies = (json['results'] as List)
        .map((movieJson) => Movie.fromJson(movieJson))
        .toList();

    return MoviesResponse(
      page: json['page'],
      next: json['next'],
      entries: json['entries'],
      results: movies,
    );
  }
}