import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Scaffold组件示列',
  home: ScaffoldDemo(),
));

class ScaffoldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Scaffold组件示列',
        ),
      ),
      body: Center(
        child: Text(
          'Scaffold',
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, 
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
  
}