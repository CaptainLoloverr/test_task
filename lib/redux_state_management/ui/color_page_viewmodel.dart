import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:solid_softvare_test_task/redux_state_management/app/app_state.dart';
import 'package:solid_softvare_test_task/redux_state_management/color_page/color_page_selectors.dart';

class ColorPageViewModel {
  final Color currentColor;
  final void Function(Color) setNewColor;

  ColorPageViewModel({
    this.currentColor,
    this.setNewColor,
  });

  static ColorPageViewModel fromStore(Store<AppState> store) {
    return ColorPageViewModel(
      currentColor: ColorPageSelector.getCurrentColor(store),
      setNewColor: ColorPageSelector.setNewColor(store),
    );
  }
}
