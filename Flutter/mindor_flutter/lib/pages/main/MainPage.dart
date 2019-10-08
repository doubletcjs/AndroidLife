import 'package:flutter/material.dart';
import 'MainHeader.dart';
import 'MainCategoryCell.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                child: MainHeader(),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.width * 500 / 750,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                child: ListView(
                  padding: EdgeInsets.all(0),
                  children: <Widget>[
                    MainCategoryCell(
                        'https://www.itying.com/images/flutter/1.png',
                        '空气监测仪',
                        0,
                        2),
                    MainCategoryCell(
                        'https://www.itying.com/images/flutter/2.png',
                        '智能插座',
                        1,
                        4),
                    MainCategoryCell(
                        'https://www.itying.com/images/flutter/3.png',
                        '智能插座_易燃气体',
                        1,
                        1)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
