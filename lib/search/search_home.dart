import 'package:flutter/material.dart';
import 'package:movie/search/search_list_view.dart';

import '../model/one_movie_dm.dart';

class SearchHome extends StatefulWidget {
  static const routeName = "search_home";
  List<OneMovieDM> allMovies;
  SearchHome({super.key, required this.allMovies});
  bool selectedWidget = true;

  @override
  State<SearchHome> createState() => _SearchHomeState();
}

class _SearchHomeState extends State<SearchHome> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Container(
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * .2),
            height: MediaQuery.of(context).size.height * .07,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey[800],
                border: Border.all(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.height * .2)),
            child: InkWell(
              onTap: () {
                widget.selectedWidget = false;
                setState(() {});
              },
              child: TextField(
                controller:controller,
                onChanged: onQueryChanged,
                decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: IconButton(
                        onPressed: () {
                          onQueryChanged;
                        },
                        icon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        )),
                    suffixIcon: IconButton(
                      onPressed: () {
                        widget.selectedWidget = true; //movie icon
                        controller = TextEditingController();
                        setState(() {});
                      },
                      icon:
                          const Icon(Icons.close_outlined, color: Colors.black),
                    )),
              ),
            ),
          ),
        ),
        body: widget.selectedWidget == true
            ? localMoviesIcon()
            : SearchListView(searchResults: moviesSearchResults));
  }

  Widget localMoviesIcon() {
    return Center(
      child: Icon(
        Icons.local_movies,
        size: MediaQuery.of(context).size.height * .25,
        color: Colors.grey,
      ),
    );
  }

  List<String> searchResults = [];
  List<OneMovieDM> moviesSearchResults = [];
  void onQueryChanged(String searchWord) {
    widget.selectedWidget = false;
    for (OneMovieDM movieDM in widget.allMovies) {
      if (movieDM.title.contains(searchWord.toLowerCase())) {
        moviesSearchResults.add(movieDM);
      }
    }

    // searchResults = widget.allTitles
    //     .where((title) => title!.contains(searchWord.toLowerCase()))
    //     .toList();

    SearchListView(searchResults: moviesSearchResults);
    setState(() {});
    print("==========================================");
    print(widget.allMovies);
  }
}
