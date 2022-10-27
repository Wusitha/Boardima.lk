import 'dart:js';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:note_via/models/advertisementDetailsModel.dart';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:note_via/ui/adminPages/constants/style.dart';
import 'package:note_via/ui/adminPages/controller/navigation_controller.dart';
import 'package:note_via/ui/adminPages/pages/AdvertisementWidget/AllAdvertisements.dart';
import 'package:note_via/ui/adminPages/pages/complaintPage.dart';

class BoardingPlaceAdmin extends StatelessWidget {
  int id=1;
  NavigationController navigationController=Get.put(NavigationController());
  BoardingPlaceAdmin({required this.id});
  Future<String> getAdvertisement() async
  {

    var response=await http.get(Uri.parse("http://localhost:8080/admin/getSpecificAdvertisement?id=${id.toString()}"));
    return response.body;

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: itemColor,
      child: FutureBuilder(
        future: getAdvertisement(),
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.done)
          {
            if(snapshot.hasData)
            {
              var data=snapshot.data.toString();
              var responseInJson=json.decode(data);
              AdvertisementDetailsModel advertisements= AdvertisementDetailsModel.fromJson(responseInJson);

              return Container(


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
                              child: Image.asset(advertisements.imgUrl)
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          Text("Owner Name :",style: TextStyle(color: fontYellow,fontSize: 20),),
                          SizedBox(width: 30,),
                          Text(advertisements.ownerName,style: TextStyle(color: Colors.yellow[300],fontSize: 18)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Description :",style: TextStyle(color: fontYellow,fontSize: 20),),
                          SizedBox(width: 30,),
                          Text(advertisements.description,style: TextStyle(color: Colors.yellow[300],fontSize: 18)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Location :",style: TextStyle(color: fontYellow,fontSize: 20),),
                          SizedBox(width: 30,),
                          Text(advertisements.location,style: TextStyle(color: Colors.yellow[300],fontSize: 18)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Price(Rs.) :",style: TextStyle(color: fontYellow,fontSize: 20),),
                          SizedBox(width: 30,),
                          Text(advertisements.price.toString(),style: TextStyle(color: Colors.yellow[300],fontSize: 18)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Key Money(Rs.) :",style: TextStyle(color: fontYellow,fontSize: 20),),
                          SizedBox(width: 30,),
                          Text(advertisements.keyMoney.toString(),style: TextStyle(color: Colors.yellow[300],fontSize: 18)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Number of Baths :",style: TextStyle(color: fontYellow,fontSize: 20),),
                          SizedBox(width: 30,),
                          Text(advertisements.baths.toString(),style: TextStyle(color: Colors.yellow[300],fontSize: 18)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Number of Beds :",style: TextStyle(color: fontYellow,fontSize: 20),),
                          SizedBox(width: 30,),
                          Text(advertisements.beds.toString(),style: TextStyle(color: Colors.yellow[300],fontSize: 18)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Date :",style: TextStyle(color: fontYellow,fontSize: 20),),
                          SizedBox(width: 30,),
                          Text(advertisements.date,style: TextStyle(color: Colors.yellow[300],fontSize: 18)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [

                          SizedBox(width: 30,),
                          FloatingActionButton.extended(onPressed:()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ComplaintsPage())),icon:Icon(Icons.done,color:fontYellow),label:Text("Back",style: TextStyle(color: fontYellow,fontSize: 16),),backgroundColor: Colors.yellow.withOpacity(0.25),),
                        ],
                      ),



                    ],
                  ),
                ),
              );

            }

          }
          return Center(
            child:CircularProgressIndicator(color: fontYellow),
          );
        },

      ) ,
    );
  }


}
