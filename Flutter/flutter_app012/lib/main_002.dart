import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}  

class MyApp extends StatelessWidget { 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      theme: ThemeData.dark(),
    );
  }
}

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'BottomNavigationBar Demo',
          ),
        ),
        body: Text(
          '第 ${this._currentIndex+1} 个页面',
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              title: Text(
                '首页',
              ),
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              title: Text(
                '分类',
              ),
              icon: Icon(
                Icons.category,
              ),
            ),
            BottomNavigationBarItem(
              title: Text(
                '设置',
              ),
              icon: Icon(
                Icons.settings,
              ),
            ),
          ],
          currentIndex: this._currentIndex,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
        ),
      );
  }
}