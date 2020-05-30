//import 'package:KriyativeEd/main.dart';
//import 'package:KriyativeEd/performance.dart';
//import 'package:KriyativeEd/target.dart';
//import 'package:KriyativeEd/videoz.dart';
import 'package:flutter/material.dart';
import 'package:kreyative/main.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
import './target.dart';
import './targettwo.dart';
import './main.dart';
import './performancepage.dart';

class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  Container(
                    color: Colors.white54,
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 300.0),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0, 20.0, 0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.128,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            color: Colors.purple.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "Course 1",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0),
                              ),
                              Icon(Icons.assignment, size: 50.0),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40.0, 5.0, 10.0, 0),
                        child: Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Progress()));
                              },
                              child: LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width * 0.8,
                                lineHeight:
                                    MediaQuery.of(context).size.height * 0.03,
                                progressColor: Colors.deepOrange[700],
                                percent: 0.5,
                                backgroundColor: Colors.grey,
                                animation: true,
                                animationDuration: 2000,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Progress",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "50%",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          tabs(context, Icons.videocam, "Videos"),
                          tabs(context, Icons.attach_file, "Notes"),
                          tabs(context, Icons.assignment, "Challenges"),
                          tabs(context, Icons.track_changes, "Analysis"),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SizedBox(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.003,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // ListView(
              //    children:[
              //    Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: <Widget>[

              //       Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Container(
              //           decoration: BoxDecoration(
              //             color: Colors.white60,
              //             borderRadius:BorderRadius.circular(6.0)
              //           ),
              //           height:MediaQuery.of(context).size.height*0.15,
              //               width:MediaQuery.of(context).size.width*0.888,
              //           child: Row(
              //             children: <Widget>[
              //               Container(
              //                 height:MediaQuery.of(context).size.height*0.15,
              //                 width:MediaQuery.of(context).size.width*0.14,
              //                // child: vi(),
              //                color:Colors.deepOrange[800],
              //               ),
              //               Text("Resume Lecture",style: TextStyle(fontSize:20.0),),
              //             ],
              //           ),
              //         ),
              //       ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     decoration: BoxDecoration(
              //       color: Colors.white60,
              //       borderRadius:BorderRadius.circular(6.0)
              //     ),
              //     height:MediaQuery.of(context).size.height*0.15,
              //         width:MediaQuery.of(context).size.width*0.888,
              //     child: Row(
              //       children: <Widget>[
              //         Container(
              //           height:MediaQuery.of(context).size.height*0.15,
              //           width:MediaQuery.of(context).size.width*0.14,
              //           decoration: BoxDecoration(
              //             color: Colors.deepOrange[900],
              //         borderRadius:BorderRadius.circular(6.0)
              //           ),
              //           child: Text("PDF", style:TextStyle(color:Colors.white,fontSize:20))
              //         ),
              //         Text("Complete Test",style: TextStyle(fontSize:20.0),),
              //       ],
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     decoration: BoxDecoration(
              //       color: Colors.white60,
              //       borderRadius:BorderRadius.circular(6.0)
              //     ),
              //     height:MediaQuery.of(context).size.height*0.2,
              //         width:MediaQuery.of(context).size.width*0.888,
              //     child: Row(
              //       children: <Widget>[
              //         Icon(MdiIcons.beach,size: 40.0,color:Colors.deepOrange[800]),
              //         Text("Challenge from Rahul",style: TextStyle(fontSize:20.0),),
              //       ],
              //     ),
              //   ),
              // ),

              //       ],
              //     ),
              //   ),
              //   ],
              // ),
            ],
          ),
        ));
  }
}

Widget tabs(BuildContext context, ic, name) {
  return Column(
    children: <Widget>[
      InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Targettwo()));
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.09,
          width: MediaQuery.of(context).size.width * 0.2,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
          child: Icon(ic, color: Colors.deepOrange[600], size: 45),
        ),
      ),
      Text(name)
    ],
  );
}
