import 'package:flutter/material.dart';
import 'movies.dart';

// ignore: must_be_immutable
class MovieDetailsDisplay extends StatelessWidget {
  MovieDetailsDisplay({super.key, required this.movie});
  Movies movie;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 1,
      child: Stack(
        children: [
          ClipRRect(
              child: Image.network(movie.imageurl,
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
                      Colors.black.withOpacity(0.5),
                    ],
                    stops: const [
                      0.0,
                      1.0
                    ])),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 0, 20),
                      child: Text(
                        "Preview",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 16, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.cloud_download,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
