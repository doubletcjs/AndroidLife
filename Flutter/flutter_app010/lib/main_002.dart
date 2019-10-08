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

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Chip(
          backgroundColor: Colors.red,
          label: Text(
            '${this.count}',
          ),
        ),
        RaisedButton(
          child: Text(
            '按钮',
          ),
          onPressed: () {
            setState(() {
              this.count += 1;
            });
          },
        )
      ],
    );
  }
}
