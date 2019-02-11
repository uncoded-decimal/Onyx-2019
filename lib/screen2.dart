import 'dart:core';
import 'package:flutter/material.dart';
import 'globals.dart';
import 'details.dart';

class Screen2 extends StatelessWidget {
  Widget itemb(int index, BuildContext c) {
    var ans = globals.lisst.elementAt(index);

    return InkWell(
      child: Container(
        child: Image.asset(
            ans["img"],
            fit: BoxFit.cover,
          ),
        padding: EdgeInsets.all(5.0),
      ),
      highlightColor: globals.secondaryColor,
      splashColor: globals.secondaryColor,
      onTap: () {
        print("Tapped! ${index}");
        Navigator.of(c)
            .push(MaterialPageRoute(builder: (c) => new Details(index)));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
      crossAxisCount: 2,
      scrollDirection: Axis.vertical,
      primary: true,
      // padding: const EdgeInsets.all(10.0),
      shrinkWrap: true,
      // semanticChildCount: 4,
      children: <Widget>[
        itemb(0, context),
        itemb(1, context),
        itemb(2, context),
        itemb(3, context),
        itemb(4, context),
        itemb(5, context),
        itemb(6, context),
        itemb(7, context),
        itemb(8, context),
        itemb(9, context),
        itemb(10, context)
      ],
    ));
  }
}
