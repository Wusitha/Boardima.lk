import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_via/ui/adminPages/constants/style.dart';
import 'package:note_via/ui/adminPages/pages/AdvertisementWidget/AllAdvertisements.dart';
import 'package:note_via/ui/adminPages/pages/userWidgets/MA.dart';
import 'package:note_via/ui/adminPages/pages/userWidgets/allUsers.dart';
import 'package:note_via/ui/adminPages/pages/userWidgets/boarders.dart';
import 'package:note_via/ui/adminPages/pages/userWidgets/boardingOwners.dart';
import 'package:note_via/ui/boarding_owner/boarding_owner.dart';

class AdvertisementPage  extends StatefulWidget {

  @override
  State<AdvertisementPage> createState() => _AdvertisementPageState();
}

class _AdvertisementPageState extends State<AdvertisementPage> {
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
                Tab(child:Row(children: [Icon(Icons.border_all,color: fontYellow),SizedBox(width: 2,),Text("All Advertisements",style: TextStyle(color:fontYellow,fontSize: 16),)],)),
                Tab(child:Row(children: [Icon(Icons.home_outlined,color: fontYellow,),SizedBox(width: 2,),Text("Annex",style: TextStyle(color:fontYellow,fontSize: 16),)],)),
                Tab(child:Row(children: [Icon(Icons.bed,color: fontYellow),SizedBox(width: 2,),Text("Hostels",style: TextStyle(color:fontYellow,fontSize: 16),)],)),
                Tab(child:Row(children: [Icon(Icons.single_bed_outlined,color: fontYellow),SizedBox(width: 2,),Text("Boardings",style: TextStyle(color:fontYellow,fontSize: 16),)],)),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(children: [
              Container(child: AllAdvertisements(),),
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
