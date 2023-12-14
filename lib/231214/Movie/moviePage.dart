import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dates.dart';
import 'result.dart';
import 'movie.dart';

class MoviePage {
  Dates? dates;
  int? page;
  List<Result>? results;
  int? totalPages;
  int? totalResults;

  MoviePage(
      {this.dates,
        this.page,
        this.results,
        this.totalPages,
        this.totalResults});

  MoviePage.fromJson(Map<String, dynamic> json) {
    dates = json['dates'] != null ? Dates.fromJson(json['dates']) : null;
    page = json['page'];
    if (json['results'] != null) {
      results = <Result>[];
      json['results'].forEach((v) {
        results!.add(Result.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (dates != null) {
      data['dates'] = dates!.toJson();
    }
    data['page'] = page;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    data['total_pages'] = totalPages;
    data['total_results'] = totalResults;
    return data;
  }
}

Future<MoviePage> getMoviePage({int pageNumber = 1}) async {
  // final uri = Uri(
  //   scheme: 'https',
  //   host: 'api.themoviedb.org',
  //   path: '/3/movie/upcoming',
  //   queryParameters: {
  //     'api_key': 'a64533e7ece6c72731da47c9c8bc691f',
  //     'language': 'ko-KR',
  //     'page': '$pageNumber'
  //   },
  // );
  //
  // final response = await http.get(Uri.parse(uri.toString()));
  final response = await http.get(Uri.parse('https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
  return MoviePage.fromJson(jsonDecode(response.body));
}

Future<Movie> getMovie({int movieNumber = 901362}) async {
  final uri = Uri(
    scheme: 'https',
    host: 'api.themoviedb.org',
    path: '/3/movie/$movieNumber',
    queryParameters: {
      'api_key': 'a64533e7ece6c72731da47c9c8bc691f',
      'language': 'ko-KR',
      'page': '1'
    },
  );

  final response = await http.get(Uri.parse(uri.toString()));
  // final response = await http.get(Uri.parse('https://api.themoviedb.org/3/movie/901362?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
  return Movie.fromJson(jsonDecode(response.body));
}

void main() async {
  final moviePage = await getMoviePage();
  print(moviePage.toJson());

  final movie = await getMovie();
  print(movie.toJson());
}