import 'package:flutter/material.dart';
import 'package:whatsapp/MainChatPage.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        MainChatPage(userName: "User $index")));
              },
              leading: CircleAvatar(
                child: FlutterLogo(),
              ),
              title: Text(
                "User $index",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text("Message from User $index"),
              trailing: Text(
                "8:33pm",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
