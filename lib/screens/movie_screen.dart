import 'package:flutter/material.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';
import 'package:southsea_cinema/widgets/movie_card.dart';
import 'package:southsea_cinema/constants.dart';

class MovieScreen extends StatelessWidget{
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MovieRepository repository = MovieRepository();
    final List<Movie> movies = repository.getMovies();

    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
        titleTextStyle: cinemaHeaderStyle,
      ),
      body: ListView.builder(
        itemCount: movies.length, 
        itemBuilder: (context, index) {  
          return MovieCard(movie: movies[index]);
        },
      ),
    );
  }
}

