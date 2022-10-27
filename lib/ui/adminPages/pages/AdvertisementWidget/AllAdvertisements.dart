import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_via/models/advertisementListModel.dart';
import 'package:note_via/ui/adminPages/constants/style.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:get/get.dart';

import 'package:note_via/ui/adminPages/controller/navigation_controller.dart';
import 'package:note_via/ui/adminPages/pages/advertisementDetails.dart';
import 'package:note_via/ui/adminPages/pages/test.dart';

class AllAdvertisements extends StatefulWidget {
  @override
  _AllAdvertisementsState createState() => _AllAdvertisementsState();
}

class _AllAdvertisementsState extends State<AllAdvertisements> {
  NavigationController navigationController=Get.put(NavigationController());


  Future<String> getAllAdvertisements() async
  {
  var response=await http.get(Uri.parse("http://localhost:8080/admin/allAdvertisements"));
  return response.body;

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: itemColor,
      child:FutureBuilder(
        future: getAllAdvertisements(),
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.done)
          {
            if(snapshot.hasData)
            {
              var data=snapshot.data.toString();
              var responseInJson=json.decode(data);
              AdvertisementListModel advertisements= AdvertisementListModel.fromJson({"data":responseInJson});

              return GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 440,
                  crossAxisSpacing: 200,
                  mainAxisSpacing: 50,
                  childAspectRatio: 1,
                    mainAxisExtent:440
                ),
                itemCount: advertisements.data.length,
                itemBuilder: (context,index){
                  return Card(
                    color: navigationBarColor,
                    child: ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Advertisement(id: advertisements.data[index].id)));
                      },
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                              height: 400,
                              width: 400,
                              child: Image.asset("${advertisements.data[index].imgUrl}")
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              SizedBox(width: 80,),
                              Text("Location: "+advertisements.data[index].location,style: TextStyle(color: fontYellow,fontSize: 18),),
                              SizedBox(width: 60,),
                              Text("Price(Rs): "+advertisements.data[index].price.toString(),style: TextStyle(color: fontYellow,fontSize: 18),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );

            }

          }
          return Center(
            child:CircularProgressIndicator(color: fontYellow),
          );
        },

      )
      
    );
  }
}
