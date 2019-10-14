import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text(
            '登录'
          ),
          onPressed: () {
            Navigator.of(context).pushNamed('/login');
          },
        ),
        RaisedButton(
          child: Text(
            '注册'
          ),
          onPressed: () {
            Navigator.of(context).pushNamed('/registerfirst');
          },
        )
      ],
    );
  }
}