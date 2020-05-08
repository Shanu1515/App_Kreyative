import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kreyative/main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Videoonepage extends StatefulWidget {
  const Videoonepage({Key key}) : super(key: key);
  @override
  _VideoonepageState createState() => _VideoonepageState();
}

class _VideoonepageState extends State<Videoonepage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  String videoURL = "https://youtu.be/DxkkAHnqlpY";
  YoutubePlayerController _controller;
  YoutubeMetaData _videoMetaData;
  PlayerState _playerState;
  bool _isPlayerReady = false;
  List<Tab> tabList = List();
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId:
          YoutubePlayer.convertUrlToId("https://youtu.be/DxkkAHnqlpY"),
    )..addListener(listener);
    _videoMetaData = YoutubeMetaData();
    tabList.add(
      Tab(
        icon: Icon(Icons.library_books, color: Colors.purple),
        text: "Lectures",
      ),
    );
    tabList.add(
      Tab(
        icon: Icon(Icons.explore, color: Colors.purple),
        text: "Formulae",
      ),
    );
    tabList.add(
      Tab(icon: Icon(Icons.attach_file, color: Colors.purple), text: "Notes"),
    );
    tabList.add(
      Tab(icon: Icon(Icons.forum, color: Colors.purple), text: "Doubt"),
    );
    tabList.add(
      Tab(icon: Icon(Icons.assignment, color: Colors.purple), text: "Test"),
    );
    _tabController = TabController(length: 5, vsync: this);
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                YoutubePlayer(
                  controller: _controller,
                ),
                Container(
                  height: 60.0,
                  child: Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text(_controller.metadata.title),
                  ),
                ),
                Container(
                  color: Colors.white70,
                  child: TabBar(
                    labelColor: Colors.purple,
                    controller: _tabController,
                    indicatorColor: Colors.purple,
                    tabs: tabList,
                  ),
                ),
                Container(
                  height: 300,
                  child: TabBarView(
                    controller: _tabController,
                    // children: tabList.map((Tab tab){
                    //   return _getPage(tab);
                    // } ).toList(),
                    children: [
                      Lectures(),
                      Formulae(),
                      Notes(),
                      Doubt(),
                      Test(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Lectures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Formulae extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  List<Icon> icons = List();
  List<String> titles = [
    "Announcements",
    "Resources",
    "Share this Course",
    "Downloads",
    "Add Something",
    "Add Something"
  ];

  @override
  void initState() {
    icons.add(Icon(Icons.announcement, color: Colors.purple));
    icons.add(Icon(Icons.import_contacts, color: Colors.purple));
    icons.add(Icon(Icons.share, color: Colors.purple));
    icons.add(Icon(Icons.file_download, color: Colors.purple));
    icons.add(Icon(Icons.attach_file, color: Colors.purple));
    icons.add(Icon(Icons.attach_file, color: Colors.purple));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: icons.length,
      itemBuilder: (BuildContext context, index) {
        return ListTile(
          leading: icons[index],
          title: Text(titles[index]),
          trailing: Icon(Icons.arrow_forward),
        );
      },
    );
  }
}

class Doubt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              onPressed: null,
              color: Colors.blue,
              child: Text(
                " Public",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            RaisedButton(
              onPressed: null,
              color: Colors.blue,
              child: Text(
                " Private",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              onPressed: null,
              color: Colors.blue,
              child: Text(
                "MCQ",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            RaisedButton(
              onPressed: null,
              color: Colors.purple,
              child: Text(
                " Previous Year Questions",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            RaisedButton(
              onPressed: null,
              color: Colors.blue,
              child: Text(
                " NCERT Questions",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
