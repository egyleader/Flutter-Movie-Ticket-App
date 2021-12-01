
import 'package:flutter/material.dart';

import '../const.dart';

class CalendarDay extends StatelessWidget {
  final String? dayAbbreviation;
  final String dayNumber;
  final bool isActive;
  const CalendarDay(
      {Key? key, required this.dayNumber, this.dayAbbreviation, this.isActive = false}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        width: 50.0,
        height: 65.0,
        decoration: BoxDecoration(
            color: isActive ? kPimaryColor : null,
            borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(dayNumber,
                style: TextStyle(
                    color: isActive ? kBackgroundColor : Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold)),
            Text(
              dayAbbreviation!.toUpperCase(),
              style: TextStyle(
                color: isActive ? kBackgroundColor : Colors.white12,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
