import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Text Demo',
  home: TextDemo(),
));

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Text Demo',
        ),
      ),
      body: Column(
        children: <Widget>[
          Text(
            '红色 + 黑色删除线 +25 号',
            style: TextStyle(   
              color: Colors.red,
              decoration: TextDecoration.underline,
              decorationColor: Colors.black,
              fontSize: 25.0,
            ),
          ),
          Text(
            '橙色 + 下划线 + 24 号', 
            style: TextStyle( 
              color: Colors.orange,
              decoration: TextDecoration.underline,
              fontSize: 24.0,
            ),
          ),
          Text(
            '虚线上划线 + 23 号 + 倾斜',
            style: TextStyle(
              decoration: TextDecoration.overline,
              decorationStyle: TextDecorationStyle.dashed,
              fontSize: 23.0,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            '24号+加粗',
            style: TextStyle(
              fontSize: 24.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              letterSpacing: 6.0,
            ),
          ),
        ],
      ),
    );
  }
  
}
