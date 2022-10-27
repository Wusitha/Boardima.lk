import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_via/ui/adminPages/constants/style.dart';
import 'package:note_via/ui/adminPages/pages/userWidgets/MA.dart';
import 'package:note_via/ui/adminPages/pages/userWidgets/allUsers.dart';
import 'package:note_via/ui/adminPages/pages/userWidgets/boarders.dart';
import 'package:note_via/ui/adminPages/pages/userWidgets/boardingOwners.dart';
import 'package:note_via/ui/boarding_owner/boarding_owner.dart';

class UserPage  extends StatefulWidget {

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {


    return DefaultTabController(length: 4,
        child: Column(
          children: [
            Container(
              color: itemColor,
              child: TabBar(
                indicatorColor:fontYellow ,
                tabs: [
                   Tab(child:Text("All Users",style: TextStyle(color:fontYellow,fontSize: 16),)),
                   Tab(child:Text("Boarder",style: TextStyle(color:fontYellow,fontSize: 16),)),
                   Tab(child:Text("Boarder Owner",style: TextStyle(color:fontYellow,fontSize: 16),)),
                   Tab(child:Text("Management Assistant",style: TextStyle(color:fontYellow,fontSize: 16),)),

              ],
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                Container(child: AllUser(),),
                Container(child: Boarders(),),
                Container(child: BoardingOwners(),),
                Container(child: MA(),),
              ]),
            )
          ],
        ),

    );

  }
}
