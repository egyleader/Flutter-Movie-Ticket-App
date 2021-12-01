import 'package:flutter/material.dart';

import '../const.dart';

class RedRoundedActionButton extends StatelessWidget {
  const RedRoundedActionButton({Key? key , required this.text, required this.callback}):super(key: key);

  final String text;

  final Function callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback as void Function()?,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        decoration: BoxDecoration(color: kActionColor, borderRadius: BorderRadius.circular(15.0)),
        child: Text(text,
            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 1.0)),
      ),
    );
  }
}
