import 'package:flutter/material.dart';

import '../model/one_movie_dm.dart';

class ShowOneMovie extends StatelessWidget {
  OneMovieDM movie;
  ShowOneMovie(
      {super.key,
      required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[800],
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Image.network(
              movie.imagePath,
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.width * 0.4,

            ),
            Column(
              children: [
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  movie.releaseDate,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  movie.author,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
