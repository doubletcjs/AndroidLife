import 'package:flutter/material.dart';

class CategoryMainCell extends StatefulWidget {
  final name;
  final tip;
  final iconUrl;
  final onPressed;

  CategoryMainCell(this.name, this.tip, this.iconUrl, this.onPressed);

  _CategoryMainCellState createState() => _CategoryMainCellState(this.name, this.tip, this.iconUrl, this.onPressed);
}

class _CategoryMainCellState extends State<CategoryMainCell> {
  final name;
  final tip;
  final iconUrl;
  final onPressed;

  _CategoryMainCellState(this.name, this.tip, this.iconUrl, this.onPressed);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 120,
            bottom: 0,
            right: 0,
            child: Container(
              height: 1,
              color: Color.fromRGBO(230, 230, 230, 1),
            ),
          ),
          Positioned(
            left: 25,
            top: 10,
            bottom: 10,
            child: Container(
              height: 70,
              width: 70,
              child: ClipRRect(
                child: FadeInImage.assetNetwork(
                  placeholder: 'images/placeholder.png',
                  image: this.iconUrl,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(35),
              ),
            ),
          ),
          Positioned(
            left: 120,
            top: 24,
            right: 12,
            child: Text(
              this.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 17,
                color: Color.fromRGBO(51, 51, 51, 1)
              )
            ),
          ), 
          Positioned(
            left: 120,
            bottom: 24,
            right: 12,
            child: Text(
              this.tip,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12,
                color: Color.fromRGBO(153, 153, 153, 1)
              )
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: 0,
            child: FlatButton(
              onPressed: this.onPressed,
              child: null,
            ),
          )
        ],
      ),
    );
  }
}
