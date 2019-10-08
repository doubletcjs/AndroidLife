import 'package:flutter/material.dart';

class CategoryMainPage extends StatefulWidget {
  CategoryMainPage({Key key}) : super(key: key);

  _CategoryMainPageState createState() => _CategoryMainPageState();
}

class _CategoryMainPageState extends State<CategoryMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('选择添加方式'),
      ),
      body: Center(
        child: Text('添加方式'),
      ),
    );
  }
}
