import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';

class HTTPClientPage extends StatefulWidget {
  HTTPClientPage({Key key}) : super(key: key);

  _HTTPClientPageState createState() => _HTTPClientPageState();
}

class _HTTPClientPageState extends State<HTTPClientPage> {

  var _ipAddress = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(title: Text("测试网络请求"),),
       body: Center(
         child: Container(
           width: 300,
           height: 400,
           child: Column(
             children: <Widget>[
               Text("IP地址:"),
               Text("$_ipAddress"),
               RaisedButton(
                 onPressed: _getIPAddress,
                 child: Text("点击获取地址"),
               )

             ],
           ),
         ),
       ),
    );
  }

  void _getIPAddress() async{ 

    var url = 'https://httpbin.org/ip';
    var httpClient = new HttpClient();

    String result;
    try {
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        var json = await response.transform(utf8.decoder).join();
        var data = jsonDecode(json);
        print(data);
        result = data['origin'];
      } else {
        result =
            'Error getting IP address:\nHttp status ${response.statusCode}';
      }
    } catch (exception) {
      result = 'Failed getting IP address';
    }

    // If the widget was removed from the tree while the message was in flight,
    // we want to discard the reply rather than calling setState to update our
    // non-existent appearance.
    if (!mounted) return;

    setState(() {
      _ipAddress = result;
    });
  }
}