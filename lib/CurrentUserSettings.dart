import 'package:flutter/material.dart';

class CurrentUserSettings extends StatefulWidget {
  const CurrentUserSettings({Key? key}) : super(key: key);

  @override
  _CurrentUserSettingsState createState() => _CurrentUserSettingsState();
}

class _CurrentUserSettingsState extends State<CurrentUserSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: FlutterLogo(),
            ),
            title: Text("Name"),
            subtitle: Text("Subtitle"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text("Chats"),
            subtitle: Text("Theme, wallpapers, chat history"),
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text("Account"),
            subtitle: Text("Privacy, Security, Change Number"),
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text("Notifications"),
            subtitle: Text("Message, group & call tones"),
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text("Storage and data"),
            subtitle: Text("Network usage, auto-download"),
          ),
          ListTile(
            leading: Icon(Icons.query_stats_outlined),
            title: Text("Help"),
            subtitle: Text("Help center, contact us, privacy policy"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.verified_user_outlined),
            title: Text("Invide a friend"),
          ),
          Text("from"),
          Text("Facebook")
        ],
      ),
    );
  }
}
