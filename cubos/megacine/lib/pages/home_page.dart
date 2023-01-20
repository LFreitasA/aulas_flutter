import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        Row(
          children: [Text(Strings.title), Text("ola")],
        ),
        Expanded(
          child: Visibility(
            visible: isLoaded,
            child: ListView.builder(
              itemCount: popularMovies.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.network(popularMovies[index].image),
                    Text(popularMovies[index].title),
                  ],
                );
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
}
