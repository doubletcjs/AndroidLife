import 'package:flutter/material.dart';

class RegisterFirstPage extends StatelessWidget {
  const RegisterFirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第一步'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('下一步'),
            onPressed: () {
              //Navigator.pushReplacementNamed(context, '/registersecond');
              Navigator.of(context).pushNamed('/registersecond');
            },
          )
        ],
      ),
    );
  }
}
