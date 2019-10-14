import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AppBarDemoPage'
        ),
        backgroundColor: Colors.red,
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.menu
        //   ),
        //   onPressed: () {
        //     print('menu');
        //   },
        // ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search
            ),
            onPressed: () {
              print('search');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.settings
            ),
            onPressed: () {
              print('setting');
            },
          )
        ],
        centerTitle: true,
      ),
      body: Text(
        'AppBarDemoPage'
      ),
    );
  }
}