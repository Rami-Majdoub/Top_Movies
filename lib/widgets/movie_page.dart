import 'package:flutter/material.dart';
import 'package:navigation_over_screens/widgets/movie.dart';

class MoviePage extends StatelessWidget {
  final Movie movie;

  MoviePage({this.movie});

  Widget _prop(String prop, String value) {
    return Text.rich(TextSpan(
      children: <TextSpan>[
        TextSpan(
            text: '$prop: ',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        TextSpan(text: value),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${movie.title}'),
        ),
        body: ListView(padding: EdgeInsets.all(10.0), children: <Widget>[
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                    child: Column(children: <Widget>[
                  Hero(
                      tag: movie.imageUrl,
                      child: Image.network(movie.imageUrl, height: 300)),
                  Text(movie.title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ])),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _prop('Genre', '${movie.genre}'),
                        _prop('Release date', '${movie.releaseYear}'),
                        _prop('Distributed by', '${movie.distributedBy}'),
                        _prop('Language', '${movie.language}'),
                        _prop('Rating', '${movie.rating}'),
                        _prop('Description', '${movie.fullDescription}'),
                      ]),
                ),
              ])
        ]));
  }
}
