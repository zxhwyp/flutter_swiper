import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
import 'src/ExampleCustom.dart';
import 'src/config.dart';
import 'src/ExampleSwiperInScrollView.dart';

import 'package:flutter/cupertino.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new ExamplePhone(),
      //home: buildHome(),
    );
  }
}

class ExamplePhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width - 88.0;
    final colors = [Colors.red, Colors.green, Colors.blue];
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Phone"),
      ),
      body: new Stack(
        children: <Widget>[
          ConstrainedBox(
            constraints: new BoxConstraints.expand(),
            child: new Image.asset(
              "images/bg.jpeg",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 35),
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return new Image.network(
                  "https://via.placeholder.com/288x188",
                  fit: BoxFit.fill,
                  color: colors[index],
                );
              },
              itemCount: 3,
              itemWidth: w,
              itemHeight: 174 * w / 287.0,
              layout: SwiperLayout.STACK,
            ),
          )
        ],
      ),
    );
  }
}
