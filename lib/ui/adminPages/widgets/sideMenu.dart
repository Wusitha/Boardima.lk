import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/routes.dart';
import '../constants/style.dart';
import '../controller/menu_controller.dart';
import '../controller/navigation_controller.dart';
import 'responsiveness.dart';
import 'sideMenuItem.dart';
import 'package:http/http.dart' as http;


class SideMenu extends StatelessWidget {
  MenuController menuController=Get.put(MenuController());
  NavigationController navigationController=Get.put(NavigationController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: navigationBarColor,
      child: ListView(
        children: [
          Container(width:50,height:60,child: Image.asset("assets/icons/logo.png",)),

          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems.map((itemName) =>SideMenuItem(itemName:itemName,
                  onTap:(){
                    if(itemName=="Authentication")
                    {
                      logout(context);
                    }
                    if(!menuController.isActive(itemName))
                        menuController.changeActiveItem(itemName);
                    if(ResponsiveWidget.isSmallScreen(context))
                      Get.back();
                    navigationController.navigateTo(itemName);



                  }) ).toList(),


          ),
        ],
      ),
    );
  }

  void logout(BuildContext context) async{
    var response=await http.post(Uri.parse("http://localhost:8080/signout")
        );
    print(response.body);
    Navigator.pushNamed(context, "/login");


  }
}
