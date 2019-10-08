import 'package:flutter/material.dart';
import 'package:flutter_app011/pages/Form.dart';
import '../Search.dart';

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
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return SearchPage();
              },
            ));
          },
        ),
        RaisedButton(
          child: Text(
            '跳转到搜索页面并传值',
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return FormPage(title: '表单');
                }
              ),
            );
          },
        )
      ],
    );
  }
}
