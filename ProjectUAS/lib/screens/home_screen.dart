import 'package:flutter/material.dart';
import 'package:peliculas/services/movies_provider.dart';
import 'package:peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:peliculas/search/search_delegate.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: true);
    //print(moviesProvider.onDisplayMovies);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Movie Review'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () =>
                  showSearch(context: context, delegate: MovieSearchDelegate()),
              padding: const EdgeInsets.only(right: 8),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Cards
              CardSwiper(movies: moviesProvider.onDisplayMovies),

              // List view
              MovieSlider(
                movies: moviesProvider.popularMovies,
                title: 'The Movie',
                nextPage: () => moviesProvider.getPopularMovies(),
              ),
            ],
          ),
        ));
  }
}
