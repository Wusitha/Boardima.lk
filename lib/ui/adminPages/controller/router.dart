import 'dart:js';

import 'package:flutter/material.dart';
import 'package:note_via/ui/adminPages/pages/boarderProfile.dart';
import 'package:note_via/ui/adminPages/pages/profile.dart';
import 'package:note_via/ui/adminPages/pages/userPage.dart';
import 'package:note_via/ui/adminPages/pages/viewComplaints.dart';
import '../constants/routes.dart';
import '../pages/advertisementPage.dart';
import '../pages/complaintPage.dart';
import '../pages/dashboardPage.dart';
import '../pages/profilePage.dart';
import '../pages/reportPage.dart';
import '../pages/settingPage.dart';



Route<dynamic> generateRoute(RouteSettings settings){

  switch(settings.name)
  {
    case DashboardPageRoute:
      return _getPageRoute(DashboardPage());
    case UserPageRoute:
      return _getPageRoute(UserPage());
    case AdvertisementPageRoute:
      return _getPageRoute(AdvertisementPage());
    case ReportPageRoute:
      return _getPageRoute(ReportPage());
    case ProfilePageRoute:
      return _getPageRoute(ProfilePage());
    case ComplaintPageRoute:
      return _getPageRoute(ComplaintsPage());
    case SettingPageRoute:
      return _getPageRoute(SettingPage());
    case BoarderProfileRoute:
      return _getPageRoute(BoarderProfileForAdmin());
    default:
      return _getPageRoute(DashboardPage());

  }

}

PageRoute _getPageRoute(Widget child){
  print(child);
  return MaterialPageRoute(builder: (context)=>child);
}

