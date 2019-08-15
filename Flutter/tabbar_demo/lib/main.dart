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
              'TabBar',
            ),
            bottom: TabBar(
              isScrollable: true,
              tabs: items.map((ItemView itemView) {
                return Tab(
                  icon: Icon(itemView.icon),
                  text: itemView.title,
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
      color: Colors.white,
      child: Center(
        child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            itemView.icon,
            size: 128.0,
            color: textStyle.color,
          ),
          Text(
            itemView.title,
            style: textStyle,
          )
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

/*
class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DefaultTabController(
        length: items.length, //传入选项卡数量
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'TabBar 选项卡示例',
            ),
            bottom: TabBar(
              isScrollable: true, //设置是否可滚动
              tabs: items.map((ItemView item) { //迭代添加选项卡子项
                return Tab(
                  text: item.title,
                  icon: Icon(item.icon),
                );
              }).toList(),
            ),
          ),
          // 添加选项卡视图
          body: TabBarView(
            children: items.map( (ItemView item) { //迭代显示选项卡视图
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: SelectView(item: item),
              );
            }).toList(),
          ),
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

//被选中的视图
class SelectView extends StatelessWidget {
  //视图数据
  final ItemView item; 

  const SelectView({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;

    // TODO: implement build
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, //垂直方向最小化处理
          crossAxisAlignment: CrossAxisAlignment.center, //水平方向居中对齐
          children: <Widget>[
            Icon(
              item.icon,
              size: 128.0,
              color: textStyle.color,
            ),
            Text(
              item.title,
              style: textStyle,
            )
          ],
        ),
      ),
    );
  }
  
}

*/