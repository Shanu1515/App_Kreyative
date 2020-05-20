import 'package:flutter/material.dart';
import './main.dart';
import 'package:shimmer/shimmer.dart';
import 'dart:async';
import 'dart:io';
import './bunny.dart';
import './dog.dart';
import 'package:flutter_otp/flutter_otp.dart';
import './sms.dart';

import './carousel.dart';
import './videoslider.dart';
import 'package:google_fonts/google_fonts.dart';

import './videopage.dart';
import './livestream.dart';
import './zoomwala.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import './target.dart';
import './courses.dart';
import 'package:lottie/lottie.dart';
import 'package:getflutter/getflutter.dart';

class IntroductionPagetwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.deepOrange, Colors.orangeAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                new Column(),
                SizedBox(
                  width: 200.0,
                  height: 200,
                  child: Shimmer.fromColors(
                    baseColor: Colors.black87,
                    highlightColor: Colors.white,
                    child: Text(
                      'Welcome !        \nLets get to know you better!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                    height: 85,
                    width: 45,
                    padding: EdgeInsets.fromLTRB(50, 20, 55, 0),
                    child: FlatButton(
                      textColor: Colors.black54,
                      color: Colors.deepOrangeAccent,
                      child: Text(
                        '➩',
                        style:
                            TextStyle(fontSize: 50, color: Colors.greenAccent),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Likingtwo()),
                        );
                        //signup screen
                      },
                    )),
              ],
            )));
  }
}

class Likingtwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.all(0),
            child: ListView(
              children: <Widget>[
                new Container(
                    width: 360,
                    height: 228.5,
                    padding: EdgeInsets.only(top: 60),
                    child: IconButton(
                      icon: Image.asset('assets/images.jpg'),
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      iconSize: 80,
                      splashColor: Colors.grey,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PickImageDemo()),
                        );
                      },
                    ),
                    decoration: new BoxDecoration(color: Color(0xff008ced))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 0, bottom: 10),
                    child: Text(
                      'Click on the image to change your avatar',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 25, bottom: 10),
                    child: Text(
                      'What do you like??',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w700),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Homepagesixth()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/music.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Music',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Homepagesixth()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/ball.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Games',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/puzzles.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Puzzles',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/drawing.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Drawing',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/music.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Dancing',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/reading.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Reading',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            )));
  }
}

class Homepagesixth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WELCOME"),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(0.6, -0.8),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/pic.png'),
              radius: 60.0,
            ),
          ),
          Align(
            alignment: Alignment(-0.8, -0.7),
            child: Text(
              'Hello there',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 23.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.8, -0.6),
            child: Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.6, -0.1),
            child: CircleAvatar(
              backgroundColor: Colors.orangeAccent,
              backgroundImage: AssetImage('assets/earth.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(0.6, -0.1),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              backgroundImage: AssetImage('assets/educationtwo.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(0.6, 0.1),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CarouselDemo()),
                );
              },
              child: const Text('Science', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
          Align(
            alignment: Alignment(-0.6, 0.1),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Videoonepage()),
                );
              },
              child:
                  const Text('Social Studies', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
          Align(
            alignment: Alignment(0.6, 0.5),
            child: CircleAvatar(
              backgroundColor: Colors.deepPurpleAccent,
              backgroundImage: AssetImage('assets/educationthree.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(-0.6, 0.5),
            child: CircleAvatar(
              backgroundColor: Colors.lightBlue,
              backgroundImage: AssetImage('assets/dividers.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(-0.6, 0.63),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Courses()),
                );
              },
              child: const Text('Mathematics', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
          Align(
            alignment: Alignment(0.6, 0.63),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Courses()),
                );
              },
              child: const Text('English', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
          Align(
            alignment: Alignment(0.1, 0.98),
            child: CircleAvatar(
              backgroundColor: Colors.redAccent,
              backgroundImage: AssetImage('assets/thinkingaitt.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(0.1, 1.02),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Courses()),
                );
              },
              child: const Text('AI', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
          Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 20, top: 620, right: 20),
              child: ListView(children: <Widget>[
                new Container(
                    decoration:
                        new BoxDecoration(color: Colors.lightBlueAccent),
                    child: new ListTile(
                        trailing: const Icon(
                          Icons.arrow_right,
                          size: 40,
                        ),
                        title: Text('Physics,Biology and more...')))
              ])),
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/pic.png'),
                      radius: 50.0,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Lakshman Kumar',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight + Alignment(0, .3),
                    child: Text(
                      '6th Grade',
                      style: TextStyle(color: Colors.white70, fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Bookmarks', style: TextStyle(fontSize: 24)),
              leading: Icon(
                Icons.bookmark,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => IntroductionPage()));
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text(
                'Notifications',
                style: TextStyle(fontSize: 24),
              ),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.notifications,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Videoonepage()));
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text('My Rewards', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                MdiIcons.gift,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GetUserMediaSample()));
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text('Quizzo', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.live_help,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Quizzotwo()));
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text('Notes', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.speaker_notes,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text('Redeem Voucher', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.loyalty,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text('Online Classes', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.computer,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ExampleApp()));
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text('Subscribe now', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.subscriptions,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text('Certifications', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.language,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text('Settings', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.settings,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text('Contact us', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.phone_in_talk,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title:
                  Text('Terms and Conditions', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.receipt,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Quizzotwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QUIZZO"),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(-0.8, -0.7),
            child: Text(
              'Hello There',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Align(
            alignment: Alignment(-0.8, -0.5),
            child: Text(
              'Start Test!',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.1, -0.35),
            child: Text(
              'Choose Subject',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Align(
            alignment: Alignment(-0.6, -0.1),
            child: CircleAvatar(
              backgroundColor: Colors.orangeAccent,
              backgroundImage: AssetImage('assets/physicskar.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(0.6, -0.1),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              backgroundImage: AssetImage('assets/biologykar.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(0.6, 0.1),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
              child: const Text('Science', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
          Align(
            alignment: Alignment(-0.6, 0.1),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ptest()),
                );
              },
              child:
                  const Text('Social Studies', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
          Align(
            alignment: Alignment(0.6, 0.5),
            child: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              backgroundImage: AssetImage('assets/chemist.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(-0.6, 0.5),
            child: CircleAvatar(
              backgroundColor: Colors.lightBlue,
              backgroundImage: AssetImage('assets/dividers.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(-0.6, 0.63),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ptest()),
                );
              },
              child: const Text('Mathematics', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
          Align(
            alignment: Alignment(0.6, 0.63),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Englishchoice()),
                );
              },
              child: const Text('English', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
        ],
      ),
    );
  }
}

class Englishchoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    Lottie.asset('assets/18833-refresh.json',
                        width: 300, height: 250),
                  ],
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Which component?',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w800,
                          fontSize: 28),
                    )),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        GFButton(
                          color: Colors.deepOrangeAccent,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Englishchapters()),
                            );
                          },
                          child: Text(
                            'Literature',
                            style: TextStyle(fontSize: 25),
                          ),
                          size: 120,
                          textColor: Colors.white,
                          elevation: 15,
                          splashColor: Colors.brown,
                          shape: GFButtonShape.square,
                        ),
                        GFButton(
                          color: Colors.deepPurpleAccent,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Course()),
                            );
                          },
                          child: Text(
                            'Grammar ',
                            style: TextStyle(fontSize: 25),
                          ),
                          size: 120,
                          textColor: Colors.white,
                          elevation: 15,
                          //splashColor: Colors.brown,
                          shape: GFButtonShape.square,
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    )),
              ],
            )));
  }
}

class Englishchapters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    Image.asset('assets/educationthree.png',
                        width: 200, height: 150),
                  ],
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'English Test',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w800,
                          fontSize: 28),
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 10, top: 35, bottom: 20),
                    child: Text(
                      'Choose chapter/poem',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                          fontSize: 22),
                    )),
                Container(
                    height: 70,
                    width: double.infinity,
                    padding: EdgeInsets.only(bottom: 20),
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.deepOrangeAccent,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TopicTest()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                          "A House,A Home",
                          style: TextStyle(fontSize: 25),
                        ))),
                Container(
                    height: 70,
                    padding: EdgeInsets.only(bottom: 20),
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.deepOrangeAccent,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Englishtype()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                          "The Kite",
                          style: TextStyle(fontSize: 25),
                        ))),
                Container(
                    height: 70,
                    width: double.infinity,
                    padding: EdgeInsets.only(bottom: 20),
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.deepOrangeAccent,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                          "The Quarrel",
                          style: TextStyle(fontSize: 25),
                        ))),
                Container(
                    height: 70,
                    width: double.infinity,
                    padding: EdgeInsets.only(bottom: 20),
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.deepOrangeAccent,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                          "Beauty",
                          style: TextStyle(fontSize: 25),
                        ))),
                Container(
                    height: 70,
                    padding: EdgeInsets.only(bottom: 20),
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.deepOrangeAccent,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                          "Who Am I",
                          style: TextStyle(fontSize: 25),
                        ))),
              ],
            )));
  }
}

class Englishtype extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    Lottie.asset('assets/10625-questions-and-answer.json',
                        width: 300, height: 250),
                  ],
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Type of Question?',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w800,
                          fontSize: 28),
                    )),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        GFButton(
                          color: Colors.indigoAccent,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Englishchapters()),
                            );
                          },
                          child: Text(
                            'Paragraph',
                            style: TextStyle(fontSize: 25),
                          ),
                          size: 120,
                          textColor: Colors.white,
                          elevation: 15,
                          splashColor: Colors.brown,
                          shape: GFButtonShape.square,
                        ),
                        GFButton(
                          color: Colors.indigoAccent,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Course()),
                            );
                          },
                          child: Text(
                            'Multiple\n choice    ',
                            style: TextStyle(fontSize: 25),
                          ),
                          size: 120,
                          textColor: Colors.white,
                          elevation: 15,
                          //splashColor: Colors.brown,
                          shape: GFButtonShape.square,
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    )),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        GFButton(
                          color: Colors.indigoAccent,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Englishchapters()),
                            );
                          },
                          child: Text(
                            'Jumbled  ',
                            style: TextStyle(fontSize: 25),
                          ),
                          size: 120,
                          textColor: Colors.white,
                          elevation: 15,
                          splashColor: Colors.brown,
                          shape: GFButtonShape.square,
                        ),
                        GFButton(
                          color: Colors.indigoAccent,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Course()),
                            );
                          },
                          child: Text(
                            'Matching',
                            style: TextStyle(fontSize: 25),
                          ),
                          size: 120,
                          textColor: Colors.white,
                          elevation: 15,
                          //splashColor: Colors.brown,
                          shape: GFButtonShape.square,
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    )),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        GFButton(
                          color: Colors.indigoAccent,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Englishchapters()),
                            );
                          },
                          child: Text(
                            'True False',
                            style: TextStyle(fontSize: 25),
                          ),
                          size: 120,
                          textColor: Colors.white,
                          elevation: 15,
                          splashColor: Colors.brown,
                          shape: GFButtonShape.square,
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    )),
              ],
            )));
  }
}
