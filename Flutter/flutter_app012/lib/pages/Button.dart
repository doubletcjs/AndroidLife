import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  ButtonPage({Key key}) : super(key: key);

  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮演示'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('普通按钮'),
                onPressed: () {},
              ),
              SizedBox(width: 10),
              RaisedButton(
                child: Text('有颜色按钮', style: TextStyle(color: Colors.white)),
                color: Colors.blue,
                onPressed: () {},
              ),
              SizedBox(width: 10),
              RaisedButton(
                child: Text('有阴影按钮', style: TextStyle(color: Colors.white)),
                color: Colors.blue,
                elevation: 30,
                onPressed: () {},
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 340,
                height: 40,
                child: RaisedButton(
                  child: Text('宽度高度', style: TextStyle(color: Colors.white)),
                  color: Colors.blue,
                  elevation: 30,
                  onPressed: () {},
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.red,
                  height: 60,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    child: Text('自适应按钮', style: TextStyle(color: Colors.white)),
                    color: Colors.blue,
                    elevation: 30, //阴影
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
          SizedBox(width: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton.icon(
                icon: Icon(Icons.search),
                label: Text('图标按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {},
              )
            ],
          ),
          SizedBox(width: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('圆角按钮', style: TextStyle(color: Colors.white)),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {},
              ),
              SizedBox(width: 10),
              Container(
                height: 80,
                child: RaisedButton(
                  child: Text('圆形按钮', style: TextStyle(color: Colors.white)),
                  color: Colors.blue,
                  // splashColor: Colors.green,// 水波纹颜色
                  shape: CircleBorder(side: BorderSide(color: Colors.white)),
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 10),
              FlatButton(
                child: Text('Flat按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {},
              ),
              SizedBox(width: 10),
              OutlineButton(
                child: Text('Outline'),
                onPressed: () {},
              )
            ],
          ),
          SizedBox(width: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.all(20),
                  child: OutlineButton(
                    child: Text('注册'),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
          SizedBox(width: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: Text('登录'),
                    onPressed: () {},
                  ),
                  RaisedButton(
                    child: Text('注册'),
                    onPressed: () {},
                  ),
                  MyButton(text: '自定义按钮', pressed: () {
                    print('自定义按钮');
                  })
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final text;
  final pressed;
   
  const MyButton({this.text='', this.pressed=null});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,
      ),
    );
  }
}