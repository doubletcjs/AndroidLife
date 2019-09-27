import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'AppBar 应用按钮示例',
  home: MyHomePage(),
));

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AppBar 应用按钮示例'
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
  
}