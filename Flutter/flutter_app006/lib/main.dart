import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Expanded Demo',
          ),
        ),
        body: MyAppContent(),
      ),
      theme: ThemeData.dark(),
    );
  }
}

//'https://www.itying.com/images/flutter/1.png'

class MyAppContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(2),
      child: Column(
        children: <Widget>[
          Container(
            height: 180,
            color: Colors.black,
          ),
          // Row(
          //   children: <Widget>[
          //     Expanded(
          //       flex: 1,
          //       child: Container(
          //         height: 180,
          //         color: Colors.black,
          //       ),
          //     )
          //   ],
          // ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  height: 180,
                  child: Image.network(
                    'https://www.itying.com/images/flutter/1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: Container(
                  height: 180,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 85,
                        child: Image.network(
                          'https://www.itying.com/images/flutter/2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 85,
                        child: Image.network(
                          'https://www.itying.com/images/flutter/3.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
