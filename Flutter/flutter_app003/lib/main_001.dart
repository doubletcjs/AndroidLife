import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '列表 Demo',
          ),
        ),
        body: MyAppContent(),
      ),
      theme: ThemeData.dark(),
    );
  }
}

class MyAppContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              '一文全览国家勋章和国家荣誉称号获得者',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            subtitle: Text(
              '【向“共和国勋章”获得者致敬！】于敏、申纪兰、孙家栋、李延年、张富清、袁隆平、黄旭华、屠呦呦被授予“共和国勋章”。这些闪亮的名字，值得我们永远铭记！转发致敬功勋！',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            leading: Image.network(
              'https://t10.baidu.com/it/u=2219748918,3101786318&fm=76',
            ),
          ),
          ListTile(
            title: Text(
              '我国又发现一个10亿吨级大油田',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            subtitle: Text(
              '中国石油天然气集团今天在北京发布了两项重大油气勘探成果：一项是今年在鄂尔多斯盆地长7生油层内勘探发现了10亿吨级大油田——庆城大油田。另一项是在四川盆地页岩气勘探获得重大进展，在长宁-威远和太阳区块累计探明10610.30亿立方米，形成了四川盆地万亿方页岩气大气区。',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            leading: Icon(
              Icons.book,
              color: Colors.yellow,
            ),
            trailing: Image.network(
              'https://f10.baidu.com/it/u=169307292,2100741207&fm=76',
            ),
          ),
          ListTile(
            title: Text(
              '到了“至暗时刻”？美企总裁：特朗普已进入政治生涯中最危险的时刻',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            subtitle: Text(
              '环球时报综合报道】围绕美国总统特朗普与乌克兰总统泽连斯基的“通话门”事件正在美国持续发酵。',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            trailing: Icon(
              Icons.cached,
              color: Colors.yellow,
              size: 50,
            ),
          ),
        ],
        padding: EdgeInsets.all(10),
      )
    );
  }
}