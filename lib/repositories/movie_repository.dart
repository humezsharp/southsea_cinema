import 'package:southsea_cinema/models/movie.dart';

class MovieRepository {
  List<Movie> getMovies() {
    return const[
      Movie(
        id: '001',
        title: 'HOT FUZZ', 
        synopsis: 'Simon Pegg and Nick Frost shoot West Country Pensioners', 
        ageRating: '12', 
        screenTime: '1:45', 
        ticketPrice: 7.99, 
        imagePath: 'assets/images/Matt-Ferguson-Hot-Fuzz-Alternative-Movie-Poster_1200x.jpg'
      ),
      Movie(
        id: '002',
        title: 'Monty Python and The Holy Grail', 
        synopsis: 'A classic british Fantasy Comedy with the budget of your nans weekly shop', 
        ageRating: '12', 
        screenTime: '1:30', 
        ticketPrice: 7.99, 
        imagePath: 'assets/images/monty-python-and-the-holy-grail-re-release-movie-poster.jpg'
      )
    ];
  }
}