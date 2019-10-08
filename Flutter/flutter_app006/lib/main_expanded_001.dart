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
            'Expanded Demo',
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
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: IconContainer(Icons.search, color: Colors.blue, size: 32),
        ),
        Expanded(
          flex: 3,
          child: IconContainer(Icons.home, color: Colors.orange, size: 32),
        ),
        Expanded(
          flex: 1,
          child: IconContainer(Icons.select_all, color: Colors.red, size: 32),
        ),
      ],
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
      color: this.color,
      child: Center(
        child: Icon(
          this.icon,
          size: this.size,
          color: Colors.white,
        ),
      ),
    );
  }
}
