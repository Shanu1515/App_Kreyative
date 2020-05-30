import 'package:add_thumbnail/add_thumbnail.dart';
import 'package:flutter/material.dart';
import 'package:kreyative/sixth.dart';
import 'package:kreyative/videopage.dart';

class Thumbnailput extends StatelessWidget {
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
    "https://www.youtube.com/watch?v=XY-G9P2oU7g",
    "https://www.youtube.com/watch?v=E6fLm5XlJDY",
    "https://www.youtube.com/watch?v=drvxcAxJQ-0",
    "https://www.youtube.com/watch?v=jwGLWZUyiLA"
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
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
