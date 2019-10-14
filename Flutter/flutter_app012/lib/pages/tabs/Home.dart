import 'package:flutter/material.dart'; 

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text(
            '跳转到搜索页面',
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/search', arguments: {
              'id': 123456
            });
          },
        ),
        RaisedButton(
          child: Text(
            '跳转到搜索页面并传值',
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/form');
          },
        ),
        RaisedButton(
          child: Text(
            '跳转到商品页面',
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/product');
          },
        ),
        RaisedButton(
          child: Text(
            '跳转到AppBarDemo',
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/appbardemo');
          },
        ),
        RaisedButton(
          child: Text(
            '跳转到TabBarController',
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/tabbarcontroller');
          },
        ),
        RaisedButton(
          child: Text(
            '按钮演示',
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/buttonpage');
          },
        )
      ],
    );
  }
}
