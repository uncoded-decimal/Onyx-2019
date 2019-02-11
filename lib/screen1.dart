import 'package:flutter/material.dart';
import 'globals.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      child: Center(
        child: Text(
          globals.intro,
          textAlign: TextAlign.center,
          textScaleFactor: 01.4,
          style: TextStyle(
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: globals.secondaryColor,
              fontWeight: FontWeight.w400,
              color: Colors.white),
        ),
      ), duration: Duration(milliseconds: 2),
      curve: Curves.easeIn,
    );
  }
}
