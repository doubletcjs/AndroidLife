import 'package:flutter/material.dart';
import 'routes/Routes.dart' as routes;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Tabs(),
      initialRoute: '/', //初始化加载的路由
      // theme: ThemeData.dark(),
      // routes: {
      //   '/form': (context) => FormPage(),
      //   '/search': (context) => SearchPage(),
      // },
      onGenerateRoute: routes.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
