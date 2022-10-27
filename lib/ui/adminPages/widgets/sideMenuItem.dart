import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/style.dart';
import '../controller/menu_controller.dart';
import 'customtxt.dart';


class SideMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  MenuController menuController=Get.put(MenuController());


  SideMenuItem({required this.itemName,required this.onTap});

  @override
  Widget build(BuildContext context) {
   double width=MediaQuery.of(context).size.width;
   return InkWell(
     onTap: onTap,
     child: Obx(()=>Column(
       children: [
         SizedBox(height: 8,),
         Container(
           height: 36,
           width: 240,
           child: menuController.isActive(itemName)?
           Row(
             children: [
               menuController.returnIconFor(itemName),
               SizedBox(width: 5,),
               Flexible(child:CustomText(text: (itemName=="Authentication")?"Logout":itemName, size: 18, color: navigationBarColor)),
             ],
           ):
           Row(
             children: [
               menuController.returnIconFor(itemName),
               SizedBox(width: 5,),
               Flexible(child: CustomText(text: (itemName=="Authentication")?"Logout":itemName, size: 18, color: iconYellow)),
             ],
           ),
           decoration: BoxDecoration(
               color: menuController.isActive(itemName)?fontYellow:itemColor,
               border: Border.all(
                 color: menuController.isActive(itemName)?fontYellow:itemColor,
               ),
               borderRadius: BorderRadius.all(Radius.circular(5))
           ),



         ),
         SizedBox(height: 20,),
       ],
     )
     ),
   );
  }
}
