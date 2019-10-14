import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ModelMainCell extends StatefulWidget {
  var name;
  var icon;
  var tip;
  var status;

  ModelMainCell(this.name, this.icon, this.tip, this.status);

  _ModelMainCellState createState() => _ModelMainCellState(
      name = this.name, icon = this.icon, tip = this.tip, status = this.status);
}

class _ModelMainCellState extends State<ModelMainCell> {
  final name;
  final icon;
  final tip;
  final bool status;

  _ModelMainCellState(this.name, this.icon, this.tip, this.status);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                child: this.icon,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          Positioned(
            left: 57,
            top: 14,
            right: 50,
            child: Text(this.name,
                style: TextStyle(
                    fontSize: 14, color: Color.fromRGBO(51, 51, 51, 1))),
          ),
          Positioned(
            left: 57,
            bottom: 13,
            right: 50,
            child: Text(this.tip,
                style: TextStyle(
                    fontSize: 9, color: Color.fromRGBO(153, 153, 153, 1))),
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
              onPressed: () {},
            ),
          ),
          Positioned(
            right: 15,
            top: 0,
            bottom: 0,
            child: Center(
              child: CupertinoSwitch(
                value: this.status,
                onChanged: (isOn) {},
              ),
            ),
          ) 
        ],
      ),
    );
  }
}
