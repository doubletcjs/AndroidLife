import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());   

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '使用第三方包示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '使用第三方包示例1',
          ),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              var url = 'http://www.baidu.com';
              launch(url);
            },
            child: Text(
              '打开百度',
            ),
          ),
        ),
      ),
    );
  }
  
}