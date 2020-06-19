import 'package:flutter/material.dart';
import 'package:navigation_over_screens/widgets/movie.dart';
import 'package:navigation_over_screens/widgets/movie_page.dart';

class MovieSelector extends StatefulWidget{
    @override
    _MovieSelectorState createState() => _MovieSelectorState();
}

class _MovieSelectorState extends State<MovieSelector>{

var movies_response = [
    {
        'title': 'Sonic the Hedgehog',
        'image_url': 'https://upload.wikimedia.org/wikipedia/en/c/c1/Sonic_the_Hedgehog_poster.jpg',
        'genre': ['action-adventure', 'comedy'],
        'rating': 6.6,
        'short_description': 'A film based on the video game franchise',
        'full_description':'In the film, Sonic teams up with local town sheriff Tom Wachowski to find his lost rings and escape Dr. Robotnik.',
        'release_date': 'January 25, 2020',
        'language': 'English',
        'distributed_by': 'Paramount Pictures',
    },
    {
        'title': 'Mulan',
        'image_url':'https://upload.wikimedia.org/wikipedia/en/1/17/Mulan_%282020_film%29_poster.jpg',
        'genre': ['action', 'drama'],
        'rating': 5.6,
        'short_description': 'The film is based on the Chinese folklore "The Ballad of Mulan" and is a live-action adaptation of Disney\'s 1998 animated film of the same name',
        'full_description':'When the Emperor of China issues a decree that one man per family must serve in the Imperial Army to defend the country from Northern invaders, Hua Mulan, the eldest daughter of an honored warrior, steps in to take the place of her ailing father. Masquerading as a man, Hua Jun, she is tested every step of the way and must harness her inner-strength and embrace her true potential. It is an epic journey that will transform her into an honored warrior and earn her the respect of a grateful nation…and a proud father',
        'release_date': 'March 9, 2020',
        'language': 'English',
        'distributed_by': 'Walt Disney Studios Motion Pictures',
    },
];
    var selectdMovie;

    @override
    Widget build(BuildContext context){
        return Container(
            height: 500, 
            color: Colors.blue,
            child: ListView.builder(
                itemCount: movies_response.length,
                itemBuilder: (BuildContext context, int index){
                    
                    final Movie movie = Movie(
                        title: movies_response[index]['title'],
                        imageUrl: movies_response[index]['image_url'],
                        releaseYear: movies_response[index]['release_date'],
                        genre: movies_response[index]['genre'],
                    );

                    return GestureDetector(
                        onTap: (){
                            Navigator.push( context, MaterialPageRoute(builder: (context) => MoviePage(movie: movie)) );
                        },
                        child: Container(
                        color: Colors.white,
                        child: Column(
                            children: <Widget>[
                                Image.network(movie.imageUrl, width: 200, height: 200),
                                Text(movie.title),
                            ]
                        ),
                        )
                    );
                }
            )
        );
    }
}