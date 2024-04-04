import 'package:flutter/material.dart';
import 'package:movie/api/api_manager.dart';
import 'package:movie/search/search_home.dart';
import 'package:movie/search/search_list_view.dart';

import '../model/results.dart';

class ShowMovies extends StatelessWidget {
  ShowMovies({super.key});

  late var resultsList;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiManager.loadPopularList(),
      builder: (context, snapshot) {
        //builder return widget
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.grey,
            ),
          );
        } else if (snapshot.hasError) {
          return Column(
            children: [
              const Text("some thing went wrong"),
              ElevatedButton(onPressed: () {}, child: const Text("try again"))
            ],
          );
        } else if (snapshot.data == null) {
          return const Text("some thing went wrong, can not find data ");
        } else {
          //when data return right
          resultsList = snapshot.data!.results;
          return SearchHome(allTitles: getTitlesList()!);
        }
      },
    );
  }

  List<String> getTitlesList() {
    List<String> allTitles = [];
    print("------------------------------------");
    print(resultsList);
    for (Results result in resultsList) {
      allTitles.add(result.originalTitle!.toLowerCase());
    }
    return allTitles;
  }
}