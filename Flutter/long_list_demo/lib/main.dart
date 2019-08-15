import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: '长列表示例',
  home: MyApp(
    items: List<String>.generate(30, (i) => 'item $i'),
  ),
));

class MyApp extends StatelessWidget {
  final List<String> items;

  const MyApp({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '长列表示例',
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.airplay),
            title: Text(
              '${items[index]} ccc',
            ),
          );
        },
      ),
    );
  }
  
  
}