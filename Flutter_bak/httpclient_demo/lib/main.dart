import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart'; 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //获取天气数据 
  void getWeatherData() async {
    try {
      var _httpClient = HttpClient();
      var _uri = Uri(scheme: 'http', host: 't.weather.sojson.com', queryParameters: {
        '_id': '24',
        'city_code': '10103010',
        'city_name': '天津'
      });

      //Uri.parse('http://t.weather.sojson.com/api/weather/city/10103010')
      var _request = await _httpClient.getUrl(_uri);
      var _response = await _request.close();

      var result = await _response.transform(utf8.decoder).join();
      print(result);

      _httpClient.close();
    } catch (e) {
      print('请求失败:$e');
    } finally {
      print('请求结束');
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'httpclient请求',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'httpclient请求',
          ), 
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              getWeatherData();
            },
            child: Text(
              '获取天气数据',
            ),
          ),
        ),
      ),
    );
  }
  
}