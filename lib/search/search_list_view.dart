import 'package:flutter/material.dart';


class SearchListView extends StatefulWidget {
  List<String> searchResults = [];
  SearchListView({super.key,required this.searchResults});

  @override
  State<SearchListView> createState() => _SearchListViewState();
}

class _SearchListViewState extends State<SearchListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreenAccent,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.searchResults.length,
              itemBuilder: (context, index) {
                return Text(widget.searchResults[index]);
              },
            ),
          ),
        ],
      ),
    );
  }




  // static List<String> allTitles = [];
  // void getTitlesList(){
  //   for(Results result in widget.resultsList){
  //     allTitles.add(result.originalTitle!.toLowerCase());
  //   }
  }

