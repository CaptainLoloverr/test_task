import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solid_softvare_test_task/provider_state_management/color_provider.dart';

class ProviderStateManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ColorProvider>(context);
    return Scaffold(
      body: GestureDetector(
        onTap: provider.setNewColor,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: provider.currentColor,
          child: Center(
            child: Text('Hey there!'),
          ),
        ),
      ),
    );
  }
}
