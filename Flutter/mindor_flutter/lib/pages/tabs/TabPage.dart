import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../personal/PersonalPage.dart';
import '../model/ModelPage.dart';
import '../main/MainPage.dart';
import '../store/StorePage.dart';

class TabPage extends StatefulWidget {
  TabPage({Key key}) : super(key: key);

  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  List<Widget> _pageList = [
    MainPage(),
    ModelPage(),
    StorePage(),
    PersonalPage()
  ];

  int _currentIndex = 0;
  Widget _getBarIcon(index) {
    String iconAsset = '';
    Color color = Colors.grey;
    if (this._currentIndex == index) {
      color = Color.fromRGBO(0, 174, 255, 1);
    }

    switch (index) {
      case 0:
        iconAsset = 'images/icon_home_n.png';
        break;
      case 1:
        iconAsset = 'images/icon_mode_n.png';
        break;
      case 2:
        iconAsset = 'images/icon_mall_n.png';
        break;
      case 3:
        iconAsset = 'images/icon_me_n.png';
        break;

      default:
        break;
    }

    return Image.asset(
      iconAsset,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: this._getBarIcon(0),
              title: Text(
                '首页',
              )),
          BottomNavigationBarItem(
              icon: this._getBarIcon(1),
              title: Text(
                '模式',
              )),
          BottomNavigationBarItem(
              icon: this._getBarIcon(2),
              title: Text(
                '商城',
              )),
          BottomNavigationBarItem(
              icon: this._getBarIcon(3),
              title: Text(
                '我的',
              )),
        ],
        currentIndex: this._currentIndex,
        selectedItemColor: Color.fromRGBO(0, 174, 255, 1),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            this._currentIndex = index;
          });
        },
      ),
    ); 
  }
}
