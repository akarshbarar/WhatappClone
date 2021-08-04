import 'package:flutter/material.dart';
import 'package:whatsapp/CallPage.dart';
import 'package:whatsapp/ChatPage.dart';
import 'package:whatsapp/StatusPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            PopupMenuButton<int>(
                onSelected: (item) =>
                    {Navigator.of(context).pushNamed("/setting")},
                itemBuilder: (context) => [
                      PopupMenuItem<int>(value: 0, child: Text('Logout')),
                      PopupMenuItem<int>(value: 1, child: Text('Settings')),
                    ])
          ],
          bottom: TabBar(
            tabs: [
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
                child: Text("CALL"),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("Camera"),
            ),
            ChatPage(),
            StatusPage(),
            CallPage()
          ],
        ),
      ),
    ));
  }
}
