import 'package:flutter/material.dart';
import 'package:note_via/ui/adminPages/constants/style.dart';
import 'package:note_via/ui/bottomNavigationBar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:note_via/models/reviewListModel.dart';

class Complaints extends StatefulWidget {
  const Complaints({Key? key}) : super(key: key);

  @override
  State<Complaints> createState() => ComplaintsState();
}

class ComplaintsState extends State<Complaints> {
  Future<String> getAllReviews() async
  {
    var response=await http.get(Uri.parse("http://localhost:8080/owner/getReviews"));
    return response.body;

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor:const  Color(0xFF232121),
        appBar: AppBar(title: Text("Reviews",style: TextStyle(color: Colors.white,fontSize: 24),),leading:Image.asset("assets/logo.png") ,backgroundColor:const  Color(0xFF232121) ,),
        body: FutureBuilder(
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
                                Text("${reviews.data[index].description}",style: TextStyle(fontSize: 22,color: Colors.white),),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Text("Boarder Name :${reviews.data[index].boarderName}",style: TextStyle(color: Colors.white,fontSize: 14),),
                                    SizedBox(width: 10,),
                                    Text("Date :${reviews.data[index].date}",style: TextStyle(color: Colors.white,fontSize: 14),),

                                  ],
                                ),
                                SizedBox(height: 6,),
                                Row(
                                  children: [
                                    SizedBox(width: 140,),
                                    FloatingActionButton.extended(onPressed: (){},icon:Icon(Icons.send,color:fontYellow),label:Text("Complaint",style: TextStyle(color: fontYellow,fontSize: 13),),backgroundColor: Colors.amber.withOpacity(0.25),),
                                    // SizedBox(width: 10,),
                                    // FloatingActionButton.extended(onPressed: ()=>accept(context,boarders.data[0].id),icon:Icon(Icons.done,color:fontYellow),label:Text("Accept",style: TextStyle(color: fontYellow,fontSize: 13),),backgroundColor: Colors.green.withOpacity(0.25),),
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

        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
