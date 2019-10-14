import 'package:flutter/material.dart';

class PersonalHeader extends StatefulWidget {
  final newsHandle; 
  PersonalHeader({this.newsHandle});

  _PersonalHeaderState createState() => _PersonalHeaderState();
}

class _PersonalHeaderState extends State<PersonalHeader> {
  @override
  Widget build(BuildContext context) {
    final _maxTextWidth = MediaQuery.of(context).size.width-(24)*2; 

    return Container(
      height: 232+MediaQuery.of(context).padding.top,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: 188,
              child: Image.asset(
                'images/me_bg.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 13,
            top: MediaQuery.of(context).padding.top+15,
            child: Text(
              '我的',
              style: TextStyle(
                fontSize: 17,
                color: Colors.white
              )
            ),
          ),
          Positioned(
            right: 24,
            top: MediaQuery.of(context).padding.top+15,
            child: Container(
              width: 18,
              height: 19,
              child: FlatButton(
                padding: EdgeInsets.all(0),
                child: Image.asset(
                  'images/news.png',
                  fit: BoxFit.cover,
                ),
                onPressed: this.widget.newsHandle,
              ),
            ),
          ),
          Positioned(
            left: 12,
            bottom: 20,
            right: 12,
            child: Container(
              height: 105,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.16),
                        blurRadius: 2,
                        offset: Offset(0, 1))
                  ],
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 92,
            child: Center(
              child: Container(
              width: 64,
              height: 64, 
              child: ClipRRect(
                child: FadeInImage.assetNetwork(
                  placeholder: 'images/placeholder.png',
                  image: 'https://www.itying.com/images/flutter/1.png',
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            )
          ),
          Positioned(
            left: 24,
            right: 24,
            bottom: 68,
            child: Center(
              child: Text(
                '名称最多八个字符',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(119, 119, 119, 1)
                ),
              ),
            ),
          ),
          Positioned(
            left: 24,
            right: 24,
            bottom: 52,
            child: Center(
              child: Text(
                'ID：12345678',
                style: TextStyle(
                  fontSize: 10,
                  color: Color.fromRGBO(119, 119, 119, 1)
                ),
              ),
            ),
          ),
          Positioned(
            left: 24,
            bottom: 32,
            child: Container(
              width: _maxTextWidth,
              child: Text(
                '设备总数12',
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(119, 119, 119, 1)
                ),
              ),
            ),
          ),
          Positioned(
            right: 24,
            bottom: 32,
            child: Container(
              width: _maxTextWidth,
              child: Text(
                '设备开4',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(119, 119, 119, 1)
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              color: Color.fromRGBO(229, 229, 229, 1),
              height: 1,
            ),
          )
        ],
      ),
    );
  }
}
