import 'package:flutter/material.dart';
import 'package:onyx/splashscreen.dart';
import 'globals.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';
import 'screen4.dart';
import 'package:video_player/video_player.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    if(Navigator.canPop(context))
      return MaterialApp(
      title: 'Onyx',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Onyx'),
      debugShowCheckedModeBanner: false,
      // routes: <String, WidgetBuilder>{
      //   "/splash": (BuildContext context) => new SplashScreen(),
      // },
      // initialRoute: "/splash",
    );

    return MaterialApp(
      title: 'Onyx',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Onyx'),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/splash": (BuildContext context) => new SplashScreen(),
      },
      initialRoute: "/splash",
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
 
 VideoPlayerController _controller;
 
    @override
    void initState(){
      super.initState();

      
      var dataSource = "assets/videos/bkgvid.mp4";
      _controller = VideoPlayerController.asset(dataSource);
      _controller.initialize().then((_){
        setState(() {
        });
      });
      _controller.setLooping(true);      
      _controller.play();

    }
 
 
  @override
  Widget build(BuildContext context) {
    TabController _tabController = new TabController(
      length: 4,
      vsync: this,
    );

    return new Scaffold(
      body:Stack(
        children: <Widget>[
          Container(color: Colors.black,),
          _controller.value.initialized
                 ? AspectRatio(
                     aspectRatio: 1.0,
                     child: VideoPlayer(_controller),
                   )
                 : Container(
                     color: Colors.black,
                   ),
          TabBarView(
        controller: _tabController,
        children: <Widget>[
    
          Container(
            child: Screen1(),
          ),
          Container(
            child: Screen2(),
          ),
          Container(
            child: Screen3(),
          ),
          Container(
            child: Screen4(),
            
          ),
        ],
      )
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        child: Icon(
          Icons.play_arrow,
          color: globals.accentColor,
          size: 50.0,
        ),
        shape: CircleBorder(
          side: BorderSide(width: 5.0, color: globals.primaryColor),
        ),
        backgroundColor: Color.fromRGBO(0, 0, 0, 0),
        onPressed: () {
          int current_index = _tabController.index;
          _tabController
              .animateTo((current_index != 3) ? current_index + 1 : 0);
        },
      ),
    );


  }
}
