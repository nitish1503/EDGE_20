import 'package:flutter/material.dart';

import 'Events.dart';
import 'ImageSelector.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryIconTheme: IconThemeData(color: Colors.white),
        brightness: Brightness.light,
        primarySwatch: Colors.grey,
        canvasColor: Colors.white,
        platform: Theme.of(context).platform,
        splashColor: Colors.black54,
        highlightColor: Colors.black12,
      ),
      home: MyHomePage(title: "EDGE'19 Home Page"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum AppBarBehavior { normal, pinned, floating, snapping }

class _MyHomePageState extends State<MyHomePage> {
  final double _appBarHeight = 256.0;
  AppBarBehavior _appBarBehavior = AppBarBehavior.pinned;

  static final List<String> covers = <String>[
    'assets/cover1.jpg',
    'assets/cover2.jpg',
    //'assets/cover3.jpg',
    'assets/cover4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {
                  })
            ],
            backgroundColor: Color(0xFFB71C1C),
            elevation: 0.0,
            expandedHeight: _appBarHeight,
            pinned: _appBarBehavior == AppBarBehavior.pinned,
            floating: _appBarBehavior == AppBarBehavior.floating ||
                _appBarBehavior == AppBarBehavior.snapping,
            snap: _appBarBehavior == AppBarBehavior.snapping,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.asset(
                    'assets/NSIcon.jpg',
                    fit: BoxFit.cover,
                    height: _appBarHeight,
                  ),
                  // This gradient ensures that the toolbar icons are distinct
                  // against the background image.
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(0.0, -0.4),
                        colors: <Color>[Color(0x60000000), Color(0x00000000)],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                DefaultTabController(
                  length: covers.length,
                  child: ImageSelector(
                    cover: covers,
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Material(
                            color: Color(0xFFB71C1C),
                            child: InkWell(
                              onTap: () {
                                print("Tapping");
                                Navigator.push(context, MaterialPageRoute(builder: (context) => EventPage()));
                              },
                              child: Container(
                                alignment: Alignment(0.0, 0.0),
                                //color: Color(0xFF1565C0),
                                //color: Color(0xFFB71C1C),
                                width:
                                    MediaQuery.of(context).size.width / 3 - 6,
                                height: 115,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.event,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        "EVENTS",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          VerticalDivider(
                            color: Theme.of(context).canvasColor,
                            width: 1.0,
                          ),
                          Material(
                            color: Color(0xFFB71C1C),
                            child: InkWell(
                              onTap: () {
                                print("Tapping");
                              },
                              child: Container(
                                alignment: Alignment(0.0, 0.0),
                                //color: Color(0xFF3F51B5),
                                //color: Color(0xFFB71C1C),
                                width:
                                    MediaQuery.of(context).size.width / 3 - 6,
                                height: 115,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.event,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        "MEGA EVENTS",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          VerticalDivider(
                            color: Theme.of(context).canvasColor,
                            width: 1.0,
                          ),
                          Material(
                            color: Color(0xFFB71C1C),
                            child: InkWell(
                              onTap: () {
                                print("Tapping");
                              },
                              child: Container(
                                alignment: Alignment(0.0, 0.0),
                                //color: Color(0xFF673AB7),
                                //color: Color(0xFFB71C1C),
                                width:
                                    MediaQuery.of(context).size.width / 3 - 6,
                                height: 115,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.event,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        "EDGE DEEDS",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                      child: Material(
                        color: Color(0xFFB71C1C),
                        child: InkWell(
                          onTap: () {
                            print("Tapping");
                          },
                          child: Container(
                            height: 75.0,
                            alignment: Alignment(0.0, 0.0),
                            //color: Color(0xFFB71C1C),
                            child: Text(
                              "HIGHLIGHTS",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        color: Color(0xFFB71C1C),
                        child: InkWell(
                          onTap: () {
                            print("Tapping");
                          },
                          child: Container(
                            height: 75.0,
                            alignment: Alignment(0.0, 0.0),
                            //color: Color(0xFFB71C1C),
                            child: Text(
                              "INTRA",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 75.0,
                        alignment: Alignment(0.0, 0.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]))
        ],
      ),
    );
  }
}
