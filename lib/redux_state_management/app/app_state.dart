import 'package:flutter/foundation.dart';
import 'package:redux_epics/redux_epics.dart';
import 'file:///C:/Users/User/Desktop/test_task/lib/redux_state_management/color_page/color_page_state.dart';

class AppState {
  final ColorPageState colorPageState;

  AppState({@required this.colorPageState});

  factory AppState.initial() {
    return AppState(
      colorPageState: ColorPageState.initial(),
    );
  }

  static AppState getAppReducer(AppState state, dynamic action) {
    const String TAG = '[appReducer]';
    print('$TAG => <appReducer> => action: ${action.runtimeType}');
    return AppState(
      colorPageState: state.colorPageState.reducer(action),
    );
  }

}
