import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Top Movies',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text('Top Movies'),
        ),
        body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
          child: Column(
            children: <Widget>[
              // version 1
            //   RaisedButton(
            //     onPressed: () =>
            //     Navigator.push( context, MaterialPageRoute(builder: (context) => MulanPage()) ),
            //     child: Column(
            //         children: <Widget>[
            //             Image.network('https://upload.wikimedia.org/wikipedia/en/1/17/Mulan_%282020_film%29_poster.jpg', 
            //                 width: 200, height: 200),
            //             Text('Mulan')
            //         ]
            //     ),
            //   ),

            // version 2
              RaisedButton(
                onPressed: () =>
                Navigator.push( context, MaterialPageRoute(builder: (context) => SonicPage()) ),
                child: MovieScreen(movie: 
                Movie(
                    imageUrl: 'https://upload.wikimedia.org/wikipedia/en/c/c1/Sonic_the_Hedgehog_poster.jpg',
                    title: 'Sonic (2020)')),
              ),

              RaisedButton(
                onPressed: () =>
                Navigator.push( context, MaterialPageRoute(builder: (context) => MulanPage()) ),
                child: MovieScreen(movie: 
                Movie(
                    imageUrl: 'https://upload.wikimedia.org/wikipedia/en/1/17/Mulan_%282020_film%29_poster.jpg',
                    title: 'Mulan (2020)')),
              ),
            ],
          ),
        ),),
      );
}
class Movie {
  final String imageUrl;
  final String title;

  Movie({this.imageUrl, this.title});
}

class MovieScreen extends StatelessWidget {
    final Movie movie;

    MovieScreen({this.movie});
    
    @override
    Widget build(BuildContext context) {
    var value1 = movie.imageUrl;
    var value2 = movie.title;

    return Container(
        child: Column(
            children: <Widget>[
                Image.network(value1, width: 200, height: 200),
                Text(value2),
            ]
        ),
    );
    }
}

class SonicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sonic (2020)'),
      ),
      body: Container(
        child: Column(
            children: <Widget>[
                Row(
                    children: <Widget>[
                        Image.network('https://upload.wikimedia.org/wikipedia/en/c/c1/Sonic_the_Hedgehog_poster.jpg',
                        height: 300),
                        Column(
                            children: <Widget>[
                                Text('Sonic'),
                                Text('Genre: Comedy'),
                                Text('Release year: 2020'),

                            ]
                        )
                    ]
                )
            ]
        ),
      ),
    );
  }
}

class MulanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mulan (2020)'),
      ),
      body: Container(
        child: RaisedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Back'),
        ),
      ),
    );
  }
}