import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  final Map arguments;

  ProductDetailPage({this.arguments});

  _ProductDetailPageState createState() => _ProductDetailPageState(arguments: this.arguments);
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final Map arguments;
  _ProductDetailPageState({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情'),
      ),
      body: Center(
        child: Text(
          '商品id:${this.arguments != null ? this.arguments['pid'] : '0'}',
        ),
      ),
    );
  }
}