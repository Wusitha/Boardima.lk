import 'dart:js';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:note_via/models/advertisementDetailsModel.dart';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:note_via/ui/adminPages/constants/style.dart';
import 'package:note_via/ui/adminPages/controller/navigation_controller.dart';
import 'package:note_via/ui/adminPages/pages/AdvertisementWidget/AllAdvertisements.dart';

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: itemColor,
      child:  Container(

             child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(width:300),
                          Container(
                              width: 400,
                              height: 300,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 5,
                                    color: navigationBarColor
                                ),
                              ),
                              child: Container(
                                width: 150,
                                height: 150,
                                child: Icon(Icons.supervised_user_circle_outlined,color: fontYellow,size: 300,),
                              )
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          Text("Name :",style: TextStyle(color: fontYellow,fontSize: 20),),
                          SizedBox(width: 30,),
                          Text("Sasindu Sahan",style: TextStyle(color: Colors.yellow[300],fontSize: 18)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Contact :",style: TextStyle(color: fontYellow,fontSize: 20),),
                          SizedBox(width: 30,),
                          Text("0770610851",style: TextStyle(color: Colors.yellow[300],fontSize: 18)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Email :",style: TextStyle(color: fontYellow,fontSize: 20),),
                          SizedBox(width: 30,),
                          Text("sasindusahan34@gmail.com",style: TextStyle(color: Colors.yellow[300],fontSize: 18)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Gender :",style: TextStyle(color: fontYellow,fontSize: 20),),
                          SizedBox(width: 30,),
                          Text("Male",style: TextStyle(color: Colors.yellow[300],fontSize: 18)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Age :",style: TextStyle(color: fontYellow,fontSize: 20),),
                          SizedBox(width: 30,),
                          Text("22",style: TextStyle(color: Colors.yellow[300],fontSize: 18)),
                        ],
                      ),
                      SizedBox(height: 10,),




                    ],
                  ),
                ),
              )
    );


}}
