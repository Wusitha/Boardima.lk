
import 'package:flutter/material.dart';
import 'package:note_via/models/reviewListModel.dart';
import 'package:note_via/ui/adminPages/constants/style.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:note_via/ui/adminPages/pages/boardingPlace.dart';


class ComplaintsPage extends StatefulWidget {
  @override
  State<ComplaintsPage> createState() => _ComplaintsPageState();
}

class _ComplaintsPageState extends State<ComplaintsPage> {
  Future<String> getAllReviews() async
  {
    var response=await http.get(Uri.parse("http://localhost:8080/admin/allReviews"));
    return response.body;

  }





  @override
  Widget build(BuildContext context) {


    return Container(
      color: itemColor,
      child:FutureBuilder(
        future: getAllReviews(),
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.done)
          {
            if(snapshot.hasData)
            {
              var data=snapshot.data.toString();
              var responseInJson=json.decode(data);
              ReviewListModel reviews= ReviewListModel.fromJson({"data":responseInJson});

              return ListView.builder(
                itemCount: reviews.data.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Card(
                      color:navigationBarColor ,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                      child:ListTile(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                        onTap: (){},
                        leading:Image.asset("icons/review.png"),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(

                              children: [
                                Text("${reviews.data[index].description}",style: TextStyle(fontSize: 30,color: Colors.white),),
                                SizedBox(width: 300,),
                                Column(
                                  children: [
                                    SizedBox(height: 25,),
                                    FloatingActionButton.extended(onPressed: (){},icon:Icon(Icons.man,color:fontYellow),label:Text("Boarder",style: TextStyle(color: fontYellow,fontSize: 16),),backgroundColor: Colors.green.withOpacity(0.25),),
                                  ],
                                ),
                                SizedBox(width: 60,),
                                Column(
                                  children: [
                                    SizedBox(height: 25,),
                                    FloatingActionButton.extended(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>BoardingPlaceAdmin(id:reviews.data[index].id)));},icon:Icon(Icons.house,color:fontYellow),label:Text("Boarding Place",style: TextStyle(color: fontYellow,fontSize: 16),),backgroundColor: Colors.cyanAccent.withOpacity(0.25),),
                                  ],
                                ),
                                SizedBox(width: 60,),
                                Column(
                                  children: [
                                    SizedBox(height: 25,),
                                    FloatingActionButton.extended(onPressed:()=>accept(context,reviews.data[index].id),icon:Icon(Icons.done,color:fontYellow),label:Text("Complete",style: TextStyle(color: fontYellow,fontSize: 16),),backgroundColor: Colors.red.withOpacity(0.25),),
                                  ],
                                ),
                                
                              ],
                            ),

                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text("Boarder Name :${reviews.data[index].boarderName}",style: TextStyle(color: Colors.white,fontSize: 16),),
                                SizedBox(width: 10,),
                                Text("Date :${reviews.data[index].date}",style: TextStyle(color: Colors.white,fontSize: 16),),

                              ],
                            )

                          ],
                        ),

                    ),
                  )
                  );
                },
              );

            }

          }
          return Center(
            child:CircularProgressIndicator(color: fontYellow),
          );

        },
      ),

    );


  }
  void accept(BuildContext context,int id) async{
    var response=await http.post(Uri.parse("http://localhost:8080/admin/completeReview"),
        headers: {"content-type":"application/json"},
        body: id.toString());
    print(response.body);
    Navigator.push(context,MaterialPageRoute(builder: (context)=>ComplaintsPage()));


  }

}
