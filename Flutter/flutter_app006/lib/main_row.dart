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
            'Row Demo',
          ),
        ),
        body: MyAppContent(),
      ),
      theme: ThemeData.dark(),
    );
  }
}

class MyAppContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 400,
      height: 700,
      color: Colors.pink,
      child: Row(
        children: <Widget>[
          IconContainer(Icons.search, color: Colors.blue, size: 32),
          IconContainer(Icons.home, color: Colors.orange, size: 32),
          IconContainer(Icons.select_all, color: Colors.red, size: 32),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  double size;
  Color color;
  IconData icon;

  IconContainer(this.icon, {this.color, this.size});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 100,
      height: 100,
      color: Colors.white,
      child: Center(
        child: Icon(
          this.icon,
          size: this.size,
          color: this.color,
        ),
      ),
    );
  }
}
