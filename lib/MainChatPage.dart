import 'package:flutter/material.dart';
import 'package:whatsapp/UTILS/AppColors.dart';
import 'package:whatsapp/UserProfile.dart';

class MainChatPage extends StatefulWidget {
  final String userName;
  const MainChatPage({Key? key, required this.userName}) : super(key: key);

  @override
  _MainChatPageState createState() => _MainChatPageState();
}

class _MainChatPageState extends State<MainChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => UsrProfile(userName: widget.userName)));
            },
            child: CircleAvatar(
              child: FlutterLogo(),
            ),
          ),
          title: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        UsrProfile(userName: widget.userName)));
              },
              child: Text(widget.userName)),
          actions: [
            Icon(Icons.video_call),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.call),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.more_vert)
          ],
        ),
        body: Column(
          children: [
            Expanded(
                flex: 9,
                child: ListView.builder(
                    reverse: true,
                    itemCount: 200,
                    itemBuilder: (context, index) {
                      if (index % 2 == 0) return leftBubble("hii $index");
                      if (index % 2 != 0) return rightBubble("hello ");
                      return Text("");
                    })),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(child: TextField()),
                              Icon(Icons.attach_file),
                              Icon(Icons.camera_alt),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                    )
                  ],
                ))
          ],
        ));
  }
}

Widget leftBubble(String value) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 20,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.tealGreenLight),
      child: Text(
        value,
        textDirection: TextDirection.ltr,
      ),
    ),
  );
}

Widget rightBubble(String value) {
  return Text(
    value,
    textDirection: TextDirection.rtl,
  );
}
