import 'package:flutter/material.dart';
import '../main/MainHeader.dart';
import 'ModelMainCell.dart';

class ModelPage extends StatefulWidget {
  ModelPage({Key key}) : super(key: key);

  _ModelPageState createState() => _ModelPageState();
}

class _ModelPageState extends State<ModelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Positioned(left: 0, top: 0, right: 0, child: MainHeader(type: 1)),
            Positioned(
              top: MediaQuery.of(context).size.width * 500 / 750,
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                child: ListView(
                  padding: EdgeInsets.all(0),
                  children: <Widget>[
                    ModelMainCell(
                        '回家模式', Image.asset('images/icon_home_n_model.png', fit: BoxFit.cover), '19:00-23:00', false),
                    ModelMainCell(
                        '外出模式', Image.asset('images/icon_out_n.png', fit: BoxFit.cover), '22:00关闭', false),
                    ModelMainCell(
                        '睡眠模式', Image.asset('images/icon_sleep_n.png', fit: BoxFit.cover), '23:00开启', true),
                    ModelMainCell(
                        '早起模式', Image.asset('images/icon_getup_n.png', fit: BoxFit.cover), '19:00-23:00', false)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
