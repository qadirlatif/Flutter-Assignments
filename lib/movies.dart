class Movies {
  List<Movies> Oldmovie = [];
  List<Movies> ActionMovies = [];
  List<Movies> latestMovies = [];

  String moviename;
  String imageurl;
  int releaseyear;
  String duration;
  Movies(
    this.moviename,
    this.imageurl,
    this.releaseyear,
    this.duration,
  );

  void insertingmoviesinlist() {
    Oldmovie.add(Movies(
        "Avtar",
        "https://upload.wikimedia.org/wikipedia/en/d/d8/Avtaar_poster.jpg",
        1983,
        "2h 15m"));
    Oldmovie.add(Movies(
        "Don",
        "https://resizing.flixster.com/MUJ7Sf-_seAFmb7ZgRdah6rOyAc=/300x300/v2/https://flxt.tmsimg.com/assets/p85304_d_v8_aa.jpg",
        1978,
        "2h 10m"));
    Oldmovie.add(Movies(
        "Ek Rishta",
        "https://upload.wikimedia.org/wikipedia/en/8/84/Ek_Rishtaa_poster.jpg",
        2001,
        "2h 10m"));
    Oldmovie.add(Movies(
        "Vinashak",
        "https://m.media-amazon.com/images/M/MV5BMjE0NDE4NzE5N15BMl5BanBnXkFtZTcwNDUyNDE0MQ@@._V1_.jpg",
        2002,
        "2h 10m"));
    Oldmovie.add(Movies("Sapoot",
        "https://www.cinemaazi.com/uploads/film/sapoot-1.jpg", 2002, "2h 10m"));
    Oldmovie.add(Movies(
        "Farz",
        "https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/farz-et00000781-24-03-2017-16-58-49.jpg",
        2002,
        "2h 10m"));
    Oldmovie.add(Movies(
        "Tiranga",
        "https://m.media-amazon.com/images/M/MV5BMmI5MTg4NDgtNWY4My00ZWQ2LTlhNGItNmMzNWFmZDU2MWZkXkEyXkFqcGdeQXVyMTU1OTgyNDEz._V1_FMjpg_UX1000_.jpg",
        2002,
        "2h 10m"));
    Oldmovie.add(Movies(
        "Akela",
        "https://m.media-amazon.com/images/M/MV5BYzc0ZDVjMzgtNjk2Yi00YmMzLWE5YjYtMTVjZmNkODZlYmRhXkEyXkFqcGdeQXVyMTE0NjEzNjI5._V1_.jpg",
        2002,
        "2h 10m"));
    Oldmovie.add(Movies(
        "Khuddar",
        "https://upload.wikimedia.org/wikipedia/en/thumb/a/a0/Khud-Daar_1982_film_poster.jpg/220px-Khud-Daar_1982_film_poster.jpg",
        2002,
        "2h 10m"));
    Oldmovie.add(Movies(
        "Satte pe satta",
        "https://m.media-amazon.com/images/M/MV5BMjhhZWRhZmQtY2E0ZC00YWJlLWJlYWQtYjNjNTY2NThmZTljXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_.jpg",
        2002,
        "2h 10m"));

    ActionMovies.add(Movies(
        "Dhoom",
        "https://m.media-amazon.com/images/M/MV5BOTk3MDNhODEtMWYyMC00NmVjLTg3NzgtNjI1MzA4ZmVhMjE2XkEyXkFqcGdeQXVyNTkzNDQ4ODc@._V1_FMjpg_UX1000_.jpg",
        2016,
        "2h 10m"));
    ActionMovies.add(Movies(
        "Don New",
        "https://upload.wikimedia.org/wikipedia/en/thumb/1/14/Don_%282006_Hindi_film%29_poster.jpg/220px-Don_%282006_Hindi_film%29_poster.jpg",
        2016,
        "2h 10m"));
    ActionMovies.add(Movies(
        "War",
        "https://upload.wikimedia.org/wikipedia/en/6/6f/War_official_poster.jpg",
        2016,
        "2h 10m"));
    ActionMovies.add(Movies(
        "Jurassic World",
        "https://m.media-amazon.com/images/M/MV5BOTBjMjA4NmYtN2RjMi00YWZlLTliYTktOTIwMmNkYjYxYmE1XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg",
        2016,
        "2h 10m"));
    ActionMovies.add(Movies(
        "World War Z",
        "https://m.media-amazon.com/images/M/MV5BNDQ4YzFmNzktMmM5ZC00MDZjLTk1OTktNDE2ODE4YjM2MjJjXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_FMjpg_UX1000_.jpg",
        2016,
        "2h 10m"));
    ActionMovies.add(Movies(
        "Train to Busan",
        "https://m.media-amazon.com/images/M/MV5BMTkwOTQ4OTg0OV5BMl5BanBnXkFtZTgwMzQyOTM0OTE@._V1_FMjpg_UX1000_.jpg",
        2016,
        "2h 10m"));
    ActionMovies.add(Movies(
        "Train to Busan 2 Peninsula",
        "https://i.ebayimg.com/images/g/LLcAAOSwTStffW07/s-l500.jpg",
        2016,
        "2h 10m"));
    ActionMovies.add(Movies(
        "Ek the Tiger",
        "https://bestoftheyear.in/wp-content/uploads/2016/03/Ek_Tha_Tiger_theatrical_poster.jpg",
        2016,
        "2h 10m"));
    ActionMovies.add(Movies(
        "Don 2",
        "https://upload.wikimedia.org/wikipedia/en/thumb/d/d2/Don_2_poster.jpg/220px-Don_2_poster.jpg",
        2016,
        "2h 10m"));

    latestMovies.add(Movies(
        "pathan",
        "https://m.media-amazon.com/images/M/MV5BM2QzM2JiNTMtYjU4Ny00MDZkLTk3MmUtYTRjMzVkZGJlNmYyXkEyXkFqcGdeQXVyMTUzNTgzNzM0._V1_.jpg",
        2016,
        "2h 10m"));
    latestMovies.add(Movies(
        "Drishyam 2",
        "https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Drishyam_2_2022_film_poster.jpg/220px-Drishyam_2_2022_film_poster.jpg",
        2016,
        "2h 10m"));
    latestMovies.add(Movies(
        "Monica O my Darling",
        "https://m.media-amazon.com/images/M/MV5BYTZjNzI1ZTItOTE5Ny00MjBjLWE1NjUtOWRkZWVkOTk2OTZmXkEyXkFqcGdeQXVyOTI3MzI4MzA@._V1_.jpg",
        2016,
        "2h 10m"));
    latestMovies.add(Movies(
        "Shehzada",
        "https://upload.wikimedia.org/wikipedia/en/4/4c/Shehzada_2023_film_poster.jpg",
        2016,
        "2h 10m"));
    latestMovies.add(Movies(
        "Tu Jhoothi me Makkar",
        "https://m.media-amazon.com/images/M/MV5BNmZmYWFiYzAtY2RhMC00MDRiLWI1M2YtNzRkZGNmYTIwZDI4XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_FMjpg_UX1000_.jpg",
        2016,
        "2h 10m"));
  }
}
