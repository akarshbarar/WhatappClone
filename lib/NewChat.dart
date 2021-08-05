import 'package:flutter/material.dart';
import 'package:whatsapp/UTILS/AppColors.dart';

class NewChat extends StatefulWidget {
  const NewChat({Key? key}) : super(key: key);

  @override
  _NewChatState createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text("Select contact"),
          actions: [Icon(Icons.search), Icon(Icons.more_vert)],
        ),
        body: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              if (index == 0) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: AppColors.lightGreenDark,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  title: Text("New Group"),
                );
              }
              if (index == 1) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: AppColors.lightGreenDark,
                    child: Icon(
                      Icons.person_add,
                      color: Colors.white,
                    ),
                  ),
                  title: Text("New Contact"),
                );
              }
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: AppColors.lightGray,
                  child: FlutterLogo(),
                ),
                title: Text("user $index"),
                subtitle: Text("....."),
              );
            }));
  }
}
