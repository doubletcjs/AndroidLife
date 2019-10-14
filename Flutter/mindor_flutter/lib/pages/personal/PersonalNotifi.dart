import 'package:flutter/material.dart';

class PersonalNotifi extends StatefulWidget {
  var changeHandle;

  _PersonalNotifiState _state = _PersonalNotifiState();
  _PersonalNotifiState createState() {
    return _state;
  }

  var notifiStatus = true; 
  void showNotifi(bool value) {
    this._state.setNotifi(value);
  }
}

class _PersonalNotifiState extends State<PersonalNotifi> {
  void setNotifi(bool value) {
    setState(() {
      this.widget.notifiStatus = value;
    });
  }

  @override
  Widget build(BuildContext context) { 
    return this.widget.notifiStatus == false
        ? Container(
            height: 0,
            child: null,
          )
        : Container(
            color: Colors.white,
            height: 45,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 12,
                  right: 12,
                  top: 7,
                  child: Text(
                    '开启允许通知',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(85, 85, 85, 1)),
                  ),
                ),
                Positioned(
                  left: 12,
                  right: 12,
                  bottom: 7,
                  child: Text(
                    '当前设备未开启允许通知，请及时开启，以便您能收到设备警报消息通知 ',
                    style: TextStyle(
                        fontSize: 9, color: Color.fromRGBO(119, 119, 119, 1)),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  bottom: 0,
                  child: FlatButton(
                    child: null,
                    onPressed: this.widget.changeHandle,
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 1,
                    color: Color.fromRGBO(229, 229, 229, 1),
                  ),
                )
              ],
            ),
          );
  }
}
