import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/routes.dart';
import '../constants/style.dart';

class MenuController extends GetxController{
 var activeItem=DashboardPageRoute.obs;
  void changeActiveItem( String itemName)
 {

   activeItem.value=itemName;

 }

  bool isActive(String itemName)=>activeItem.value==itemName;

  Widget returnIconFor(String itemName)
  {
    switch(itemName)
    {
      case DashboardPageRoute:
        return customIcon(Icons.dashboard, itemName);
      case UserPageRoute:
        return customIcon(Icons.supervised_user_circle, itemName);
      case AdvertisementPageRoute:
        return customIcon(Icons.add_business, itemName);
      case ReportPageRoute:
        return customIcon(Icons.book_outlined, itemName);
      case ProfilePageRoute:
        return customIcon(Icons.person_rounded, itemName);
      case ComplaintPageRoute:
        return customIcon(Icons.report_problem, itemName);
      case AuthenticationPageRoute:
        return customIcon(Icons.exit_to_app, itemName);
      case SettingPageRoute:
        return customIcon(Icons.settings, itemName);
      default:
        return customIcon(Icons.exit_to_app, itemName);


    }

  }

  Widget customIcon(IconData icon,String itemName)
  {
    if(isActive(itemName))
      return Icon(icon,color: navigationBarColor,size:28);
    else
      return Icon(icon,color: iconYellow,size:28);


  }



}