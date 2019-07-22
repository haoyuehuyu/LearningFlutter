import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UseURLLauncherPage extends StatefulWidget {
  UseURLLauncherPage({Key key}) : super(key: key);

  _UseURLLauncherPageState createState() => _UseURLLauncherPageState();
}

class _UseURLLauncherPageState extends State<UseURLLauncherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Use url_launcher"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {

            var baiduURL = "https://www.baidu.com";

            checkURLLaunch() async {
              if ( await canLaunch(baiduURL)){
                launch(baiduURL);
              }
            }
            checkURLLaunch();
          },
          child: Text("打开百度"),
        ),
      ),
    );
  }
}
