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
      List<Widget> list = List();
      for (var i = 0; i < 20; i++) {
        list.add(Container(
          child: Text(
            '这是第 $i 条数据',
            style: TextStyle( 
              color: Colors.white,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          color: Colors.white10,
          alignment: Alignment.center,
        ));
      }

      return list;
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
      childAspectRatio: 0.7,//控件宽高比
    );
  }
 }