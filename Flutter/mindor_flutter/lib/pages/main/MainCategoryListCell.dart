import 'package:flutter/material.dart';

class MainCategoryListCell extends StatefulWidget {
  final equipmentName;
  final labelName;
  final iconCategoryUrl;
  final online;
  final lastRow;
  final onPressed;

  MainCategoryListCell(this.equipmentName, this.labelName, this.iconCategoryUrl,
      this.online, this.lastRow, this.onPressed);

  _MainCategoryListCellState createState() => _MainCategoryListCellState(
      this.equipmentName,
      this.labelName,
      this.iconCategoryUrl,
      this.online,
      this.lastRow,
      this.onPressed);
}

class _MainCategoryListCellState extends State<MainCategoryListCell> {
  final equipmentName;
  final labelName;
  final iconCategoryUrl;
  final online;
  final lastRow;
  final onPressed;

  _MainCategoryListCellState(this.equipmentName, this.labelName,
      this.iconCategoryUrl, this.online, this.lastRow, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 30,
            top: 14,
            bottom: 14,
            child: Container(
              width: 32,
              height: 32,
              child: ClipRRect(
                child: FadeInImage.assetNetwork(
                  placeholder: 'images/placeholder.png',
                  image: this.iconCategoryUrl,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          Positioned(
            right: 24,
            top: 0,
            bottom: 0,
            child: Center(
              child: Container(
                  width: 13,
                  height: 13,
                  decoration: BoxDecoration(
                      color: this.online == true
                          ? Color.fromRGBO(0, 211, 99, 1)
                          : Color.fromRGBO(153, 153, 153, 1),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(13 / 2))),
            ),
          ),
          Positioned(
            left: 74,
            top: 12,
            right: 52,
            child: Text(
              this.equipmentName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style:
                  TextStyle(color: Color.fromRGBO(51, 51, 51, 1), fontSize: 12),
            ),
          ),
          Positioned(
            left: 74,
            bottom: 12,
            right: 52,
            child: Text(
              this.labelName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Color.fromRGBO(153, 153, 153, 1), fontSize: 10),
            ),
          ),
          Positioned(
            left: this.lastRow == true ? 0 : 18,
            bottom: 0,
            right: 0,
            child: Container(
              height: 1,
              color: Color.fromRGBO(230, 230, 230, 1),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: 0,
            child: FlatButton(
              onPressed: this.onPressed, 
              child: null
            ),
          )
        ],
      ),
    );
  }
}
