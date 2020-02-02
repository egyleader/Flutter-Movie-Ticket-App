
import 'package:flutter/material.dart';
import 'package:movie_ticket_app/const.dart';

class SearchBar extends StatelessWidget {
  String hint ;
  
  SearchBar({this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      width: MediaQuery.of(context).size.width * .70,
      height: 60.0,
      decoration: kRoundedFadedBorder,
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextField(
            style: TextStyle(fontSize: 22, color: Colors.white),
            maxLines: 1,
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: hint,
                labelStyle: TextStyle(color: Colors.white)),
          )),
          IconButton(
              icon: Icon(
                Icons.search,
                size: 28.0,
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
