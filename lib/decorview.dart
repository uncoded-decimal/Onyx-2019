import 'package:flutter/material.dart';
import 'Copic.dart';
import 'globals.dart';

class DecoratedView extends StatefulWidget {
  copic thi;
  DecoratedView(this.thi);

  @override
  _DecoratedViewState createState() {
    print(thi.assetL);
    return _DecoratedViewState(thi);
  }
}

class _DecoratedViewState extends State<DecoratedView> {
  bool clicked = false;
  copic thi;

  _DecoratedViewState(this.thi);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: clicked
          ? Column(
              children: <Widget>[
                Image.asset(
                  thi.assetL,
                  fit: BoxFit.cover,
                  // height: 200.0,
                  width: 150.0,
                ),
                Card(
                  color: globals.accentColor,
                  child: Text(
                    thi.name,
                    locale: Locale.fromSubtags(),
                    textAlign: TextAlign.center,
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 20.0, 
                        color: globals.primaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            )
          : Image.asset(
              thi.assetL,
              fit: BoxFit.cover,
              height: 200.0,
              width: 150.0,
            ),
      onTap: () {
        setState(() {
          clicked = clicked ? false : true;
        });
      },
      // onTapDown: (tap){
      //   tap.
      // },
    );
  }
}
