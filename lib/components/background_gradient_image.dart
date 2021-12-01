// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BackgroundGradientImage extends StatelessWidget {
  final Image? image; 
  const BackgroundGradientImage({Key? key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: const [0.0, 1],
          colors: const [
            // Colors are easy thanks to Flutter's Colors class.
            Colors.black26,
            Colors.black,
          ],
        ),
      ),
      child: image,
    );
  }
}
