import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '动态列表',
          ),
        ),
        body: MyAppContent(),
      ),
      theme: ThemeData.dark(),
    );
  }
}

class MyAppContent extends StatelessWidget {
  //自定义方法
  List<Widget> _getData() {
    List<Widget> list = List();
    for (var idx = 0; idx < 20; idx++) {
      list.add(ListTile(
        title: Text(
          '我是 $idx 列表',
        ),
      ));
    }

    return list;
    
    // [
    //   ListTile(
    //     title: Text(
    //       '我是一个列表',
    //     ),
    //   ),
    //   ListTile(
    //     title: Text(
    //       '我是一个列表',
    //     ),
    //   ),
    //   ListTile(
    //     title: Text(
    //       '我是一个列表',
    //     ),
    //   ),
    // ];
  }
 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: this._getData(),
    );
  }
}
