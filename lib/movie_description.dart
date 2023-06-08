import 'package:flutter/material.dart';
import 'movies.dart';

// ignore: must_be_immutable
class Description extends StatelessWidget {
  Description({super.key, required this.movie});
  Movies movie;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 10, 0, 2),
      child: Row(
        children: [
          const Text("95% match",
              style: TextStyle(
                  color: Color.fromRGBO(67, 113, 69, 1),
                  fontWeight: FontWeight.normal,
                  fontSize: 17)),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              movie.releaseyear.toString(),
              style: const TextStyle(
                  color: Color.fromRGBO(87, 87, 87, 1), fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              movie.duration.toString(),
              style: const TextStyle(
                  color: Color.fromRGBO(87, 87, 87, 1), fontSize: 17),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              "R",
              style:
                  TextStyle(color: Color.fromRGBO(87, 87, 87, 1), fontSize: 17),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              "HD",
              style:
                  TextStyle(color: Color.fromRGBO(87, 87, 87, 1), fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
