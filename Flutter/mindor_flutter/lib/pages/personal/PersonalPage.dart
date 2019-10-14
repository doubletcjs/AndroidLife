import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; 
import 'PersonalHeader.dart';
import 'PersonalNotifi.dart';
import 'PersonalMainList.dart';
import 'package:mindor_flutter/routes/Route.dart' as route;

class PersonalPage extends StatefulWidget {
  PersonalPage({Key key}) : super(key: key);

  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  final PersonalNotifi _notifi = PersonalNotifi();
  final PersonalMainList _mainList = PersonalMainList();
  bool _notifiStatus = true; 

  @override
  Widget build(BuildContext context) {
    this._notifi.changeHandle = () {
      bool isNotifi = false;
      if (this._notifiStatus == true) {
        isNotifi = false;
      } else {
        isNotifi = true;
      }

      this._notifi.showNotifi(isNotifi);
      setState(() {
        this._notifiStatus = this._notifi.notifiStatus;
      });
    };

    this._mainList.mainListHandle = (text) {
      if (text == '清除缓存') {
        showCupertinoModalPopup(
            context: context,
            builder: (builder) {
              return CupertinoActionSheet(
                title: Text(
                  '将删除该软件在本机的数据缓存',
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
                actions: <Widget>[
                  CupertinoActionSheetAction(
                    child: Text(
                      '确定清除缓存',
                      style: TextStyle(
                          fontSize: 16, color: Color.fromRGBO(0, 192, 255, 1)),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
                cancelButton: CupertinoActionSheetAction(
                  isDestructiveAction: true,
                  child: Text('取消',
                      style: TextStyle(fontSize: 16, color: Colors.red)),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              );
            });
      } else if (text == '退出登录') {
        // showCupertinoDialog(
        //     context: context,
        //     builder: (builder) {
        //       return CupertinoAlertDialog(
        //         title: Text('提示'),
        //         content: Text('确定退出当前登录账号？'),
        //         actions: <Widget>[
        //           CupertinoDialogAction(
        //             child: Text('取消'),
        //             isDefaultAction: true,
        //             onPressed: () {
        //               Navigator.of(context).pop();
        //             },
        //           ),
        //           CupertinoDialogAction(
        //             child: Text('确定'),
        //             onPressed: () {
        //               Navigator.of(context).pop();
        //             },
        //           )
        //         ],
        //       );
        //     });

        showDialog(
            context: context,
            builder: (builder) {
              return CupertinoAlertDialog(
                title: Text('提示'),
                content: Text('确定退出当前登录账号？'),
                actions: <Widget>[
                  CupertinoDialogAction(
                    child: Text('取消'),
                    isDefaultAction: true,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  CupertinoDialogAction(
                    child: Text('确定'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      route.logout(context);
                    },
                  )
                ],
              );
            });
      } else {}
    };

    return Center(
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: PersonalHeader(newsHandle: () {}),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 232 + MediaQuery.of(context).padding.top,
            child: this._notifi,
          ),
          Positioned(
            left: 0,
            top: 232 +
                MediaQuery.of(context).padding.top +
                (this._notifiStatus == true ? 45 : 0),
            right: 0,
            bottom: 0,
            child: this._mainList,
          )
        ],
      ),
    );
  }
}
