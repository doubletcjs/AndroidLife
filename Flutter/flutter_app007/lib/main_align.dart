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
            'Stack Align Demo',
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
    return Center(
      child: Container(
        width: 300,
        height: 400,
        color: Colors.red,
        child: Stack(
          // alignment: Alignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.teal,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.settings_applications,
                size: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
