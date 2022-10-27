import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/routes.dart';
import '../controller/navigation_controller.dart';
import '../controller/router.dart';

NavigationController navigationController=Get.put(NavigationController());
Navigator localNavigator()=>Navigator(
  key:navigationController.navigationKey,
  initialRoute:DashboardPageRoute,
  onGenerateRoute: generateRoute,
  
);