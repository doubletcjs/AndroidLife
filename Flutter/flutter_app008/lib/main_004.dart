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
          title: Text('AspectRatio Card Demo'),
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
    return ListView(
      children: <Widget>[ 
        Card(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(
                  'https://www.itying.com/images/flutter/1.png',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text(
                  'xxxx',
                ),
                subtitle: Text(
                  "xxxxxx",
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://www.itying.com/images/flutter/2.png',
                  ),
                ),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(
                  'https://www.itying.com/images/flutter/1.png',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text(
                  'xxxx',
                ),
                subtitle: Text(
                  "xxxxxx",
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://www.itying.com/images/flutter/2.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
