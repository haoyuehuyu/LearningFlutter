import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 对于小体量列表,不需要循环池,那么直接使用ListView(children:)方法
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.alarm),
          title: Text("Alarm"),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text("Phone"),
        ),
        ListTile(
          leading: Icon(Icons.airplay),
          title: Text("Airplay"),
        ),
                ListTile(
          leading: Icon(Icons.alarm),
          title: Text("Alarm"),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text("Phone"),
        ),
        ListTile(
          leading: Icon(Icons.airplay),
          title: Text("Airplay"),
        ),
      ],
    );
  }
}
