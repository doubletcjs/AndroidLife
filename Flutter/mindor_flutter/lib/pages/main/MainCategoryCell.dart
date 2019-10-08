import 'package:flutter/material.dart';

class MainCategoryCell extends StatefulWidget {
  String name;
  String imageUrl;
  int onlineCount = 0;
  int totalCount = 0;

  MainCategoryCell(this.imageUrl, this.name, this.onlineCount, this.totalCount);

  _MainCategoryCellState createState() => _MainCategoryCellState(
      this.imageUrl, this.name, this.onlineCount, this.totalCount);
}

class _MainCategoryCellState extends State<MainCategoryCell> {
  String name;
  String imageUrl;
  int onlineCount = 0;
  int totalCount = 0;

  _MainCategoryCellState(
      this.imageUrl, this.name, this.onlineCount, this.totalCount);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Container(
        margin: EdgeInsets.fromLTRB(12, 12, 12, 0),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: ClipRRect(
                      child: FadeInImage.assetNetwork(
                          placeholder: 'images/placeholder.png',
                          image: this.imageUrl,
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: FlatButton(
                      padding: EdgeInsets.all(0.0),
                      onPressed: () {
                        print('object');
                      },
                      child: null,
                      shape: RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 10,
              top: 0,
              bottom: 0,
              child: Image.asset(
                'images/image_06.png',
                width: 11,
              ),
            ),
            Positioned(
              left: 12,
              top: 12,
              right: 31,
              child: Text(
                this.name,
                style: TextStyle(fontSize: 14, color: Colors.black),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 12,
              bottom: 12,
              right: 45,
              child: Text(
                '${this.onlineCount}/${this.totalCount}',
                style: TextStyle(fontSize: 10, color: Colors.black),
                maxLines: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
