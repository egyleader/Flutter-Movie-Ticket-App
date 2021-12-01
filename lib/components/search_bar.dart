
import 'package:flutter/material.dart';
import 'package:movie_ticket_app/const.dart';

class SearchBar extends StatelessWidget {
 final  String? hint ;

  const SearchBar({Key? key , this.hint}) : super(key: key);
  


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      width: MediaQuery.of(context).size.width * .70,
      height: 60.0,
      decoration: kRoundedFadedBorder,
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextField(
            // ignore: prefer_const_constructors
            style: TextStyle(fontSize: 22, color: Colors.white),
            maxLines: 1,
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: hint,
                labelStyle: const TextStyle(color: Colors.white)),
          )),
          IconButton(
              icon: const Icon(
                Icons.search,
                size: 28.0,
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
