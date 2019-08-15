import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: '网格列表示例',
  home: MyApp(),
)); 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '网格列表示例',
        ),
      ),
      body: GridView.count(
        primary: false,
        padding: EdgeInsets.all(20.0),
        crossAxisCount: 3,
        children: <Widget>[
          const Text('第一行第一列'),
          const Text('第一行第二列'),
          const Text('第一行第三列'),
          const Text('第二行第一列'),
          const Text('第二行第二列'),
          const Text('第二行第三列'),
          const Text('第一行第一列'),
          const Text('第一行第二列'),
          const Text('第一行第三列'),
          const Text('第一行第一列'),
          const Text('第一行第二列'),
          const Text('第一行第三列'),
        ],
      )
    );
  }
  
}