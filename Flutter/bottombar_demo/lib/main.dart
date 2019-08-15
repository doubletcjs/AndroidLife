import 'package:flutter/material.dart';

void main() => runApp(MyApp());  

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'BottomNavigationBar示例',
      home: MyHomePage(),
    );
  }
  
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }
  
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final _widgetOptions = [
    Text('item 0: 消息'),
    Text('item 1: 通讯录'),
    Text('item 2: 发现'),
  ];
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BottomNavigationBar示例',
        ),
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text(
              '消息',
            ),
            icon: Icon(Icons.message),
          ),
          BottomNavigationBarItem(
            title: Text(
              '通讯录',
            ),
            icon: Icon(Icons.contacts),
          ),
          BottomNavigationBarItem(
            title: Text(
              '发现',
            ),
            icon: Icon(Icons.account_circle),
          ),
        ],
        unselectedItemColor: Colors.deepOrange,
        selectedItemColor: Colors.deepPurple,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}