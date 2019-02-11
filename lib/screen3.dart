import 'package:flutter/material.dart';
import 'globals.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            if ((index >= 3)) {
              return null;
            } else {
              return Column(
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Card(
                    color: Colors.transparent,
                    child: Text(
                      "OUR SPONSORS",
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w900,
                          color: globals.secondaryColor,
                          decoration: TextDecoration.combine([
                            TextDecoration.overline,
                            TextDecoration.underline
                          ]),
                          decorationStyle: TextDecorationStyle.dashed),
                    ),
                  ),
                  Container(
                    height: 150.0,
                    color: globals.primaryColor,
                    child: Image.asset("assets/images/360a-min.jpeg"),
                  ),
                  new Container(
                    color: Colors.redAccent,
                    height: 150.0,
                    child: Image.asset("assets/images/soc-min.jpg"),
                  ),
                  new Container(
                    width: 200.0,
                    color: Colors.teal,
                    height: 150.0,
                    child: Image.asset("assets/images/apt.png"),
                  )
                ],
              );
            }
          }, childCount: 1),
        ),
      ],
    );
  }
}
