import 'package:flutter/material.dart';
import 'package:megacine/api_requests/api_request.dart';
import 'package:megacine/classes/movies.dart';

import 'vire_movie_details.dart';

class ViewTopRate extends StatefulWidget {
  ViewTopRate({Key? key}) : super(key: key);

  @override
  State<ViewTopRate> createState() => _ViewTopRateState();
  int contadorDeAcessos = 0;
}

class _ViewTopRateState extends State<ViewTopRate> {
  bool isLoaded = false;
  bool movieSelected = false;
  int number = 0;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    if (widget.contadorDeAcessos == 0) {
      widget.contadorDeAcessos++;
      var getTopMovies = await getTopRateMovies();
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
                ? ViewMovieDetails(index: number, list: topRateMovies)
                : GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemCount: topRateMovies.length,
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
                  topRateMovies[index].image,
                  height: 85,
                ),
                Text(
                  topRateMovies[index].title,
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