import 'package:flutter/material.dart';

import '../const.dart';

class BuyTicket extends StatelessWidget {
  var title;

  BuyTicket(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * .15,
                    height: 60.0,
                    decoration: kRoundedFadedBorder,
                    child: IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_left,
                          size: 28.0,
                        ),
                        onPressed: () {}),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .75,
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1.5,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              width: MediaQuery.of(context).size.width * .9,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  topLeft: Radius.circular(25.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      CalendarDay(
                        dayNumber: '9',
                        dayAbbreviation: 'TH',
                      ),
                      CalendarDay(
                        dayNumber: '10',
                        dayAbbreviation: 'FR',
                      ),
                      CalendarDay(
                        dayNumber: '11',
                        dayAbbreviation: 'SA',
                      ),
                      CalendarDay(
                        dayNumber: '12',
                        dayAbbreviation: 'SU',
                        isActive: true,
                      ),
                      CalendarDay(
                        dayNumber: '13',
                        dayAbbreviation: 'MO',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  ShowTime(
                    time: '11:00',
                    price: 5,
                    isActive: false,
                  ),
                  ShowTime(
                    time: '12:30',
                    price: 10,
                    isActive: true,
                  ),
                  ShowTime(
                    time: '12:30',
                    price: 10,
                    isActive: false,
                  ),
                  ShowTime(
                    time: '12:30',
                    price: 10,
                    isActive: false,
                  ),
                  ShowTime(
                    time: '12:30',
                    price: 10,
                    isActive: false,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.tv,
                    color: kPimaryColor,
                    size: 25.0,
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Star Cineplex Bangladesh', style: kMainTextStyle),
                      Text('panthapath , 1205 Dhaka, Bangladesh',
                          style:
                              TextStyle(color: Colors.white30, fontSize: 18.0)),
                      SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          Text('2D', style: kMainTextStyle),
                          SizedBox(width: 10.0),
                          Text('3D',
                              style: TextStyle(
                                  color: Colors.white30,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                  SizedBox(width: 20.0),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 30.0,
                    color: Colors.white38,
                  )
                ],
              ),
            ),
            Center(child: Image.asset('assets/images/screen.png')),
          ],
        ),
      ),
    );
  }
}

class ShowTime extends StatelessWidget {
  final bool isActive;

  final int price;

  final String time;

  ShowTime(
      {@required this.time,
      @required this.price,
      @required this.isActive = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      decoration: BoxDecoration(
          border: Border.all(color: isActive ? kPimaryColor : Colors.white12),
          borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          Text(
            time,
            style: TextStyle(
                color: isActive ? kPimaryColor : Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          Text('From \$$price',
              style: TextStyle(color: Colors.white, fontSize: 18.0))
        ],
      ),
    );
  }
}

// todo: make this a component
class CalendarDay extends StatelessWidget {
  final String dayAbbreviation;
  final String dayNumber;
  final bool isActive;
  CalendarDay(
      {@required this.dayNumber, this.dayAbbreviation, this.isActive = false});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        width: 50.0,
        height: 80.0,
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
              dayAbbreviation.toUpperCase(),
              style: TextStyle(
                color: isActive ? kBackgroundColor : Colors.white12,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}






