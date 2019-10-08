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
            'Stack Positioned Demo',
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
            Positioned (
              left: 10,
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.teal,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 100,
              child: Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
            ),
            Positioned(
              right: 0,
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
