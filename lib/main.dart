import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigation_over_screens/widgets/movie_selector.dart';

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
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Top Movies',
            style: GoogleFonts.carterOne(fontSize: 30),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
            child: Row(
              children: <Widget>[
                MovieSelector(),
              ],
            ),
          ),
        ),
      );
}
