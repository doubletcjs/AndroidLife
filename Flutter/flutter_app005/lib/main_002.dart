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
            'Grid Demo',
          ),
        ),
        body: MyAppContent(),
      ),
      theme: ThemeData.dark(),
    );
  }
}

class MyAppContent extends StatelessWidget {
  List<Widget> _getListData() {
    var list = listData.map((value) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            SizedBox(
              height: 10,
            ),
            Text(
              value['title'],
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(233, 233, 233, 0.9),
          ),
          borderRadius: BorderRadius.circular(3),
        ),
      );
    });

    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      padding: EdgeInsets.all(10),
      children: this._getListData(),
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
    );
  }
}
