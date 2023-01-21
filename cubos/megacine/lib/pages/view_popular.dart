import 'package:flutter/material.dart';
import 'package:megacine/api_requests/api_request.dart';
import 'package:megacine/classes/movies.dart';

import 'vire_movie_details.dart';

class ViewPopular extends StatefulWidget {
  ViewPopular({Key? key}) : super(key: key);

  int contadorPopular = 0;
  @override
  State<ViewPopular> createState() => _ViewPopularState();
}

class _ViewPopularState extends State<ViewPopular> {
  bool isLoaded = false;
  bool movieSelected = false;
  int number = 0;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    if (widget.contadorPopular == 0) {
      widget.contadorPopular++;
      var getTopMovies = await getPopularMovies();
      if (getTopMovies != null) {
        setState(() {
          isLoaded = true;
        });
      }
    } else {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(),
        Expanded(
          child: Visibility(
            visible: isLoaded,
            child: movieSelected
                ? ViewMovieDetails(index: number, list: popularMovies)
                : GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemCount: popularMovies.length,
                    itemBuilder: (context, index) {
                      return gridMovie(index);
                    },
                  ),
            replacement: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        )
      ],
    );
  }

  Column gridMovie(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                number = index;
                movieSelected = true;
              });
            },
            child: Wrap(
              children: [
                Image.network(
                  popularMovies[index].image,
                  height: 85,
                ),
                Text(
                  popularMovies[index].title,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
 /*          Text(
            popularMovies[index].title,
            style: TextStyle(color: Colors.white),
          ),
          */

          /*
          Expanded(
          child: Image.network(
            popularMovies[index].image,
          ),
        ),
        */