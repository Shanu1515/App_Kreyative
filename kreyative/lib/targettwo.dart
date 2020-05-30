import 'package:flutter/material.dart';
import 'package:kreyative/videopage.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';
import './main.dart';
import 'package:getflutter/getflutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
//import 'package:KriyativeEd/authenticate.dart';
import 'package:provider/provider.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:add_thumbnail/add_thumbnail.dart';

class Targettwo extends StatefulWidget {
  @override
  _TargettwoState createState() => _TargettwoState();
}

class _TargettwoState extends State<Targettwo>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

//   AuthService _auth= new AuthService();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.deepPurple[700]),
        ),
        title: Text("Course 1",
            style: TextStyle(
                color: Colors.deepPurple[600], fontWeight: FontWeight.w800)),
        centerTitle: true,
        backgroundColor: Colors.purple[100],
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () async {
              //await _auth.signOut();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white70,
              height: h * 0.014,
            ),
            Container(
              color: Colors.white70,
              child: TabBar(
                  controller: _tabController,
                  indicatorWeight: 5.0,
                  indicatorColor: Colors.deepPurple,
                  tabs: [
                    badge(
                      h * 0.085, w * 0.2, "Videos", Icons.videocam,
                      // (){
                      //    setState(() {
                      //      ic["v"]=Colors.purple[700];
                      //    });
                      //  }
                    ),
                    badge(
                      h * 0.085, w * 0.2, "Notes", Icons.attach_file,
                      //  (){
                      //    setState(() {
                      //      ic["v"]=Colors.purple[700];
                      //    });
                      //  }
                    ),
                    badge(
                      h * 0.085, w * 0.2, "Challenge", Icons.assignment,
                      //  (){
                      //    setState(() {
                      //      ic["v"]=Colors.purple[700];
                      //    });
                      //  }
                    ),
                    badge(
                      h * 0.085, w * 0.2, "Analysis", Icons.track_changes,
                      //  (){
                      //    setState(() {
                      //      ic["v"]=Colors.purple[700];
                      //    });
                      //  }
                    ),
                  ]),
            ),
            Container(
              height: h * 0.901,
              color: Colors.grey[400],
              child: TabBarView(controller: _tabController, children: [
                Video(),
                cardi(),
                testSeries(),
                Trac(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

Map<String, Color> ic = {
  "v": Colors.deepOrange[600],
  "n": Colors.deepOrange[600],
  "t": Colors.deepOrange[600],
  "ta": Colors.deepOrange[600]
};
Widget badge(hei, wid, str, iconn) {
  return Column(
    children: <Widget>[
      Container(
        height: hei,
        width: wid,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
        child: Icon(iconn, color: Colors.deepOrange[600], size: 45),
      ),
      Text(
        str,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ],
  );
}

Widget cardi() {
  final List<String> textdata = <String>[
    'Announcement',
    'Downloads',
    'Resources',
    'Share'
  ];
  final List<IconData> ic = <IconData>[
    Icons.announcement,
    Icons.file_download,
    Icons.import_contacts,
    Icons.share
  ];
  return ListView.builder(
      itemCount: textdata.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 5),
          child: Card(
            color: Colors.white,
            child: ExpansionTile(
              leading: Icon(
                (ic[index]),
                size: 37,
                color: Colors.deepPurple,
              ),
              title: Text('${textdata[index]}'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // Text("",style:TextStyle(color: Colors.grey)),
                  Text("Extra Information",
                      style: TextStyle(color: Colors.grey, fontSize: 14.0)),
                ],
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              children: <Widget>[Text("Hi")],
            ),
          ),
        );
      });
}

class Trac extends StatefulWidget {
  @override
  _TracState createState() => _TracState();
}

class _TracState extends State<Trac> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(2, 5, 0, 2),
            child: Card(
              margin: EdgeInsets.only(right: 5, left: 5),

              //shadowColor: Colors.grey[900],
              color: Colors.white,
              child: ExpansionTile(
                //leading: Icon(Icons.assignment,size: 20,color: Colors.deepPurple,),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.assignment,
                      size: 22,
                      color: Colors.deepPurple,
                    ),
                    Column(
                      children: <Widget>[
                        Text("Chapter Name", style: TextStyle(fontSize: 11)),
                        // Text("Practice",style:TextStyle(color: Colors.grey,fontSize: 10.0)),
                        Text("No. of Questions",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 8.0)),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.pool),
                        Text(
                          "Basic",
                          style:
                              TextStyle(color: Colors.grey[700], fontSize: 8),
                        )
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 14,
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.rowing),
                        Text(
                          "Intermediate",
                          style:
                              TextStyle(color: Colors.grey[700], fontSize: 8),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 15,
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.beach_access),
                        Text(
                          "Advanced",
                          style:
                              TextStyle(color: Colors.grey[700], fontSize: 8),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.keyboard_arrow_down),
                      iconSize: 5.0,
                      onPressed: () {
                        setState(() {
                          bool isPressed = true;
                          Widget build() {
                            if (isPressed) {
                              return Container(
                                height: h * 0.2,
                                width: w * 0.8,
                                child: Row(
                                  children: [
                                    Icon(Icons.account_circle),
                                    Column(
                                      children: [
                                        Row(
                                          children: <Widget>[
                                            Text("Performance"),
                                            LinearPercentIndicator(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.4,
                                              lineHeight: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.004,
                                              progressColor:
                                                  Colors.deepOrange[700],
                                              percent: 0.7,
                                              backgroundColor: Colors.grey,
                                              animation: true,
                                              animationDuration: 2000,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              children: [],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            RaisedButton(
                                              onPressed: () {},
                                              child: Row(
                                                children: [
                                                  Icon(Icons.help),
                                                  Text("Help")
                                                ],
                                              ),
                                            ),
                                            RaisedButton(
                                              onPressed: () {},
                                              child: Row(
                                                children: [
                                                  Icon(Icons.restore),
                                                  Text("Resume")
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            }
                          }
                        });
                      },
                    ),
                  ],
                ),
                children: <Widget>[
                  GFProgressBar(
                    percentage: 0.8,
                    lineHeight: 20,
                    alignment: MainAxisAlignment.spaceBetween,
                    child: const Text(
                      '80%',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    leading: Text(
                      "Performance",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    backgroundColor: Colors.black26,
                    progressBarColor: Colors.deepOrange,
                  ),
                  Row(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              MdiIcons.checkboxMarkedCircleOutline,
                              color: Colors.deepPurple,
                            ),
                            onPressed: () {},
                          ),
                          Text('Attempt\n 10 ')
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(MdiIcons.checkCircle,
                                color: Colors.deepPurple),
                            onPressed: () {},
                          ),
                          Text('Correct\n 8 ')
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(MdiIcons.speedometer,
                                color: Colors.deepPurple),
                            onPressed: () {},
                          ),
                          Text('Accuracy\n 80% ')
                        ],
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  ),
                  Row(
                    children: [
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [Icon(Icons.help), Text("Help")],
                        ),
                      ),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [Icon(Icons.restore), Text("More info")],
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  ),
                ],
                //trailing: IconButton(icon:Icon(Icons.keyboard_arrow_down),onPressed: (){},
              ),
            ),
          );
        });
  }
}

Widget track() {
  return ListView.builder(
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(2, 5, 5, 2),
          child: Card(
            //shadowColor: Colors.grey[900],
            color: Colors.white,
            child: ExpansionTile(
              //leading: Icon(Icons.assignment,size: 20,color: Colors.deepPurple,),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.assignment,
                    size: 22,
                    color: Colors.deepPurple,
                  ),
                  Column(
                    children: <Widget>[
                      Text("Chapter Name", style: TextStyle(fontSize: 11)),
                      // Text("Practice",style:TextStyle(color: Colors.grey,fontSize: 10.0)),
                      Text("No. of Questions",
                          style: TextStyle(color: Colors.grey, fontSize: 8.0)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.pool),
                      Text(
                        "Basic",
                        style: TextStyle(color: Colors.grey[700], fontSize: 8),
                      )
                    ],
                  ),
                  Icon(Icons.arrow_forward),
                  Column(
                    children: <Widget>[
                      Icon(Icons.rowing),
                      Text(
                        "Intermediate",
                        style: TextStyle(color: Colors.grey[700], fontSize: 8),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward),
                  Column(
                    children: <Widget>[
                      Icon(Icons.beach_access),
                      Text(
                        "Advanced",
                        style: TextStyle(color: Colors.grey[700], fontSize: 8),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.keyboard_arrow_down),
                    onPressed: () {
                      // return Container(

                      // );
                    },
                  ),
                ],
              ),
              children: <Widget>[],
              //trailing: IconButton(icon:Icon(Icons.keyboard_arrow_down),onPressed: (){},
            ),
          ),
        );
      });
}

Widget testSeries() {
  return ListView.builder(
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(2, 5, 5, 2),
          child: Card(
            //shadowColor: Colors.grey[900],
            color: Colors.white,
            child: ExpansionTile(
              //leading: Icon(Icons.assignment,size: 20,color: Colors.deepPurple,),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(
                            Icons.assignment,
                            size: 22,
                            color: Colors.deepPurple,
                          ),
                          Icon(
                            Icons.star_border,
                            size: 22,
                            color: Colors.deepPurple,
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text("Chapter Name", style: TextStyle(fontSize: 12)),
                          Text("Test Yourself",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 10.0)),
                          Text("No. of Questions",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 10.0)),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 1.0,
                    color: Colors.black,
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(
                            Icons.person_outline,
                            size: 30,
                            color: Colors.deepPurple,
                          ),
                          // Icon(Icons.star_border,size: 22,color: Colors.deepPurple,),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text("Challenge", style: TextStyle(fontSize: 13)),
                          Text("Your friends",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 10.0)),
                          Text("earn 150x👑",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 10.0)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              children: <Widget>[
                Row(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            MdiIcons.accountCowboyHat,
                            size: 40,
                            color: Colors.deepPurple,
                          ),
                          onPressed: () {},
                        ),
                        Text('User 1\nScore:8732 ')
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('🏆87\n 👑430 \n🏅782'),
                      ],
                    ),
                    Text(
                      "VS",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[Text('🏆88\n 👑432 \n🏅666')],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(MdiIcons.accountTie,
                              size: 40, color: Colors.deepOrange),
                          onPressed: () {},
                        ),
                        Text('User 2\nScore:8888 ')
                      ],
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                Row(
                  children: [
                    RaisedButton(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [Icon(Icons.search), Text("Search")],
                      ),
                    ),
                    RaisedButton(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(MdiIcons.swordCross),
                          Text("Challenge")
                        ],
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
              ],
            ),
          ),
        );
      });
}

class Video extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add Thumbnail',
      home: MyHomePage(title: 'Thumbnail'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<MediaInfo> mediaList = [];
  List<String> urlList = [
    "https://www.youtube.com/watch?v=drvxcAxJQ-0",
    "https://www.youtube.com/watch?v=jwGLWZUyiLA",
    "https://www.youtube.com/watch?v=FFFm928eiPk",
    "https://www.youtube.com/watch?v=tFmkpkWt5h4",
    "https://www.youtube.com/watch?v=XY-G9P2oU7g"
  ];
  //List<String> urlListtwo = ["https://www.youtube.com/watch?v=XY-G9P2oU7g"];

  void openAddLinkDialog() async {
    // Open  thumbnail dialog to add link
    await Thumbnail.addLink(
      context: context,

      /// callback that return thumbnail information in `MediaInfo` object
      onLinkAdded: (mediaInfo) {
        if (mediaInfo != null && mediaInfo.thumbnailUrl.isNotEmpty) {
          setState(() {
            mediaList.add(mediaInfo);
          });
        }
      },
    );
  }

  Widget getMediaList() {
    return MediaListView(
      onPressed: (url) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Videoonepage()));
      },
      urls: urlList,
      mediaList: mediaList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: (mediaList == null || mediaList.isEmpty) &&
              (urlList == null || urlList.isEmpty)
          ? Center(
              child: Text(
                "Press add button to add thumbnail.",
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
            )
          : getMediaList(),
    );
  }
}
