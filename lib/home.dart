import 'package:flutter/material.dart';
import 'package:qouateapp/movies.dart';
import 'package:indexed/indexed.dart';
import 'Topbar.dart';
import 'labels.dart';
import 'Movie_display.dart';
import 'bottom_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Movies m = Movies("moviename", "imageurl", 2, "");
  Movies current = Movies("moviename", "imageurl", 2, "");
  @override
  void initState() {
    m.insertingmoviesinlist();
    current = m.Oldmovie[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Stack(
          children: [
            Indexer(
              children: [
                const Indexed(index: 3, child: BottomBar()),
                const Indexed(
                  index: 3,
                  child: TopBar(),
                ),
                Indexed(
                    index: 1,
                    child: Positioned(
                        child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Movie_display(movie: current),
                          const Padding(
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 10)),
                          Label(label: "Trending Now"),
                          const Padding(
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 10)),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                              child: Row(
                                children: [
                                  for (int j = 0; j < m.Oldmovie.length; j++)
                                    GestureDetector(
                                      onTap: () => {
                                        setState(() {
                                          current = m.Oldmovie[j];
                                        })
                                      },
                                      child: Container(
                                        height: 150,
                                        width: 110,
                                        margin: const EdgeInsets.all(3),
                                        color: Colors.black,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image(
                                            image: NetworkImage(
                                              m.Oldmovie[j].imageurl,
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    )
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                          Label(label: "Action Movies"),
                          const Padding(
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 10)),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                              child: Row(
                                children: [
                                  for (int j = 0;
                                      j < m.ActionMovies.length;
                                      j++)
                                    GestureDetector(
                                      onTap: () => {
                                        setState(() {
                                          current = m.ActionMovies[j];
                                        })
                                      },
                                      child: Container(
                                        height: 150,
                                        width: 110,
                                        margin: const EdgeInsets.all(3),
                                        color: Colors.black,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image(
                                            image: NetworkImage(
                                              m.ActionMovies[j].imageurl,
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    )
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                          Label(label: "Latest Movies"),
                          const Padding(
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 10)),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                              child: Row(
                                children: [
                                  for (int j = 0;
                                      j < m.latestMovies.length;
                                      j++)
                                    GestureDetector(
                                      onTap: () => {
                                        setState(() {
                                          current = m.latestMovies[j];
                                        })
                                      },
                                      child: Container(
                                        height: 150,
                                        width: 110,
                                        margin: const EdgeInsets.all(3),
                                        color: Colors.black,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image(
                                            image: NetworkImage(
                                              m.latestMovies[j].imageurl,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
