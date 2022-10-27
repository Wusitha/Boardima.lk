import 'package:flutter/material.dart';
import 'package:note_via/ui/adminPages/widgets/largeScreen.dart';
import 'package:note_via/ui/adminPages/widgets/responsiveness.dart';
import 'package:note_via/ui/adminPages/widgets/sideMenu.dart';
import 'package:note_via/ui/adminPages/widgets/smallScreen.dart';
import 'package:note_via/ui/adminPages/widgets/top_nav.dart';
class AdminLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key:scaffoldKey,
      appBar:topNavigationBar(context, scaffoldKey),
      drawer: Drawer(child: SideMenu(),),
      body:ResponsiveWidget(largeScreen: LargeScreen(),smallScreen: SmallScreen(),),


    );
  }


}
