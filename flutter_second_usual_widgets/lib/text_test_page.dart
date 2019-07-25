import 'package:flutter/material.dart';

class TextTestPage extends StatelessWidget {
  const TextTestPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            "红色+黑色删除线+25号",
            style: TextStyle(
                color: Color(0xffff0000),
                decoration: TextDecoration.lineThrough,
                decorationColor: Color(0xff000000),
                fontSize: 25.0),
          ),
          Text(
            "橙色+下划线+24号",
            style: TextStyle(
                color: Color(0xffff0000),
                decoration: TextDecoration.lineThrough,
                decorationColor: Color(0xff000000),
                fontSize: 25.0),
          ),
        ],
      ),
    );
  }
}
