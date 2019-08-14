import 'package:flutter/material.dart';

class IconsTestPage extends StatelessWidget {
  const IconsTestPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          _iconBuilder(),
          Divider(),
          _iconButtonBuilder(),
          Divider(),
          _raiseIconBuilder()
        ],
      ),
    );
  }

  // 图标组件
  Widget _iconBuilder() {
    return Icon(
      Icons.phone,
      color: Colors.green[500],
      size: 80.0,
    );
  }

  // 图标按钮组件
  Widget _iconButtonBuilder() {
    return IconButton(
      icon: Icon(
        Icons.volume_down,
        size: 50.0,
      ),
      tooltip: "按下操作",
      onPressed: () {
        print("按下操作");
      },
    );
  }

  // 凸起按钮组件
  Widget _raiseIconBuilder() {
    return RaisedButton(
      child: Text("RaiseButton组件"),
      onPressed: () {
        print("按下事件处理");
      },
    );
  }
}
