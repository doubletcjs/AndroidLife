import 'package:flutter/material.dart';

class MainHeader extends StatefulWidget {
  int type = 0;

  MainHeader({this.type});

  _MainHeaderState createState() => _MainHeaderState(type: this.type);
}

class _MainHeaderState extends State<MainHeader> {
  final int _totalCount = 0;
  final int _onlineCount = 0;
  int type = 0;

  _MainHeaderState({this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: 750 / 500,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 0,
              child: Image.asset('images/bg_rc_index.png', fit: BoxFit.cover),
            ),
            Positioned(
              right: 12,
              bottom: 12,
              child: Text(
                '设备总数${this._totalCount}，在使用中设备${this._onlineCount}',
                style: TextStyle(
                    fontSize: 12, color: Color.fromRGBO(0, 174, 255, 1)),
              ),
            ),
            Positioned(
              right: 16,
              top: MediaQuery.of(context).padding.top,
              child: Container(
                width: 23,
                height: 23,
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Image.asset(
                    'images/add.png',
                  ),
                  onPressed: () {
                    if (this.type == 1) {
                      print('aaaaaaa');
                    } else {
                      Navigator.pushNamed(context, '/categorymain');
                    }
                  },
                ),
              ),
            ),
            Center(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '27℃',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                    SizedBox(height: 1),
                    Text(
                      '2019-10-06 星期日',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    SizedBox(height: 6),
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                          width: 11,
                          height: 14,
                          child: Image.asset(
                            'images/icon_location.png',
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Text(
                            '广州 / 多云',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      'PM2.5 优',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
