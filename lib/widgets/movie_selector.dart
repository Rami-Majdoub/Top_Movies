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
        'genre': 'action-adventure comedy',
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
        'genre': 'action drama',
        'rating': 5.6,
        'short_description': 'The film is based on the Chinese folklore "The Ballad of Mulan" and is a live-action adaptation of Disney\'s 1998 animated film of the same name',
        'full_description':'When the Emperor of China issues a decree that one man per family must serve in the Imperial Army to defend the country from Northern invaders, Hua Mulan, the eldest daughter of an honored warrior, steps in to take the place of her ailing father. Masquerading as a man, Hua Jun, she is tested every step of the way and must harness her inner-strength and embrace her true potential. It is an epic journey that will transform her into an honored warrior and earn her the respect of a grateful nation…and a proud father',
        'release_date': 'March 9, 2020',
        'language': 'English',
        'distributed_by': 'Walt Disney Studios Motion Pictures',
    },
    {
        'title': 'The SpongeBob Movie:\n Sponge on the Run',
        'image_url':'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTNE5quR7o845W3iG0YtBW210Noll9lDgwO5XQBXci5ggyjtVnw',
        'genre': 'live-action computer-animated adventure comedy',
        'rating': null,
        'short_description': 'A film based on the animated television series SpongeBob SquarePants.',
        'full_description':'SpongeBob and Patrick embark on a rescue mission to save Gary, who has been "snailnapped" by Poseidon, traveling to the Lost City of Atlantic City. The movie will also reveal the origin of SpongeBob and Gary\'s meeting for the first time as children.',
        'release_date': 'August 7, 2020',
        'language': 'English',
        'distributed_by': 'Paramount Pictures',
    },
    {
        'title': 'Parasite',
        'image_url':'https://upload.wikimedia.org/wikipedia/en/5/53/Parasite_%282019_film%29.png',
        'genre': 'black-comedy social-thriller',
        'rating': 8.6,
        'short_description': '',
        'full_description':'It stars Song Kang-ho, Lee Sun-kyun, Cho Yeo-jeong, Choi Woo-shik, Park So-dam, Jang Hye-jin, and Lee Jung-eun and follows the members of a poor family who scheme to become employed by a wealthy family by infiltrating their household and posing as unrelated, highly qualified individuals.',
        'release_date': 'May 21, 2019',
        'language': 'Korean',
        'distributed_by': 'CJ Entertainment',
    },
    {
        'title': 'Joker',
        'image_url':'https://upload.wikimedia.org/wikipedia/en/e/e1/Joker_%282019_film%29_poster.jpg',
        'genre': 'live-action',
        'rating': 8.5,
        'short_description': '',
        'full_description':'The film, based on DC Comics characters, stars Joaquin Phoenix as the Joker and provides a possible origin story for the character. Set in 1981, it follows Arthur Fleck, a failed stand-up comedian whose descent into insanity and nihilism inspires a violent counter-cultural revolution against the wealthy in a decaying Gotham City.',
        'release_date': 'August 31, 2019',
        'language': 'English',
        'distributed_by': 'Warner Bros. Pictures',
    },
    {
        'title': '1917',
        'image_url':'https://upload.wikimedia.org/wikipedia/en/f/fe/1917_%282019%29_Film_Poster.jpeg',
        'genre': 'war',
        'rating': 8.3,
        'short_description': '',
        'full_description':'It is based in part on an account told to Mendes by his paternal grandfather, Alfred Mendes, and tells the story of two young British soldiers during the First World War who are ordered to deliver a message calling off an attack doomed to fail soon after the German retreat to the Hindenburg Line during Operation Alberich. This message is especially important to one of the soldiers, as his brother is due to take part in the attack.',
        'release_date': 'December 4, 2019',
        'language': 'English',
        'distributed_by': 'Entertainment One, Universal Pictures, Alibaba Pictures',
    },
];
    var selectdMovie;

    @override
    Widget build(BuildContext context){
        final orientation = MediaQuery.of(context).orientation;
        
        return Expanded(child: Container( 
            //color: Colors.blue,// to visualise the unused space
            child: GridView.builder(
                itemCount: movies_response.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3,
                    childAspectRatio: (orientation == Orientation.portrait) ? 0.8 : 1,
                ),
                itemBuilder: (BuildContext context, int index){
                    
                    final Movie movie = Movie(
                        title: movies_response[index]['title'],
                        imageUrl: movies_response[index]['image_url'],
                        releaseYear: movies_response[index]['release_date'],
                        genre: movies_response[index]['genre'],
                        rating: movies_response[index]['rating'],
                        language: movies_response[index]['language'],
                        distributedBy: movies_response[index]['distributed_by'],
                        fullDescription: movies_response[index]['full_description'],
                    );

                    return GestureDetector(
                        onTap: (){
                            Navigator.push( context, MaterialPageRoute(builder: (context) => MoviePage(movie: movie)) );
                        },
                        child: Center(
                            child: Container(
                                padding: EdgeInsets.all(5.0),
                                color: Colors.white,
                                child: Column(
                                children: <Widget>[
                                    Image.network(movie.imageUrl, width: 150, height: 150),
                                    Text(movie.title),
                                ]
                                ),
                            )
                        ),
                    );
                }
            )
        )
        );
    }
}
