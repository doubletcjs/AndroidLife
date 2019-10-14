import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        '您好Flutter',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 30.0, 
          fontStyle: FontStyle.italic,
          // color: Colors.yellow,
          color: Color.fromRGBO(244, 233, 121, 0.5)
        ),
      ),
    );
  }
  
}