import 'package:flutter/material.dart';
import 'package:movie/browse_category/one_category_design.dart';
import 'package:movie/model/results.dart';

class BrowseCategory extends StatelessWidget {
  const BrowseCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Browse Category",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
            child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15),
          itemBuilder: (BuildContext context, int index) {
            OneCategoryDesign(title: 'action', imagePath: 'assets/images/logo.png',);
          },

        ))
      ],
    );
  }
}
