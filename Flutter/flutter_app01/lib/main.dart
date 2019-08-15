import 'package:flutter/material.dart';

main(List<String> args) {
 runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        "你好Flutter",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 20.0,
          // color: Colors.red,
          color: Color.fromRGBO(244, 233, 121, 0.5),
        ),
      ),
    );
  }
   
}