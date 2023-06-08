import 'package:flutter/material.dart';
import 'movies.dart';

// ignore: camel_case_types, must_be_immutable
class Movie_display extends StatefulWidget {
  Movie_display({super.key, required this.movie});
  Movies movie;
  @override
  State<Movie_display> createState() => _Movie_displayState();
}

// ignore: camel_case_types
class _Movie_displayState extends State<Movie_display> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 1,
      child: Stack(
        children: [
          ClipRRect(
              // borderRadius: BorderRadius.circular(32.0),
              child: Image.network(widget.movie.imageurl,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover)),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0.0),
                      Colors.black.withOpacity(1),
                    ],
                    stops: const [
                      0.0,
                      1.0
                    ])),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(85, 85, 85, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(54),
                          side: const BorderSide(
                              color: Color.fromRGBO(85, 85, 85, 1)))),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.play_arrow,
                        size: 22,
                      ),
                      Text("Play")
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(5, 0, 5, 0)),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/moviedetails',
                        arguments: widget.movie);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(54),
                          side: const BorderSide(color: Colors.white))),
                  child: const Text("Details"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
