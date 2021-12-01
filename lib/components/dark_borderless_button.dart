
import 'package:flutter/material.dart';

import '../const.dart';

class DarkBorderlessButton extends StatelessWidget {
  const DarkBorderlessButton({Key? key, required this.text,required  this.callback }) : super(key: key);

  final String text;

  final Function callback; 

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback as void Function()?,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.black54, borderRadius: BorderRadius.circular(15.0)),
        child: Text(text, style: kMainTextStyle),
      ),
    );
  }
}
