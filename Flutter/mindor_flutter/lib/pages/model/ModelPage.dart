import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; 
import '../main/MainHeader.dart';

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
                    Container(
                      color: Colors.white,
                      height: 60,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 15,
                            top: 14,
                            child: Container(
                              width: 32,
                              height: 32,
                              child: ClipRRect(
                                child: FadeInImage.assetNetwork(
                                    placeholder: 'images/placeholder.png',
                                    image:
                                        'https://www.itying.com/images/flutter/1.png',
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 57,
                            top: 14,
                            right: 50,
                            child: Text(
                              '主卧',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(51, 51, 51, 1)
                              )
                            ),
                          ),
                          Positioned(
                            left: 57,
                            bottom: 13,
                            right: 50,
                            child: Text(
                              '10:30开启-11:30关闭',
                              style: TextStyle(
                                fontSize: 9,
                                color: Color.fromRGBO(153, 153, 153, 1)
                              )
                            ),
                          ),
                          Positioned(
                            left: 0,
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 1,
                              color: Color.fromRGBO(244, 244, 244, 1),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            right: 0,
                            bottom: 0,
                            child: FlatButton(
                              padding: EdgeInsets.all(0), 
                              child: null,
                              onPressed: () {

                              },
                            ),
                          ),
                          Positioned(
                            right: 15,
                            top: 0,
                            bottom: 0,
                            child: Center(
                                child: CupertinoSwitch(
                                  value: false,
                                  onChanged: (isOn) {

                                  },
                                ),
                              ),
                          )
                        ],
                      ),
                    )
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
