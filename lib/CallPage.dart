import 'package:flutter/material.dart';
import 'package:whatsapp/UTILS/AppColors.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, i) {
            return ListTile(
              leading: CircleAvatar(
                child: FlutterLogo(),
              ),
              title: Text(
                "User $i",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text("Yesterday 12:09PM"),
              trailing: i % 2 == 0
                  ? Icon(
                      Icons.add_ic_call,
                      color: AppColors.tealGreenDark,
                    )
                  : Icon(
                      Icons.video_call,
                      color: AppColors.tealGreenDark,
                    ),
            );
          }),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: AppColors.teaGreen,
            foregroundColor: AppColors.tealGreenDark,
            child: Icon(Icons.video_call),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
              onPressed: () {},
              foregroundColor: Colors.white,
              child: Icon(
                Icons.call,
              )),
        ],
      ),
    );
  }
}
