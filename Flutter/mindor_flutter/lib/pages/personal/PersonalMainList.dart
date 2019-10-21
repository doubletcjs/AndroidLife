import 'package:flutter/material.dart';

class PersonalMainList extends StatefulWidget {
  var mainListHandle;

  _PersonalMainListState _state = _PersonalMainListState();
  _PersonalMainListState createState() {
    return _state;
  }

// true 已登录 false 未登录
  var _loginStatus = true;
  void changeLoginStatus(bool status) {
    this._state.changeLoginStatus(status);
  }
}

class _PersonalMainListState extends State<PersonalMainList> {
  void changeLoginStatus(bool status) {
    setState(() {
      this.widget._loginStatus = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(244, 244, 244, 1),
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          SizedBox(height: 20),
          _PersonalMainListCell(
              cellIconAsset: 'images/icon_personal.png',
              cellName: '个人信息',
              showLine: true,
              handle: this.widget.mainListHandle),
          _PersonalMainListCell(
              cellIconAsset: 'images/icon_clear.png',
              cellName: '清除缓存',
              cellArrowText: '123.3M',
              handle: this.widget.mainListHandle),
          SizedBox(height: 12),
          _PersonalMainListCell(
              cellIconAsset: 'images/icon_update.png',
              cellName: '检查更新',
              showLine: true,
              handle: this.widget.mainListHandle),
          _PersonalMainListCell(
              cellIconAsset: 'images/icon_about.png',
              cellName: '关于',
              handle: this.widget.mainListHandle),
          SizedBox(height: 12),
          _PersonalMainListCell(
              cellIconAsset: 'images/icon_service.png',
              cellName: '我的客服',
              handle: this.widget.mainListHandle),
          SizedBox(height: 12),
          this.widget._loginStatus == true
              ? _PersonalMainListCell(
                  cellName: '退出登录',
                  isLogout: true,
                  handle: this.widget.mainListHandle)
              : SizedBox(height: 0),
          SizedBox(height: this.widget._loginStatus == true ? 12 : 0)
        ],
      ),
    );
  }
}

class _PersonalMainListCell extends StatefulWidget {
  final handle;
  final cellIconAsset;
  final cellName;
  final cellArrowText;
  final isLogout;
  final showLine;

  _PersonalMainListCell(
      {this.cellIconAsset,
      this.cellName,
      this.cellArrowText = '',
      this.isLogout = false,
      this.showLine = false,
      this.handle});

  __PersonalMainListCellState createState() => __PersonalMainListCellState();
}

class __PersonalMainListCellState extends State<_PersonalMainListCell> {
  @override
  Widget build(BuildContext context) {
    return this.widget.isLogout == true
        ? Container(
            color: Colors.white,
            height: 45,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  top: 0,
                  child: Center(
                      child: Text(
                    this.widget.cellName,
                    style: TextStyle(
                        color: Color.fromRGBO(74, 74, 74, 1), fontSize: 14),
                  )),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  top: 0,
                  child: FlatButton(
                    child: null,
                    onPressed: () {
                      this.widget.handle(this.widget.cellName);
                    },
                  ),
                )
              ],
            ),
          )
        : Container(
            color: Colors.white,
            height: 45,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 12,
                  top: 7.5,
                  bottom: 7.5,
                  child: Container(
                    width: 15,
                    height: 15,
                    child: Image.asset(
                      this.widget.cellIconAsset,
                      // fit: BoxFit.cover,
                    ),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(7.5)),
                  ),
                ),
                Positioned(
                    left: 45,
                    top: 0,
                    bottom: 0,
                    right: 100,
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            this.widget.cellName,
                            style: TextStyle(
                                color: Color.fromRGBO(74, 74, 74, 1),
                                fontSize: 14),
                          )
                        ],
                      ),
                    )),
                Positioned(
                  right: 24,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    child: this.widget.cellArrowText.length == 0
                        ? Container(
                            width: 8,
                            height: 15,
                            child: Image.asset('images/Setting_Arrow.png'),
                          )
                        : Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                this.widget.cellArrowText,
                                style: TextStyle(
                                    color: Color.fromRGBO(153, 153, 153, 1),
                                    fontSize: 14),
                              )
                            ],
                          ),
                  ),
                ),
                Positioned(
                  left: 45,
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: this.widget.showLine == true ? 0.8 : 0,
                    color: Color.fromRGBO(229, 229, 229, 0.6),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  bottom: 0,
                  child: FlatButton(
                    child: null,
                    onPressed: () {
                      this.widget.handle(this.widget.cellName);
                    },
                  ),
                )
              ],
            ),
          );
  }
}
