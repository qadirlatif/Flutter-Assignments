import 'package:flutter/material.dart';
import 'package:qouateapp/movies.dart';
import 'home.dart';
import 'movie_details.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  Movies m = Movies("moviename", "imageurl", 2, "");
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    m.insertingmoviesinlist();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue, canvasColor: Colors.transparent),
        home: const Home(),
        routes: {
          '/moviedetails': (context) => MovieDetails(
              movie: ModalRoute.of(context)?.settings.arguments as Movies),
        });
  }
}
