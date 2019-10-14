import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: TabBar(
            isScrollable: true,
            indicatorColor: Colors.yellow,
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.yellowAccent,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(
                text: '热门',
              ),
              Tab(
                text: '推荐',
              ),
              Tab(
                text: '推荐',
              ),
              Tab(
                text: '推荐',
              ),
              Tab(
                text: '推荐',
              ),
              Tab(
                text: '推荐',
              ),
              Tab(
                text: '推荐',
              ),
              Tab(
                text: '推荐',
              )
            ]),
        body: TabBarView(
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
                ListTile(title: Text('推荐tab')),
                ListTile(title: Text('推荐tab'))
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text('推荐tab')),
                ListTile(title: Text('推荐tab')),
                ListTile(title: Text('推荐tab')),
                ListTile(title: Text('推荐tab'))
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text('推荐tab')),
                ListTile(title: Text('推荐tab')),
                ListTile(title: Text('推荐tab')),
                ListTile(title: Text('推荐tab'))
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text('推荐tab')),
                ListTile(title: Text('推荐tab')),
                ListTile(title: Text('推荐tab')),
                ListTile(title: Text('推荐tab'))
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text('推荐tab')),
                ListTile(title: Text('推荐tab')),
                ListTile(title: Text('推荐tab')),
                ListTile(title: Text('推荐tab'))
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text('推荐tab')),
                ListTile(title: Text('推荐tab')),
                ListTile(title: Text('推荐tab')),
                ListTile(title: Text('推荐tab'))
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text('推荐tab')),
                ListTile(title: Text('推荐tab')),
                ListTile(title: Text('推荐tab')),
                ListTile(title: Text('推荐tab'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
