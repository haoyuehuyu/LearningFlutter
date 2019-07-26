import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 使用GridView.count构建网格
    return GridView.count(
      primary: false,
      padding: EdgeInsets.all(20),
      crossAxisSpacing: 30.0,
      // 一行上放三列数据
      crossAxisCount: 3,
      children: <Widget>[
        Text("第1行 第1列",style: TextStyle(backgroundColor: Colors.amber),),
        Text("第1行 第2列"),
        Text("第1行 第3列"),
        Text("第2行 第1列"),
        Text("第2行 第2列"),
        Text("第2行 第3列"),
        Text("第3行 第1列"),
        Text("第3行 第2列"),
        Text("第3行 第3列"),
        Text("第4行 第1列"),
        Text("第4行 第2列"),
        Text("第4行 第3列"),
      ],
    );
  }
}
