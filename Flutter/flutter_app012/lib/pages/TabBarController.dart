import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void dispose() { //组件销毁时调用
    // TODO: implement dispose
    super.dispose();
      print('dispose');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 2);

    _tabController.addListener(() {
      print('${_tabController.index}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarController'),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              text: '热门',
            ),
            Tab(
              text: '推荐',
            )
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          ListView(
            children: <Widget>[
              ListTile(title: Text('热门tab')),
              ListTile(title: Text('热门tab')),
              ListTile(title: Text('热门tab'))
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(title: Text('推荐tab')),
              ListTile(title: Text('推荐tab')),
              ListTile(title: Text('推荐tab'))
            ],
          )
        ],
      ),
    );
  }
}
