import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigation_over_screens/widgets/movie.dart';

class MoviePage extends StatelessWidget {
  final Movie movie;

  MoviePage({this.movie});

  Widget _prop(String prop, String value) {
    return Text.rich(TextSpan(
      children: <TextSpan>[
        TextSpan(
            text: '$prop: ',
            style: GoogleFonts.suezOne(fontSize: 25)),
        TextSpan(text: value,style: GoogleFonts.contrailOne(fontSize: 20,fontWeight: FontWeight.w300)),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('${movie.title}',
            style: GoogleFonts.carterOne(fontSize: 30),
          
          ),
        ),
        body: ListView(padding: EdgeInsets.all(10.0), children: <Widget>[
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                    child: Column(children: <Widget>[
                  Hero(
                      tag: movie.imageUrl,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(movie.imageUrl, height: 300))),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    movie.title,
                    style: GoogleFonts.permanentMarker(
                        fontSize: 32, fontWeight: FontWeight.w700),
                  )
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
