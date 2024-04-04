import 'package:flutter/material.dart';
import 'package:movie/search/search_list_view.dart';

class SearchHome extends StatefulWidget {
  static const routeName = "search_home";
  List<String> allTitles;
  SearchHome({super.key,required this.allTitles});
  bool selectedWidget = true;

  @override
  State<SearchHome> createState() => _SearchHomeState();
}

class _SearchHomeState extends State<SearchHome> {
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
                setState(() {

                });
              },
              child: TextField(
                 onChanged: onQueryChanged,
                decoration: const InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    suffixIcon: Icon(
                      Icons.close_outlined,
                      color: Colors.black,
                    )),
              ),
            ),
          ),
        ),
        body: widget.selectedWidget == true ? localMoviesIcon() :  SearchListView(searchResults: searchResults));
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
  void onQueryChanged(String searchWord) {
    searchResults = widget.allTitles
        .where((title) => title!.contains(searchWord.toLowerCase()))
        .toList();
    print("==========================================");
    print(widget.allTitles);
    print(searchResults);
  }
}
