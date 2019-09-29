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
          title: Text(
            '动态列表',
          ),
        ),
        body: MyAppContent(),
      ),
      theme: ThemeData.dark(),
    );
  }
}

class MyAppContent extends StatelessWidget {   
  Widget _getListData(context, index) {
    return ListTile(
      leading: Image.network(
        listData[index]['imageUrl'],
      ),
      title: Text(
        listData[index]['title'],
      ),
      subtitle: Text( 
        listData[index]['author'],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }
}
