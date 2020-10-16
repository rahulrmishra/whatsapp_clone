import 'package:flutter/material.dart';
import 'package:whatsapp_clone/config/config.dart';
import 'package:whatsapp_clone/tabs/callstab.dart';
import 'package:whatsapp_clone/tabs/cameratabs.dart';
import 'package:whatsapp_clone/tabs/chatstab.dart';
import 'package:whatsapp_clone/tabs/statustab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: primaryColor,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: primaryColor,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Whatsapp",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
          backgroundColor: primaryColor,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("CHATS"),
              ),
              Tab(
                child: Text("STATUS"),
              ),
              Tab(
                child: Text("CALLS"),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: TabBarView(children: [
          CameraTab(),
          ChatsTab(),
          StatusTab(),
          CallTab(),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.chat,
          ),
          backgroundColor: primaryColor,
        ),
      ),
    );
  }
}
