import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:solid_softvare_test_task/redux_state_management/app/app_state.dart';
import 'package:solid_softvare_test_task/redux_state_management/color_page/color_page_actions.dart';


class ColorPageSelector {
  static void Function(Color newColor) setNewColor(Store<AppState> store) {
    return (Color newColor) => store.dispatch(ChangeColor(newColor));
  }
  static Color getCurrentColor(Store<AppState> store){
    return store.state.colorPageState.currentColor;
  }
}
