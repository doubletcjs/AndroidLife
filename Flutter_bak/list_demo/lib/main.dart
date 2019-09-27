import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: '基础列表示例',
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text( 
          '基础列表示例',
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.alarm),
            title: Text(
              'Alarm',
            ),
          ),
          ListTile(
            title: Text(
              'Phone'
            ),
            leading: Icon(Icons.phone),
          ),
          ListTile(
            title: Text(
              'Airplay',
            ),
            leading: Icon(Icons.airplay),
          ),
        ],
      ),
    );
  }
  
}