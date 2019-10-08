import 'package:flutter/material.dart';
import 'res/listData.dart';

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
  List<Widget> _getList = listData.map((value) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              value['imageUrl'],
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            title: Text(
              value['title'],
            ),
            subtitle: Text(
              value['description'],
              overflow: TextOverflow.ellipsis,
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                value['imageUrl'],
              ),
            ),
          ),
        ],
      ),
    );
  }).toList();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: this._getList,
      // children: <Widget>[
      //   Card(
      //     margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      //     child: Column(
      //       children: <Widget>[
      //         AspectRatio(
      //           aspectRatio: 16/9,
      //           child: Image.network(
      //             'https://www.itying.com/images/flutter/1.png',
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //         ListTile(
      //           title: Text(
      //             'xxxx',
      //           ),
      //           subtitle: Text(
      //             "xxxxxx",
      //           ),
      //           leading: CircleAvatar(
      //             backgroundImage: NetworkImage(
      //               'https://www.itying.com/images/flutter/2.png',
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ],
    );
  }
}
