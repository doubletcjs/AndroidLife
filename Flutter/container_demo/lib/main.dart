import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '容器组件示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '容器组件示例',
          ),
        ),
        body: Center(
          child: Container(
            width: 300.0,
            height: 300.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.lightBlue,
                width: 2.0,
              ),
              borderRadius: const BorderRadius.all(const Radius.circular(8.0)), 
            ),
            child: Text(
              'Flutter',
              textAlign: TextAlign.center,
              style: TextStyle( 
                fontSize: 28.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
  
}
