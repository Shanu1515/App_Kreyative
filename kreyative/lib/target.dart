//import 'package:KriyativeEd/courses.dart';
//import 'package:KriyativeEd/login.dart';
//import 'package:KriyativeEd/video_page.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kreyative/videopage.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';
import './main.dart';

import 'package:provider/provider.dart';

class Target extends StatefulWidget {
  @override
  _TargetState createState() => _TargetState();
}

class _TargetState extends State<Target> with SingleTickerProviderStateMixin {
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
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
                      h * 0.085, w * 0.2, "Tests", Icons.assignment,
                      //  (){
                      //    setState(() {
                      //      ic["v"]=Colors.purple[700];
                      //    });
                      //  }
                    ),
                    badge(
                      h * 0.085, w * 0.2, "Targets", Icons.track_changes,
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
            child: ListTile(
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
                trailing: Icon(Icons.arrow_forward_ios)
                // trailing: ExpansionTile(title: Text(""),
                // children: [
                //   Container(
                //     height: h*0.2,
                //     width:w*0.6,
                //     color:Colors.teal,
                //   ),
                // ],
                // ),

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
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(2, 5, 5, 2),
            child: Card(
              //shadowColor: Colors.grey[900],
              color: Colors.white,
              child: ListTile(
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
                    Icon(Icons.arrow_forward),
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
                    Icon(Icons.arrow_forward),
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
                      iconSize: 30.0,
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
            child: ListTile(
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
              //trailing: IconButton(icon:Icon(Icons.keyboard_arrow_down),onPressed: (){},
            ),
          ),
        );
      });
}

Widget testSeries() {
  return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(2, 5, 5, 2),
          child: Card(
            //shadowColor: Colors.grey[900],
            color: Colors.white,
            child: ListTile(
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
                      IconButton(
                        icon: Icon(Icons.keyboard_arrow_down),
                        onPressed: () {},
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
                          Text("earn 150x 👑",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 10.0)),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.keyboard_arrow_down),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      });
}

class Video extends StatelessWidget {
  Widget build(BuildContext context) {
    //final user = Provider.of<FirebaseUser>(context);
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
              color: Colors.deepPurple,
              child: Text(
                "Open Videos for lesson 1",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Videoonepage()));
              }),
          RaisedButton(
              color: Colors.deepPurple,
              child: Text(
                "Open Videos for lesson 2",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Videoonepage()));
              }),
          // RaisedButton(
          //   color: Colors.deepPurple,
          //   child: Text("SignOut",style: TextStyle(color: Colors.white),),
          //   onPressed:()async{
          //    await AuthService().signOutF();
          //     if(user==null) {
          //       await Navigator.push(context,MaterialPageRoute(builder: (context) => Login()));
          //     }
          //     else{
          //      // return CircularProgressIndicator();
          //     }
          //    }
          // )
        ],
      ),
    );
  }
}
