import 'package:flutter/material.dart';
import 'localNavigator.dart';
import 'sideMenu.dart';

class LargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SideMenu(),
        ),
        Expanded(
          flex: 5,
          child: localNavigator(),
        )

      ],
    );
  }
}
