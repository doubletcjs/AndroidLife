import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/Product.dart';
import '../pages/ProductDetail.dart';

final routes = {
  '/': (context) => Tabs(),
  '/form': (context) => FormPage(),
  '/product': (context) => ProductPage(),
  '/productdetail': (context, {arguments}) => ProductDetailPage(arguments: arguments),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments)
};

var onGenerateRoute = (RouteSettings setting) {
  final String name = setting.name;
  final Function pageContentBuilder = routes[name];

  if (pageContentBuilder != null) {
    if (setting.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context, arguments: setting.arguments)
      );

      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context)
      );

      return route;
    }
  }
};