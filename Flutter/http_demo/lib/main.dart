import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'http请求示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'http请求示例1',
          ),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              var url = 'http://httpbin.org/';
              http.get(url).then((response) {
                print('状态:${response.statusCode}');
                print('正文:${response.body}');
              });
            },
            child: Text(
              '发起http请求'
            ),
          ),
        ),
      ),
    );
  }

}