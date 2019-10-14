import 'package:flutter/material.dart';
import 'package:mindor_flutter/routes/Route.dart' as route;

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录页'), 
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              route.login(context);
            },
          )
        ],
      ),
      body: Center(
        child: Container(
          child: Text('登录页'),
        ),
      ),
    );
  }
}
