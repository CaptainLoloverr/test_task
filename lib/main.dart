import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:provider/provider.dart';
import 'package:redux/redux.dart';
import 'package:solid_softvare_test_task/native_state_management/native_management.dart';
import 'package:solid_softvare_test_task/provider_state_management/color_provider.dart';
import 'package:solid_softvare_test_task/provider_state_management/provider_state_management.dart';
import 'package:solid_softvare_test_task/redux_state_management/app/app_state.dart';
import 'package:solid_softvare_test_task/redux_state_management/ui/color_page.dart';

void main() {
  runApp(MyApp());
}

// Uncomment this to check native state management
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//         title: 'Test task',
//         home: NativeStateManagement(),
//     );
//   }
// }

// //Uncomment this to check provider state management
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => ColorProvider(),
//       child: MaterialApp(
//         title: 'Test task',
//         home: ProviderStateManagement(),
//       ),
//     );
//   }
// }

// Redux state management
class MyApp extends StatelessWidget {
  Store store = Store<AppState>(
    AppState.getAppReducer,
    initialState: AppState.initial(),
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        home: ReduxStateManagement(store: store),
      ),
    );
  }
}
