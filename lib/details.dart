import 'package:flutter/material.dart';
import 'globals.dart';

class Details extends StatelessWidget {
  int index;

  Details(this.index);

  @override
  Widget build(BuildContext context) {
    var ars = globals.lisst.elementAt(index);
    String img = ars["img"];
    String name = ars["name"];
    String desc = ars["description"];
    String fee = ars["fee"];
    String c1 = ars["co1"];
    String c1n = ars["co1n"];
    String c2 = ars["co2"];
    String c2n = ars["co2n"];
    String c3 = ars["co3"];
    String c3n = ars["co3n"];

    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        // SizedBox(height: 400.0,),
        Image.asset(
            img,
            fit: BoxFit.fitWidth,
            height: 300.0,
          ),
        SizedBox(
          height: 10.0,
        ),
        // Text(name, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, decorationStyle: TextDecorationStyle.solid),),
        Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: globals.accentColor,
            ),
            padding: EdgeInsets.only(left: 10.0, right: 20.0),
            child: Text(
              desc,
              softWrap: true,
              style: TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.normal,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontWeight: FontWeight.w100),
            )),
        SizedBox(
          height: 15.0,
        ),
        Container(
          child: Text("Fee: ${fee}",
              style: TextStyle(
                  fontSize: 25.0,
                  fontStyle: FontStyle.normal,
                  decoration: TextDecoration.none,
                  color: globals.secondaryColor)),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: globals.color0,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Container(
          child: Text(
              (c3 != null)
                  ? "Coordinators:\n\n${c1} : ${c1n}\n${c2} : ${c2n}\n${c3} : ${c3n}\n"
                  : "Coordinators:\n\n${c1} : ${c1n}\n${c2} : ${c2n}\n",
              style: TextStyle(
                  fontSize: 15.0,
                  fontStyle: FontStyle.normal,
                  decoration: TextDecoration.none,
                  color: globals.secondaryColor)),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: globals.primaryColor,
          ),
        ),
        SizedBox(
          height: 10.0,
        )
      ],
    );
  }
}
