import 'package:flutter/material.dart';
import 'package:note_via/ui/adminPages/constants/style.dart';
import 'package:note_via/ui/adminPages/widgets/customtxt.dart';
import 'package:note_via/ui/adminPages/widgets/responsiveness.dart';

import '../controller/menu_controller.dart';
import 'package:get/get.dart';
MenuController menuController= Get.put(MenuController());

AppBar topNavigationBar(BuildContext context,GlobalKey<ScaffoldState> key)=>AppBar(

  leading: !ResponsiveWidget.isSmallScreen(context)?
  SizedBox(width: 46,):IconButton(icon:Icon(Icons.menu,color: iconYellow),onPressed: (){
    key.currentState!.openDrawer();
  },),
  backgroundColor: navigationBarColor,
  elevation: 0,
  title: Row(
    children: [
      ResponsiveWidget.isLargeScreen(context)?
      SizedBox(width: 185):SizedBox(width: 5),
      Visibility(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(()=>Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            CustomText(text: menuController.activeItem.toString(),size: ResponsiveWidget.isLargeScreen(context)?20:8,color: fontYellow),
            CustomText(text: "Welcome Sasindu Sahan",size: ResponsiveWidget.isLargeScreen(context)?20:10,color: iconYellow),

          ],)
          ),



      ],)
      ),
      ResponsiveWidget.isLargeScreen(context)?
      SizedBox(width: 550):SizedBox(width: 100),
      Expanded(child: Visibility(
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(color: fontYellow,fontSize:ResponsiveWidget.isLargeScreen(context)?18:12 ),
            fillColor: Color(0xFF404246),
            suffixIcon: Icon(Icons.search,color: iconYellow,size:ResponsiveWidget.isLargeScreen(context)?28:18 ,),
            border:InputBorder.none
          ),
        ),
      )
      ),
      ResponsiveWidget.isLargeScreen(context)?
      SizedBox(width: 20):SizedBox(width: 3),
      IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color:iconYellow,size:ResponsiveWidget.isLargeScreen(context)?28:18 , )),
      ResponsiveWidget.isLargeScreen(context)?
      SizedBox(width: 20):SizedBox(width: 5),
      Container(
        child: CircleAvatar(backgroundImage:AssetImage("assets/icons/profile.jpg")),
      ),
      ResponsiveWidget.isLargeScreen(context)?
      SizedBox(width: 20):SizedBox(width: 5),
    ],
  ),

);