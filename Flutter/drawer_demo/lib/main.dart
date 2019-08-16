import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: MyHomePage(),
  )
);

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Drawer抽屉组件示列',
        ),
      ),
      body: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                '玄微子',
              ),
              accountEmail: Text(
                'xuanweizi@l63.com',
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  'portrait_image@2x.png',
                ),
              ),
              onDetailsPressed: () {},
              otherAccountsPictures: <Widget>[
                Container(
                  child: Image.asset('scan@2x.png'),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.color_lens
                  ),
              ),
              title: Text(
                '个性装扮',
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.photo
                  ),
              ),
              title: Text(
                '我的相册',
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.wifi
                  ),
              ),
              title: Text(
                '免流量特权',
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}