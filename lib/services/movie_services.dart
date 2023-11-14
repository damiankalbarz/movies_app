import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/MoviesResponse.dart';

class MovieService {


  Future<MoviesResponse> getMovies() async {
    try {
      var response = await http.get(
        Uri.parse('https://moviesdatabase.p.rapidapi.com/titles'),
        headers: <String, String>{
          'X-RapidAPI-Key': '705fe7d8aamsh7ca7f8c725cd9f4p14bc47jsn64109a758a92',
          'X-RapidAPI-Host': 'moviesdatabase.p.rapidapi.com'
        },
      );

      if (response.statusCode == 200) {
        var jsonResponse = json.decode(response.body);
        //print(jsonResponse);
        print('Movies get successfully');
        return MoviesResponse.fromJson(jsonResponse);
      } else {
        print('Movies get failed with status: ${response.statusCode}');
        // Tutaj można umieścić logikę obsługi błędu
        throw Exception('Failed to load movies');
      }
    } catch (e) {
      print('Error during get movies: $e');
      throw Exception('Failed to load movies');
    }
  }
}