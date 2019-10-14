import 'package:flutter/material.dart';
import 'routes/Route.dart' as route;

void main() {
  runApp(MindorApp());
}

class MindorApp extends StatefulWidget {
  MindorApp({Key key}) : super(key: key);

  _MindorAppState createState() => _MindorAppState();
}

class _MindorAppState extends State<MindorApp> { 
  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: route.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
