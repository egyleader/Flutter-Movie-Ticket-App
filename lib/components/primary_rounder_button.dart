import 'package:flutter/material.dart';

import '../const.dart';

class PrimaryRoundedButton extends StatelessWidget {
  final Function callback;

  final double margin;

  final String  text;

  const PrimaryRoundedButton(
      { Key? key , required this.callback, required this.text, this.margin = 10}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback as void Function()?,
      child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              color: kPimaryColor, borderRadius: BorderRadius.circular(15.0)),
          child: Row(
            children: <Widget>[
              Text(text,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const Text('/10',
                  style: TextStyle(
                    fontSize: 12,
                  )),
            ],
          )),
    );
  }
}
