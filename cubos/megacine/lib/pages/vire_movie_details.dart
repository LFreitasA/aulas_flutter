import 'package:flutter/material.dart';
import 'package:megacine/api_requests/api_request.dart';
import 'package:megacine/classes/movies.dart';

import '../classes/strings.dart';

class ViewMovieDetails extends StatefulWidget {
  ViewMovieDetails({Key? key, required this.index, required this.list})
      : super(key: key);
  final index;
  List<Movies> list;
  @override
  State<ViewMovieDetails> createState() => _ViewMovieDetailsState();
}

class _ViewMovieDetailsState extends State<ViewMovieDetails> {
  bool isLoaded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Image.network(
            widget.list[widget.index].image,
            scale: 0.7,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.list[widget.index].title,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Sinopse",
              style: TextStyle(color: Colors.orange),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.list[widget.index].overview,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
