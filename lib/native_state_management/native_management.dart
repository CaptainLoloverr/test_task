import 'package:flutter/material.dart';
import 'dart:math' as math;

class NativeStateManagement extends StatefulWidget {
  @override
  _NativeStateManagementState createState() => _NativeStateManagementState();
}

class _NativeStateManagementState extends State<NativeStateManagement> {
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
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: currentColor,
          child: Center(
            child: Text('Hey there!'),
          ),
        ),
      ),
    );
  }
}
