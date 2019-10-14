import 'package:flutter/material.dart';
import 'package:mindor_flutter/pages/account/LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../pages/tabs/TabPage.dart';
import '../pages/category/CategoryMain.dart';
import '../pages/main/MainCategoryList.dart';

final kAccountLogin = 'AccountLogin';

loginState(context) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool isLogin = preferences.getBool(kAccountLogin);

  if (isLogin == null || isLogin == false) {
    logout(context);
  }

  print('登录状态:${isLogin == null ? false : isLogin}');
}

logout(context) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  await preferences.setBool(kAccountLogin, false);

  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => LoginPage()),
      (route) => route == null);
}

login(context) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  await preferences.setBool(kAccountLogin, true);

  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => TabPage()),
      (route) => route == null);
}

final routes = {
  '/': (context) => TabPage(),
  '/categorymain': (context) => CategoryMainPage(),
  '/maincategorylist': (context, {arguments}) =>
      MainCategoryList(title: arguments)
};

var onGenerateRoute = (RouteSettings setting) {
  final String name = setting.name;
  final Function pageContentBuidler = routes[name];

  if (pageContentBuidler != null) {
    if (setting.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuidler(context, arguments: setting.arguments));

      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuidler(context));

      return route;
    }
  }
};
