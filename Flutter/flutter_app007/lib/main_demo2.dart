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
      child: ListView(
        children: <Widget>[
          MyAppItem('https://www.itying.com/images/flutter/1.png', '标题一',
              240),
          MyAppItem('https://www.itying.com/images/flutter/2.png', '标题二',
              240),
          MyAppItem('https://www.itying.com/images/flutter/3.png', '标题三',
              240),
          MyAppItem('https://www.itying.com/images/flutter/4.png', '标题四',
              240),
          MyAppItem('https://www.itying.com/images/flutter/5.png', '标题五',
              240),
        ],
      ),
    );
  }
}

class MyAppItem extends StatelessWidget {
  String imageUrl = "";
  String title = "";
  double height = 0;

  MyAppItem(this.imageUrl, this.title, this.height);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container( 
        height: this.height,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                height: 40,
                color: Colors.cyan,
                child: Center(
                  child: Text(
                    this.title,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              height: this.height-40,
              child: Container(
                child: Image.network(
                  this.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}