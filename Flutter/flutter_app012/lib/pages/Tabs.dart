import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Setting.dart';
import 'tabs/Category.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List<Widget> _pageList = [HomePage(), CategoryPage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '命名路由 Demo',
        ),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text(
              '首页',
            ),
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              '分类',
            ),
            icon: Icon(
              Icons.category,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              '设置',
            ),
            icon: Icon(
              Icons.settings,
            ),
          ),
        ],
        currentIndex: this._currentIndex,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        iconSize: 36,
        type: BottomNavigationBarType.fixed, //多个按钮
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text(
                      '用户名'
                    ),
                    accountEmail: Text(
                      '邮箱'
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://www.itying.com/images/flutter/1.png'
                      ),
                    ),
                    otherAccountsPictures: <Widget>[
                      Image.network(
                        'https://www.itying.com/images/flutter/2.png'
                      ),
                      Image.network(
                        'https://www.itying.com/images/flutter/3.png'
                      ),
                      Image.network(
                        'https://www.itying.com/images/flutter/4.png'
                      )
                    ],
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://www.itying.com/images/flutter/5.png'
                        ),
                        fit: BoxFit.cover
                      )
                    ),
                  )
                  
                  // DrawerHeader(
                  //   child: Text(
                  //     '你好'
                  //   ),
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //       image: NetworkImage(
                  //         'https://www.itying.com/images/flutter/1.png'
                  //       ),
                  //       fit: BoxFit.cover
                  //     )
                  //   ),
                  // ),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.home
                ),
              ),
              title: Text(
                '我的空间'
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.people
                ),
              ),
              title: Text(
                '用户中心'
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/userpage');
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.settings
                ),
              ),
              title: Text(
                '设置中心'
              ),
            )
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Text('右侧'),
      ),
    );
  }
}
