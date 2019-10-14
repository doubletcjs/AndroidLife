import 'package:flutter/material.dart';
import 'MainCategoryListCell.dart';

class MainCategoryList extends StatefulWidget {
  final title;

  MainCategoryList({this.title});

  _MainCategoryListState createState() =>
      _MainCategoryListState(title: this.title);
}

class _MainCategoryListState extends State<MainCategoryList> {
  final title;

  _MainCategoryListState({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Container(
        color: Color.fromRGBO(244, 244, 244, 1),
        child: ListView(
          children: <Widget>[
            MainCategoryListCell(
                this.title,
                '设备标签',
                'https://www.itying.com/images/flutter/1.png',
                false,
                false, 
                () {

                }),
            MainCategoryListCell(
                this.title,
                '设备标签',
                'https://www.itying.com/images/flutter/1.png',
                true,
                true, 
                () {
                  
                })
          ],
        ),
      ),
    );
  }
}
