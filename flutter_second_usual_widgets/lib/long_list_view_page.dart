import 'package:flutter/material.dart';

class LongListViewPage extends StatelessWidget {
  final List<String> items;
  const LongListViewPage({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.phone),
          title: Text('${items[index]}'),
        );
      },
    );
  }
}
