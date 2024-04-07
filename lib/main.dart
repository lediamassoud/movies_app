import 'package:flutter/material.dart';
import 'package:movie/app_theme.dart';
import 'package:movie/home/home.dart';
import 'package:movie/search/search_home.dart';
import 'package:movie/show_movies/show_movies.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: ShowMovies.routeName,
      routes: {
        Home.routeName: (_) => const Home(),
        ShowMovies.routeName: (_) => ShowMovies(),
        //SearchHome.routeName: (_) => SearchHome(allTitles: [])
      },
    );
  }
}

