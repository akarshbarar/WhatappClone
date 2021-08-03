import 'package:flutter/material.dart';

class UsrProfile extends StatefulWidget {
  final String userName;
  const UsrProfile({Key? key, required this.userName}) : super(key: key);

  @override
  _UsrProfileState createState() => _UsrProfileState();
}

class _UsrProfileState extends State<UsrProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 200.0,
                  floating: false,
                  pinned: true,
                  actions: [Icon(Icons.more_vert)],
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(widget.userName),
                    background: Image.network(
                      "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ];
            },
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Media, links and docs"),
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, i) {
                        return Container(
                          width: 50,
                          height: 10,
                          child: Image.network(
                            "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                          ),
                        );
                      }),
                ),
              ],
            )));
  }
}
