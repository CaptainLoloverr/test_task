import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:solid_softvare_test_task/redux_state_management/app/app_state.dart';
import 'package:solid_softvare_test_task/redux_state_management/ui/color_page_viewmodel.dart';

class ReduxStateManagement extends StatelessWidget {
  final Store<AppState> store;

  ReduxStateManagement({@required this.store});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ColorPageViewModel>(
      converter: ColorPageViewModel.fromStore,
      builder: (BuildContext context, ColorPageViewModel viewModel) {
        return Scaffold(
          body: GestureDetector(
            onTap: ()=>viewModel.setNewColor(newColor),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: store.state.colorPageState.currentColor,
              child: Center(
                child: Text('Hey there!'),
              ),
            ),
          ),
        );
      },
    );
  }
  Color get newColor{
    return Color((math.Random().nextDouble() * 0xFFFFFFFF).toInt());
  }
}
