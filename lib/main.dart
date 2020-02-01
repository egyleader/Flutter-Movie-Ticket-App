import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Ticket app ',
      debugShowCheckedModeBanner: false,
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
    return Container(
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.0, 0.9],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Colors.transparent,
            Colors.black,
          ],
        ),
      ),
      child: Image.network(
        'https://mir-s3-cdn-cf.behance.net/project_modules/1400/c58b4681277211.5cfa6e54a6d3d.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
