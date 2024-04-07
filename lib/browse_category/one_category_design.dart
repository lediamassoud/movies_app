import 'package:flutter/material.dart';

class OneCategoryDesign extends StatelessWidget {
  String imagePath;
  String title;
  OneCategoryDesign({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(image: AssetImage(imagePath),),
        Text(title, style: Theme.of(context).textTheme.titleLarge,),
      ],
    );
  }
}
