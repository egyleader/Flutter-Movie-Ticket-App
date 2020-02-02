import 'package:flutter/material.dart';
import 'package:movie_ticket_app/components/search_bar.dart';
import 'package:movie_ticket_app/const.dart';

import 'components/background_gradient_image.dart';

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * .15,
                      height: 60.0,
                      decoration: kRoundedFadedBorder,
                      child: IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            
                          }),
                    ),
                    SearchBar(hint: 'Search Movies..'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
