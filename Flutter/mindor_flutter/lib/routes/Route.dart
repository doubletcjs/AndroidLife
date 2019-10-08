import 'package:flutter/material.dart';
import '../pages/tabs/TabPage.dart';
import '../pages/category/CategoryMain.dart';

final routes = {
  '/': (context) => TabPage(),
  '/categorymain': (context) => CategoryMainPage()
};

var onGenerateRoute = (RouteSettings setting) {
  final String name = setting.name;
  final Function pageContentBuidler = routes[name];

  if (pageContentBuidler != null) {
    if (setting.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuidler(context, arguments: setting.arguments)
      );

      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuidler(context)
      );

      return route;
    }
  }
};
