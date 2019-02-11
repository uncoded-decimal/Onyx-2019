import 'package:flutter/material.dart';
import 'globals.dart';
import 'Copic.dart';
import 'decorview.dart';
import 'package:url_launcher/url_launcher.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          color: globals.primaryColor,
          padding: EdgeInsets.only(top: 20.0, bottom: 15.0),
          child: Column(
            children: <Widget>[
              Card(
                color: Colors.transparent,
                child: Text(
                  "CLUB HEADS",
                  style: TextStyle(
                      color: globals.accentColor,
                      fontSize: 25.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.overline),
                  textScaleFactor: 1.5,
                ),
                shape: RoundedRectangleBorder(),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: DecoratedView(copic(
                        "assets/images/vash-min.jpeg", "Vashisht Mattoo")),
                  ),
                  Expanded(
                    flex: 1,
                    child: DecoratedView(copic(
                        "assets/images/sanj-min.jpeg", "Sanjana Malhotra")),
                  ),
                  Expanded(
                    flex: 1,
                    child: DecoratedView(
                        copic("assets/images/yat-min.jpeg", "Yatendra Kumar")),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          color: globals.accentColor,
          padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
          child: Column(
            children: <Widget>[
              Card(
                color: Colors.transparent,
                child: Text(
                  "SPONSORSHIP COORDINATORS",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none),
                  textScaleFactor: 1.5,
                ),
                shape: RoundedRectangleBorder(),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: DecoratedView(
                        copic("assets/images/gokul-min.jpeg", "Gokul Dudani")),
                  ),
                  Expanded(
                    flex: 1,
                    child: DecoratedView(
                        copic("assets/images/anshika-min.jpeg", "Anshika")),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          color: globals.accentColor,
          padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
          child: Column(
            children: <Widget>[
              Card(
                color: Colors.transparent,
                child: Text(
                  "CREATIVE COORDINATORS",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none),
                  textScaleFactor: 1.5,
                ),
                shape: RoundedRectangleBorder(),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: DecoratedView(
                        copic("assets/images/vivek-min.jpeg", "Vivek Chauhan")),
                  ),
                  Expanded(
                    flex: 1,
                    child: DecoratedView(
                        copic("assets/images/swati-min.jpeg", "Swati Soni")),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          color: globals.accentColor,
          padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
          child: Column(
            children: <Widget>[
              Card(
                color: Colors.transparent,
                child: Text(
                  "DECOR COORDINATORS",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none),
                  textScaleFactor: 1.5,
                ),
                shape: RoundedRectangleBorder(),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: DecoratedView(copic(
                        "assets/images/tanushi-min.jpeg", "Tanushi Singhal")),
                  ),
                  Expanded(
                    flex: 1,
                    child: DecoratedView(copic(
                        "assets/images/rijula-min.jpeg", "Rijula Madhuraj")),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          color: globals.accentColor,
          padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
          child: Column(
            children: <Widget>[
              Card(
                color: Colors.transparent,
                child: Text(
                  "REGISTRATION COORDINATORS",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none),
                  textScaleFactor: 1.5,
                ),
                shape: RoundedRectangleBorder(),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: DecoratedView(copic(
                        "assets/images/shubhi-min.jpeg", "Shubhi Agarwal")),
                  ),
                  Expanded(
                    flex: 1,
                    child: DecoratedView(
                        copic("assets/images/aman-min.jpeg", "Aman Sharma")),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          color: globals.accentColor,
          padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
          child: Column(
            children: <Widget>[
              Card(
                color: Colors.transparent,
                child: Text(
                  "MARKETING COORDINATORS",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none),
                  textScaleFactor: 1.5,
                ),
                shape: RoundedRectangleBorder(),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: DecoratedView(
                        copic("assets/images/asthav-min.jpeg", "Astha Vaish")),
                  ),
                  Expanded(
                    flex: 1,
                    child: DecoratedView(copic(
                        "assets/images/abhi-min.jpeg", "Abhimanyu Rawat")),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          color: globals.accentColor,
          padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
          child: Column(
            children: <Widget>[
              Card(
                color: Colors.transparent,
                child: Text(
                  "SOCIAL MEDIA COORDINATORS",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none),
                  textScaleFactor: 1.5,
                ),
                shape: RoundedRectangleBorder(),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: DecoratedView(copic(
                        "assets/images/panchal-min.jpeg", "Parul Panchal")),
                  ),
                  Expanded(
                    flex: 1,
                    child: DecoratedView(
                        copic("assets/images/kar-min.jpeg", "Kartikey")),
                  ),
                ],
              ),
            ],
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100.0),
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(100.0)),
          ),
          margin: EdgeInsets.only(right: 2.0),
          child: Row(
            children: <Widget>[
              Card(
                color: globals.secondaryColor,
                shape: CircleBorder(
                    side:
                        BorderSide(color: globals.secondaryColor, width: 5.0)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      child: CircleAvatar(
                        backgroundColor: globals.color0,
                        radius: 100.0,
                        backgroundImage:
                            new AssetImage("assets/images/andi.png"),
                      ),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                contentPadding: EdgeInsets.only(left: 1.0, right: 1.0, top: 5.0),
                                // backgroundColor: Colors.black38,
                                content: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/images/andi.png",
                                      height: 150.0,
                                    ),
                                    Text(
                                      "ADITYA NIGAM",
                                      style: TextStyle(
                                          fontSize: 25.0,
                                          color: globals.primaryColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    FlatButton(
                                      child: const Text(
                                        "Click here for my \nLinkedIn!",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: globals.accentColor),
                                      ),
                                      onPressed: () async {
                                        _launchURL();
                                      },
                                    )
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                ),
                              );
                            });
                      },
                    )
                  ],
                ),
              ),
              Card(
                child: Text(
                  "APP \nDEVELOPER",
                  softWrap: true,
                  style: TextStyle(
                      color: globals.accentColor,
                      fontSize: 25.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.none),
                  maxLines: 2,
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.clip,
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        )
      ],
    );
  }

  void _launchURL() async {
  const url = 'https://www.linkedin.com/in/aditya-nigam-817681119';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
}
