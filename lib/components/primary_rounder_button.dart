import 'package:flutter/material.dart';

import '../const.dart';

class PrimaryRoundedButton extends StatelessWidget {
  final Function callback;

  final double margin;

  final String  text;

  PrimaryRoundedButton(
      {@required this.callback, @required this.text, this.margin = 10});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              color: kPimaryColor, borderRadius: BorderRadius.circular(15.0)),
          child: Row(
            children: <Widget>[
              Text(text,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('/10',
                  style: TextStyle(
                    fontSize: 12,
                  )),
            ],
          )),
    );
  }
}
