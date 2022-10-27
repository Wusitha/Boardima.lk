import 'package:flutter/material.dart';
import 'package:note_via/ui/adminPages/constants/style.dart';

class  BoarderProfileForAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: itemColor,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text("Sasindu Sahan",style: TextStyle(color:fontYellow,fontSize: 30),),
          SizedBox(height: 20,),
          Container(color:navigationBarColor,child:Text("Full Name:Sasindu Sahan",style:TextStyle(color:Colors.grey[50],fontSize: 20),)),
          SizedBox(height: 20,),
          Container(color:navigationBarColor,child:Text("NIC:9911651651",style:TextStyle(color:Colors.grey[50],fontSize: 20),)),
          SizedBox(height: 20,),
          Container(color:navigationBarColor,child:Text("Contact Number:0770610851",style:TextStyle(color:Colors.grey[50],fontSize: 20),)),
          SizedBox(height: 20,),
          Container(color:navigationBarColor,child:Text("E mail:sasindusahansankalpa@gmail.com",style:TextStyle(color:Colors.grey[50],fontSize: 20),)),
          SizedBox(height: 20,),
          Container(color:navigationBarColor,child:Text("Gender:Male",style:TextStyle(color:Colors.grey[50],fontSize: 20),)),
          SizedBox(height: 20,),
          Container(color:navigationBarColor,child:Text("Full Name:Sasindu Sahan",style:TextStyle(color:Colors.grey[50],fontSize: 20),)),

        ],
      )


    );
  }
}
