import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}  

class MyApp extends StatelessWidget { 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'BottomNavigationBar Demo',
          ),
        ),
        body: Text(
          'demo',
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
          currentIndex: 0,
          onTap: (int index) {
            print('$index');
          },
        ),
      ),
      theme: ThemeData.dark(),
    );
  }
}
 