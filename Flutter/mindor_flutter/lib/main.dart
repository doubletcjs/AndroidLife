import 'package:flutter/material.dart';
import 'routes/Route.dart' as route;

void main() {
  runApp(MindorApp());
} 

class MindorApp extends StatelessWidget { 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: route.onGenerateRoute,
    );
  }
}