import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController{

  final GlobalKey<NavigatorState> navigationKey=GlobalKey();
  Future<dynamic> navigateTo(String routeName)
  {

    return navigationKey.currentState!.pushNamed(routeName);
  }
  goBack()=>navigationKey.currentState!.pop();


}