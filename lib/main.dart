import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      primarySwatch: Colors.cyan,
      ),
      home: new Home(),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        title: new Text("Circle",
        style: new TextStyle(
          color: Colors.white,
          fontFamily: "Menlo",
          letterSpacing: 1.0
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: CircleWidget(),
    );
  }
}

class CircleWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return new Center(
      child: new Container(
        height: 200.0,
        width: 200.0,
        child: new CustomPaint(
          foregroundPainter: Circle(),
        ),
      ),
    );
  }
}

class Circle extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width/2,size.height/2);
    double radius = min(size.width/2, size.height/2);
    Paint paint = Paint();
    paint.color = Colors.red;
    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}