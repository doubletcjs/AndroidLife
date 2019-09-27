import 'package:flutter/material.dart';

void main() => runApp(TabBarDemo());

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DefaultTabController(
        length: items.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'TabBar选项卡示例',
            ),
            bottom: TabBar(
              isScrollable: true,
              tabs: items.map((ItemView itemView) {
                return Tab(
                  text: itemView.title,
                  icon: Icon(itemView.icon),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: items.map((ItemView itemView) {
              return Padding(
                padding: EdgeInsets.all(16.0),
                child: SelectView(itemView: itemView),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
  
} 

class SelectView extends StatelessWidget {
  final ItemView itemView;

  const SelectView({Key key, this.itemView}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.display1;

    // TODO: implement build
    return Card(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              itemView.icon,
              size: 128.0,
              color: textStyle.color,
            ),
            Text(
              itemView.title,
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
  
}

//视图项数据
class ItemView {
  final String title;
  final IconData icon;

  const ItemView(this.title, this.icon);
}

//选项卡的类目
const List<ItemView> items = const <ItemView> [
  const ItemView('自驾', Icons.directions_car),
  const ItemView('自行车', Icons.directions_bike),
  const ItemView('轮船', Icons.directions_boat),
  const ItemView('公交车', Icons.directions_bus),
  const ItemView('火车', Icons.directions_railway),
  const ItemView('步行', Icons.directions_walk),
];