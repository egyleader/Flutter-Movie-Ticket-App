
import 'package:flutter/material.dart';

import '../const.dart';

class RedRoundedActionButton extends StatelessWidget {
  RedRoundedActionButton({@required this.text,@required  this.callback });

  final String text;

  final Function callback; 

  @override
  Widget build(BuildContext context) {
    return InkWell(
     
      onTap: callback,
      child: Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.symmetric(vertical: 15.0 , horizontal:20.0),
        decoration: BoxDecoration(
            color: kActionColor , borderRadius: BorderRadius.circular(15.0)),
        child: Text(text, style: TextStyle(fontSize:18.0 , fontWeight: FontWeight.bold , color:Colors.white ,letterSpacing: 1.0)),
      ),
    );
  }
}
