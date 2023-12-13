import 'dart:convert';

class Movie {
  String title;
  String director;
  int year;

  Movie({
    required this.title,
    required this.director,
    required this.year,
  });

  Movie.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        director = json['director'],
        year = json['year'];

  Map<String, dynamic> toJson() => {
    'title': title,
    'director': director,
    'year': year,
  };
}

Future<String> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));
  final mockData = {
    'title': 'Star Wars',
    'director': 'George Lucas',
    'year': 1997,
  };
  return jsonEncode(mockData);
}

Future<Movie> getMovie(Map<String, dynamic> jsonData) async {
  await Future.delayed(Duration(seconds: 2));
  return Movie.fromJson(jsonData);
}

void main() {
  /*
  getMovieInfo()
      .then(jsonDecode)
      .then((value) => Movie.fromJson(value))
      .then((value) => print(value.director));
   */

  getMovieInfo()
      .then(jsonDecode)
      .then((value) => getMovie(value))
      .then((value) => print(value.director));
}