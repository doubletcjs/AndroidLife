import 'package:flutter/material.dart';

void main() => runApp(ImageDemo()); 

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Image Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Image Demo',
          ),
        ),
        body: Center(
          child: Image.network(
            'https://flutter.dev/assets/404/dash_nest-c64796b59b65042a2b40fae5764c13b7477a592db79eaf04c86298dcb75b78ea.png',
            fit: BoxFit.fitWidth,
            width: 300.0,
            height: 200.0,
          ),
        ),
      ),
    );
  }
  
}
