import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:megacine/api_requests/api_request.dart';
import 'package:megacine/classes/movies.dart';

import '../classes/strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoaded = false;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var getpopMovies = await getPopularMovies();
    if (getpopMovies != null) {
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
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
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
          child: Container(
            width: 101,
            height: 120,
            color: index % 2 == 0 ? Colors.amber : Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 85,
                    child: Image.network(popularMovies[index].image)),
                Text(popularMovies[index].title)
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