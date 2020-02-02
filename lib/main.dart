import 'package:flutter/material.dart';
import 'package:movie_ticket_app/components/red_rounded_action_button.dart';
import 'package:movie_ticket_app/const.dart';
import 'components/background_gradient_image.dart';
import 'components/dark_borderless_button.dart';
import 'components/movie_app_bar.dart';
import 'components/primary_rounder_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Ticket app ',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BackgroundGradientImage(
            image: Image.network(
              'https://mir-s3-cdn-cf.behance.net/project_modules/1400/c58b4681277211.5cfa6e54a6d3d.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10.0)),
                MovieAppBar(),
                Padding(padding: EdgeInsets.symmetric(vertical: 50.0)),
                Text(
                  'NEW.MOVIE',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset('assets/images/logo.png'),
                Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    DarkBorderlessButton(
                      text: 'Popular with Friends',
                      callback: () {},
                    ),
                    DarkBorderlessButton(text: '18+', callback: () {}),
                    PrimaryRoundedButton(
                      text: '8.7',
                      callback: () {},
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        '2019',
                        style: kSmallMainTextStyle,
                      ),
                      Text('•', style: kPromaryColorTextStyle),
                      Text('Crime, Drama, Thriller',
                          style: kSmallMainTextStyle),
                      Text('•', style: kPromaryColorTextStyle),
                      Text('DataSat, Dolby Digital',
                          style: kSmallMainTextStyle),
                    ],
                  ),
                ),
                Image.asset('assets/images/divider.png'),
                RedRoundedActionButton(text: 'BUY TICKET', callback: () {}),
                Expanded(
                    child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    MovieCard(
                      title: 'JOKER',
                      imageLink:
                          'https://mir-s3-cdn-cf.behance.net/project_modules/1400/c58b4681277211.5cfa6e54a6d3d.jpg',
                    ),
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  String imageLink;

  String title;

  Function callBack;

  MovieCard({@required this.title, @required this.imageLink , @required this.callBack});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: callBack,
                  child: SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(imageLink),
            ),
          ),
        ),
        Text(title, style: kMovieNameStyle)
      ],
    );
  }
}
