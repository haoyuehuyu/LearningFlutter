import 'package:flutter/material.dart';

class ListViewHorizontalPage extends StatelessWidget {
  const ListViewHorizontalPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160,
            color: Colors.lightBlue,
          ),
          Container(
            width: 200,
            color: Colors.amber,
          ),
          Container(
            width: 160,
            color: Colors.green,
            child: Column(
              children: <Widget>[
                Text(
                  "水平",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "列表",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 160,
            color: Colors.pink,
          ),
          Container(
            width: 160,
            color: Colors.deepPurpleAccent,
          ),
          Container(
            width: 160,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
