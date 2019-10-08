import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Setting.dart';
import 'tabs/Category.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List<Widget> _pageList = [HomePage(), CategoryPage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '命名路由 Demo',
          ),
        ),
        body: this._pageList[this._currentIndex],
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
          iconSize: 36,
          type: BottomNavigationBarType.fixed, //多个按钮
        ),
      );
  }
}