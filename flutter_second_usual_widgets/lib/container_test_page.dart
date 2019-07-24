import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity, // 设置这个值,可以强制宽度上撑满父控件
        height: 200.0,
        alignment: Alignment.center, // 当子控件小于Container时,该属性可以控制子控件位置
        padding: EdgeInsets.only(top: 100.0), // decoration内部的空白区域,如果有child,那么child位于padding内部
        decoration: BoxDecoration( 
          // 注意 Container的decoration和color属性是互斥的,设置了decoration就不能再设置color了
          // child 后面的装饰
          color: Colors.redAccent,
          border: Border.all(color: Colors.greenAccent,width: 8),
          borderRadius: BorderRadius.all(Radius.circular(8.0))
        ),
        foregroundDecoration: BoxDecoration( // 绘制在child前面的装饰
          color: Colors.black54,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(50))
        ),
        
        margin: EdgeInsets.only(right: 30), // 围绕在decoration和child之外的空白区域,不属于内容区域
        child: Text("Flutter",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28.0,backgroundColor: Colors.orangeAccent),
        ),
      ),
    );
  }
}