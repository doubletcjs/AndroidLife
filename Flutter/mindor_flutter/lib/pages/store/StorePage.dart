import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class StorePage extends StatefulWidget {
  StorePage({Key key}) : super(key: key);

  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (_) => WebviewScaffold(
          url: 'https://shop202205946.taobao.com',
        )
      },
    );
  }
}
