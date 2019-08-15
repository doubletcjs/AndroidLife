import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: '图标组件示例',
  home: IconDemo(),
)); 

class IconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '图标组件示例',
        ),
      ),
      body: Column(
        children: <Widget>[
          Icon(
            Icons.phone, 
            color: Colors.green[500],
            size: 80.0,
          ),
          IconButton(
            icon: Icon(
              Icons.volume_up,
              //size: 48.9,
              ),
              onPressed: () {
                print('按下操作');
              },
          ),
          RaisedButton(
            onPressed: () {
                print('RaisedButton按下操作');
            },
            child: Text(
              'RaisedButton组件',
            ),
          )
        ],
      ),
    );
  }
  
}
