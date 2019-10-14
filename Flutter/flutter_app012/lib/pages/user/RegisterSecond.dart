import 'package:flutter/material.dart';

class RegisterSecondPage extends StatelessWidget {
  const RegisterSecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二步'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('下一步'),
            onPressed: () {
              //Navigator.pushReplacementNamed(context, '/registerthird');
              Navigator.of(context).pushNamed('/registerthird');
            },
          )
        ],
      ),
    );
  }
}
