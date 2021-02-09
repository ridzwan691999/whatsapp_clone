import 'package:flutter/material.dart';
import 'package:whatsapp_clone/tabs/calls_tab.dart';
import 'package:whatsapp_clone/tabs/camera_tab.dart';
import 'package:whatsapp_clone/tabs/chat_tab.dart';
import 'package:whatsapp_clone/tabs/status_tab.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      theme: ThemeData(
        primaryColor: Color(0XFF222D36),
        accentColor: Color(0XFF00AF9C),
      ),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color mainColour = Color(0XFF9FA3A7);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'WhatsApp',
            style: TextStyle(
              color: mainColour,
            ),
          ),
          actions: [
            Icon(
              Icons.search,
              color: mainColour,
            ),
            SizedBox(
              width: 15.0,
            ),
            Icon(
              Icons.more_vert,
              color: mainColour,
            ),
          ],
          bottom: TabBar(
            indicatorWeight: 4.0,
            unselectedLabelColor: mainColour,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.camera_alt_rounded,
                  color: mainColour,
                ),
              ),
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            CameraTab(),
            ChatTab(),
            StatusTab(),
            CallsTab(),
          ],
        ),
      ),
    );
  }
}
