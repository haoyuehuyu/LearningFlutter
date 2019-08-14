import 'package:flutter/material.dart';
import 'container_test_page.dart';
import 'image_test_page.dart';
import 'text_test_page.dart';
import 'icons_test_page.dart';
import 'list_view_test_page.dart';
import 'list_view_horizontal_page.dart';
import 'long_list_view_page.dart';
import 'grid_view_page.dart';
import 'form_field_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("组件测试"),),
        // body: FormFieldPage()
        body:GridViewPage()
        // body:LongListViewPage(items: List<String>.generate(500, (i) => "item $i"))
        // body:ListViewHorizontalPage()
        // body:ListViewPage()
        // body:IconsTestPage()
        // body:TextTestPage()
        // body:ImageTestPage()
        // body:ContainerPage(),
      ),
    );
  }
}

