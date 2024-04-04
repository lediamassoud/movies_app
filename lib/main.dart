import 'package:flutter/material.dart';
import 'package:movie/home/home.dart';
import 'package:movie/search/search_home.dart';

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
      initialRoute: SearchHome.routeName,
      routes: {
        Home.routeName: (_) => Home(),
        SearchHome.routeName: (_) => SearchHome(allTitles: [])
      },
    );
  }
}

