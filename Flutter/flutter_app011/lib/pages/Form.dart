import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  String title;
  FormPage({this.title = '表单页'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          this.title,
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              '表单列表',
            ),
          ),
          ListTile(
            title: Text(
              '表单列表',
            ),
          ),
          ListTile(
            title: Text(
              '表单列表',
            ),
          ),
          ListTile(
            title: Text(
              '表单列表',
            ),
          ),
          ListTile(
            title: Text(
              '表单列表',
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.home,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
