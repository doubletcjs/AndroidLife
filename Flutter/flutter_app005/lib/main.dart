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
  Widget _getListData(context, index) {
    return Container(
        child: Column(
          children: <Widget>[
            Image.network(
              listData[index]['imageUrl'],
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              listData[index]['title'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ), 
        decoration: BoxDecoration(
          color: Colors.white10,
          border: Border.all(
            color: Colors.white10,
            width: 0.6,
          ),
          borderRadius: BorderRadius.circular(3),
        ),
      );
  } 

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      itemCount: listData.length,
      itemBuilder: this._getListData,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      padding: EdgeInsets.all(10),
    );
  }
}
