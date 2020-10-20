import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:solid_softvare_test_task/redux_state_management/app/reducer.dart';
import 'package:solid_softvare_test_task/redux_state_management/color_page/color_page_actions.dart';


class ColorPageState {
  final Color currentColor;

  ColorPageState({
    @required this.currentColor,
  });

  ColorPageState copyWith({@required Color newColor}) {
    return ColorPageState(
      currentColor: newColor ?? currentColor,
    );
  }

  factory ColorPageState.initial() =>
      ColorPageState(
       currentColor: Colors.white,
      );

  ColorPageState reducer(dynamic action) {
    return Reducer<ColorPageState>(
      actions: HashMap.from({
        ChangeColor: (action) => _setNewButtonIndex(action),
      }),
    ).updateState(action, this);
  }

  ColorPageState _setNewButtonIndex(ChangeColor action){
    return copyWith(newColor: action.newColor);
  }
}