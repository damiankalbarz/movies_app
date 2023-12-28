import 'dart:convert';

import 'Movie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MovieStorage {
  static const String _moviesKey = 'moviesKey';

  static Future<void> addMovie(Movie movie) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    // Odczytaj aktualną listę filmów z SharedPreferences.
    final List<String>? moviesListStrings = prefs.getStringList(_moviesKey);

    // Jeśli lista jest pusta, utwórz nową listę.
    final List<String> updatedMoviesListStrings = moviesListStrings ?? [];

    // Dodaj nowy film do listy.
    updatedMoviesListStrings.add(jsonEncode({
      'name': movie.name,
      'imagePath': movie.imagePath,
      'category': movie.category,
      'year': movie.year,
    }));

    // Zapisz zaktualizowaną listę filmów w SharedPreferences.
    prefs.setStringList(_moviesKey, updatedMoviesListStrings);
  }

  static Future<List<Movie>> getMovies() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    // Odczytaj listę filmów z SharedPreferences.
    final List<String>? moviesListStrings = prefs.getStringList(_moviesKey);

    if (moviesListStrings == null) {
      return [];
    }

    // Konwertuj listę stringów na listę map, a następnie na listę obiektów klasy Movie.
    final List<Map<String, dynamic>> moviesList = moviesListStrings.map((movieString) {
      return jsonDecode(movieString) as Map<String, dynamic>;
    }).toList();

    final List<Movie> movies = moviesList.map((movieMap) {
      return Movie(
        name: movieMap['name'],
        imagePath: movieMap['imagePath'],
        category: movieMap['category'],
        year: movieMap['year'],
      );
    }).toList();

    return movies;
  }


}
