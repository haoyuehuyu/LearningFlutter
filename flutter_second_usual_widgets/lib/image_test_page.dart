import 'package:flutter/material.dart';

class ImageTestPage extends StatelessWidget {
  const ImageTestPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Image.network(
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564030203885&di=55be3d9896e0648806c6a4084eceb696&imgtype=0&src=http%3A%2F%2Fimg.redocn.com%2Fsheying%2F20150213%2Fmulanweichangcaoyuanfengjing_3951976.jpg",
          fit: BoxFit.cover,
          width: 300,
          height: 400,
          color: Colors.blue[400],
          colorBlendMode: BlendMode.colorDodge,
          alignment: Alignment.topCenter,
        ),
        Image.asset("images/header_top.png"),
        Text(
          "上面是图片",
          style: TextStyle(backgroundColor: Colors.blueAccent),
        )
      ],
    ));
  }
}
