import 'package:flutter/material.dart';
import 'package:whatsapp/UTILS/AppColors.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
              leading: CircleAvatar(
                child: FlutterLogo(),
              ),
              title: Text(
                "My Statys",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text("Today, 3:29 PM"),
              trailing: Icon(Icons.more_horiz)),
          Text("Viewed Updates"),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: AppColors.teaGreen,
            child: Icon(
              Icons.create_rounded,
              color: AppColors.tealGreenDark,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
