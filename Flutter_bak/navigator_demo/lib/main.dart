import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: '主页',
  home: MyHomePage(),
  routes: {
    '/first': (BuildContext context) => MyHomePage(),
    '/second': (BuildContext context) => SecondPage(),
  }, 
));

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }
  
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '主页',
        ),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Text(
            '跳转第二页', 
            style: TextStyle(fontSize: 28.0),
          ),
        ),
      ),
    );
  }
  
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '第二页',
        ),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context, '/first');
          },
          child: Text(
            '返回主页', 
            style: TextStyle(fontSize: 28.0),
          ),
        ),
      ),
    );
  }
  
}