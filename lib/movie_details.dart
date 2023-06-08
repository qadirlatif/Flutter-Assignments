import 'package:flutter/material.dart';
import 'movie_details_topbar.dart';
import 'movies.dart';
import 'package:indexed/indexed.dart';
import 'movie_details_rounded_button.dart';
import 'movie_description.dart';
import 'movie_cast.dart';
import 'movie_details_display.dart';

// ignore: must_be_immutable
class MovieDetails extends StatelessWidget {
  MovieDetails({super.key, required this.movie});
  Movies movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Stack(
          children: [
            Indexer(
              children: [
                const Indexed(
                  index: 3,
                  child: TopBarMovieDetails(),
                ),
                Indexed(
                    index: 1,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 1,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            MovieDetailsDisplay(movie: movie),
                            Description(movie: movie),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(18, 5, 0, 0),
                              child: Row(
                                children: const [
                                  CircleAvatar(
                                    radius: 11,
                                    backgroundColor: Colors.red,
                                    child: Icon(
                                      Icons.thumb_up,
                                      color: Colors.black,
                                      size: 15,
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(0, 3, 7, 0)),
                                  Text(
                                    "Most Liked",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            const Roundedbutton(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(18, 5, 0, 3),
                              child: Row(
                                children: const [
                                  Text("Prolog",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(18, 2, 25, 10),
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo",
                                style: TextStyle(
                                    color: Color.fromRGBO(75, 75, 75, 1),
                                    fontSize: 12,
                                    height: 1.7),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(18, 5, 0, 4),
                              child: Row(
                                children: const [
                                  Text("Top Cast",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                            Cast()
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
