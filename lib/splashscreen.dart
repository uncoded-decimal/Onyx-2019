import 'package:flutter/material.dart';
import 'globals.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 5),
      ()=> Navigator.pop(context)
    );

    return Container(
      color: globals.accentColor,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(
            "assets/images/onyx.png",
            color: globals.accentColor,
            colorBlendMode: BlendMode.colorBurn,
          ),
          Text(
            "2019",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                color: globals.color0,
                decoration: TextDecoration.none),
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.cover,
                          child: Image.asset(
                "assets/images/team.png",
                fit: BoxFit.contain,
                colorBlendMode: BlendMode.difference,
                height: 250.0,
              ),
            ),
            flex: 1,
          )
        ],
      ),
    );
  }
}
