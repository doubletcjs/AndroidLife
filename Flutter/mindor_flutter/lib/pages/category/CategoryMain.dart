import 'package:flutter/material.dart'; 
import 'package:mindor_flutter/pages/category/CategoryMainCell.dart';

class CategoryMainPage extends StatefulWidget {
  CategoryMainPage({Key key}) : super(key: key);

  _CategoryMainPageState createState() => _CategoryMainPageState();
}

class _CategoryMainPageState extends State<CategoryMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('选择添加方式')),
      body: Container(
        child: ListView(
          children: <Widget>[
            CategoryMainCell('输入序列号', '设备上有条形码',
                'https://www.itying.com/images/flutter/1.png', () {}),
            CategoryMainCell('扫描序列号', '设备上有条形码',
                'https://www.itying.com/images/flutter/2.png', () {}),
            CategoryMainCell('按分类添加', '根据类型品牌添加',
                'https://www.itying.com/images/flutter/3.png', () {})
          ],
        ),
      ),
    );
  }
}
