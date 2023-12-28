import 'package:flutter/material.dart';
import 'package:movies_app/screen/saveMovie_screen.dart';

import '../../widgets/movie_list_item.dart';
import 'MovieScreen.dart';
import '../models/Movie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Movie> movies = Movie.movies;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: ClipPath(
          clipper: _CustomClipper(),
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xFF000B49),
            child: Center(
              child: Text(
                'FilmWeb',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline6,
                        children: [
                          TextSpan(
                            text: 'Popular ',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                            text: 'Movies',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 30,),
                    ElevatedButton(
                      onPressed: () {Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SaveMovieScreen()),);},
                      child:  RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.headline6,
                          children: [
                            TextSpan(
                              text: 'Saved ',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const TextSpan(
                              text: 'Movies',
                            ),
                          ],
                        ),
                      ),
                    )


                  ]),
                  const SizedBox(height: 20),
                  for (final movie in movies)
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MovieScreen(movie: movie),
                          ),
                        );
                      },
                      child: MovieListItem(
                        imageUrl: movie.imagePath,
                        name: movie.name,
                        information:
                        '${movie.year} | ${movie.category}',
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}