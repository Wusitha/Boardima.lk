
import 'package:flutter/material.dart';
import 'package:note_via/models/userListModel.dart';
import 'package:note_via/models/userModel.dart';
import 'package:note_via/ui/adminPages/constants/style.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class Boarders extends StatefulWidget {
  @override
  State<Boarders> createState() => _BoardersState();
}

class _BoardersState extends State<Boarders> {
  Future<String> getBoarders() async
  {
    var response=await http.get(Uri.parse("http://localhost:8080/admin/boarders"));
    return response.body;

  }

  String getType(String type){
    if(type=="B")
      return "Boarder";
    return "";

  }

  String getState(String state){
    if(state=="A")
      return "Active";
    else if(state=="P")
      return "Inactive";

    return "";

  }

  @override
  Widget build(BuildContext context) {


    return Container(
      color: itemColor,
      child:FutureBuilder(
        future: getBoarders(),
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.done)
          {
            if(snapshot.hasData)
            {
              var data=snapshot.data.toString();
              var responseInJson=json.decode(data);
              UserListModel users= UserListModel.fromJson({"data":responseInJson});

              return ListView.builder(
                itemCount: users.data.length,
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
                            Text("${users.data[index].firstName} ${users.data[index].lastName}",style: TextStyle(fontSize: 30,color: Colors.white),),
                            SizedBox(height: 10,),
                            Text(getType(users.data[index].type),style: TextStyle(fontSize: 12,color:complainantColor),),
                          ],
                        ),
                        trailing: Container(
                          padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                          child: Text(getState(users.data[index].state),style: TextStyle(fontSize: 12,color: (getState(users.data[index].state)=="Active")?Colors.green:Colors.red),),
                          decoration: BoxDecoration(
                              borderRadius:BorderRadius.all(Radius.circular(25) ),
                              color:(getState(users.data[index].state)=="Active")?Colors.green.withOpacity(0.3):Colors.red.withOpacity(0.3) ),

                        ),
                        tileColor: navigationBarColor,

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
      ),

    );

  }
}
