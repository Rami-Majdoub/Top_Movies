import 'package:flutter/material.dart';
import 'package:sky_engine/ui/ui.dart';
import 'package:navigation_over_screens/widgets/movie.dart';

class MoviePage extends StatelessWidget {
    final Movie movie;

    MoviePage({this.movie});
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('${movie.title}'),
      ),
      body: Container(
        child: Column(
            children: <Widget>[
                Image.network(movie.imageUrl,height: 300),
                Text(movie.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text('Genre: ${movie.genre}'),
                Text('Release date:'),
                Text(movie.releaseYear),
            ]
        ),
      ),
    );
  }
}