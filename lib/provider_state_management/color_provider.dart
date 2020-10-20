import 'package:flutter/material.dart';
import 'dart:math' as math;

class ColorProvider with ChangeNotifier{
  Color currentColor = Colors.white;

  void setNewColor(){
    currentColor = Color((math.Random().nextDouble() * 0xFFFFFFFF).toInt());
    notifyListeners();
  }

}