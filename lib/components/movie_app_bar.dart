
import 'package:flutter/material.dart';
import 'package:movie_ticket_app/components/search_bar.dart';
import 'package:movie_ticket_app/const.dart';

class MovieAppBar extends StatelessWidget {
  const MovieAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        // todo: convert this to it's own widget 
        Container(
          width: MediaQuery.of(context).size.width * .15,
          height: 60.0,
          decoration: kRoundedFadedBorder,
          child:
              IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        ),
        const SearchBar(hint: 'Search Movies..'),
      ],
    );
  }
}
