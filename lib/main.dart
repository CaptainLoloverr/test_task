import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test task',
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  Color currentColor = Colors.white;

  void setNewColor() {
    setState(() {
      currentColor = Color((math.Random().nextDouble() * 0xFFFFFFFF).toInt());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: setNewColor,
        child: Container(
          color: currentColor,
        ),
      ),
    );
  }
}
