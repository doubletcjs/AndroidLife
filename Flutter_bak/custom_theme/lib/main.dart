import 'package:flutter/material.dart'; 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appName = '自定义主题';
    return MaterialApp(
      title: appName, 
      theme: ThemeData(
        brightness: Brightness.light, // 应用程序整体主题的亮度
        primaryColor: Colors.lightGreen[600], //App 主要部分的背景色
        accentColor: Colors.orange[600], // 前景色(文本、按钮等)
      ), 
      home: MyHomePage(
        title: appName,
      ),
    );
  }
}  

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          // 获取 主题的 accentColor
          color: Theme.of(context).accentColor,
          child: Text(
            '带有背景颜色的文本组件',
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
    );
  }
  
}