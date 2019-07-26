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
              color: Color(0xffff9900),
              decoration: TextDecoration.lineThrough,
              fontSize: 24.0,
            ),
          ),
          Text(
            "虚拟上划线 + 23号 + 倾斜",
            style: TextStyle(
                decoration: TextDecoration.overline,
                decorationStyle: TextDecorationStyle.dashed,
                fontSize: 23.0,
                fontStyle: FontStyle.italic),
          ),
          Text(
            "24号 + 加粗",
            style: TextStyle(
              fontSize: 23.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              letterSpacing: 6.0,
            ),
          )
        ],
      ),
    );
  }
}
