import 'package:flutter/material.dart';
const int largeScreenSize=1366;
const int smallScreenSize=768;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget smallScreen;

  ResponsiveWidget({required this.largeScreen,  required this.smallScreen});

  static bool isSmallScreen(BuildContext context)=>
      MediaQuery.of(context).size.width<=smallScreenSize;
  static bool isLargeScreen(BuildContext context)=>
      MediaQuery.of(context).size.width>smallScreenSize;




  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints)
    {
      double width = constraints.maxWidth;
      if(width>smallScreenSize)
        return largeScreen;
      else
        return smallScreen;

    });
  }


}
