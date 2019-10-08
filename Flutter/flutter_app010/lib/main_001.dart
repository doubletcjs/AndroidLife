import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Statefull Demo'),
        ),
        body: HomePage(),
      ),
      theme: ThemeData.dark(),
    );
  }
}

class HomePage extends StatelessWidget { 
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('${this.count}'),
        RaisedButton(
          child: Text('按钮'),
          onPressed: () {
            this.count += 1;
            print(this.count);
          },
        )
      ],
    );
  }
}