import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';

import '../../notification/notification.dart';

class CustomAppBar2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 1000,

        // padding: EdgeInsets.all(15),
        // margin: EdgeInsets.only(bottom: 25, left: 15, right: 15, top: 15),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        decoration: const BoxDecoration(
          color: Color(0xFF626262),
          //borderRadius: BorderRadius.circular(10),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.withOpacity(0.3),
          //     spreadRadius: 1,
          //     blurRadius: 7,
          //     offset: Offset(0, 3),
          //   )
          //]
        ),
        child: Container(child: const Text('Saved Homes', style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 20, fontWeight: FontWeight.bold),),
          padding: const EdgeInsets.only(left: 10,top:5,bottom:5),
        )
      // child: Row(
      //
      //
      //   //padding: EdgeInsets.symmetric(horizontal: 15),
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     // SearchInput(),
      //     CircleAvatar(
      //         radius: 30,
      //         backgroundColor: Color(0xFF626262), //<-- SEE HERE
      //         child: IconButton(
      //           icon: Icon(
      //             Icons.search,
      //             color: Colors.white,
      //           ),
      //           highlightColor: Color(0xFFFFB526),
      //           onPressed: () {},
      //         )
      //     ),
      //     CircleAvatar(
      //         radius: 30,
      //         backgroundColor: Color(0xFF626262),
      //         child: IconButton(
      //           highlightColor: Color(0xFFFFB526),
      //           icon: Icon(
      //             Icons.bookmark,
      //             color: Colors.white,
      //           ),
      //           onPressed: () {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) => notification()),
      //             );
      //           },
      //         )
      //     ),
      //     CircleAvatar(
      //         radius: 30,
      //         backgroundColor: Color(0xFF626262),
      //         child: IconButton(
      //           highlightColor: Color(0xFFFFB526),
      //           icon: Icon(
      //             Icons.notifications,
      //             color: Colors.white,
      //           ),
      //           onPressed: () {},
      //         )
      //     ),
      //     CircleAvatar(
      //         radius: 30,
      //         backgroundColor: Color(0xFF626262),
      //
      //         child: IconButton(
      //           highlightColor: Color(0xFFFFB526),
      //           icon: Icon(
      //             Icons.person,
      //             color: Colors.white,
      //
      //           ),
      //           onPressed: () {},
      //         )
      //     ),
      //     // icon: SvgPicture.asset('assets/icons/home_search.svg')),
      //     // IconButton(
      //     //     color: Colors.white,
      //     //     highlightColor: Colors.amberAccent,
      //     //     onPressed: () {},
      //     //     icon: Icon(Icons.bookmark)),
      //     //     //icon: SvgPicture.asset('assets/icons/home_mark.svg')),
      //     // IconButton(
      //     //     color: Colors.white,
      //     //     onPressed: () {},
      //     //     icon: Icon(Icons.notifications)),
      //     // IconButton(
      //     //     color: Colors.white,
      //     //     onPressed: () {},
      //     //     icon: Icon(Icons.person)),
      //     // CircleAvatar(
      //     //     backgroundImage: AssetImage('assets/images/avatar.jpeg'))
      //   ],
      //
      //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   // children: bottomBarItem
      //   //     .map((e) => SvgPicture.asset(
      //   //           'assets/icons/$e.svg',
      //   //           color: Theme.of(context).backgroundColor,
      //   //         ))
      //   //     .toList()
      // ),
    );
  }
}
@override
Size get preferredSize => Size.fromHeight(70);