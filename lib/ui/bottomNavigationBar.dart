
import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 25, left: 15, right: 15, top: 15),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.3),
        //     spreadRadius: 1,
        //     blurRadius: 7,
        //     offset: Offset(0, 3),
        //   )
        //]
      ),
      child: Row(

        //padding: EdgeInsets.symmetric(horizontal: 15),
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // SearchInput(),
          CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xFF626262), //<-- SEE HERE
              child: IconButton(
                icon: Icon(
                  Icons.supervised_user_circle_rounded,
                  color: Colors.white,
                ),
                highlightColor: Color(0xFFFFB526),
                onPressed: () {
                  Navigator.pushNamed(context, "/boarderlist");
                },
              )
          ),
          CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xFF626262),
              child: IconButton(
                highlightColor: Color(0xFFFFB526),
                icon: Icon(
                  Icons.post_add,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/addpost");
                },
              )
          ),
          CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xFF626262),
              child: IconButton(
                highlightColor: Color(0xFFFFB526),
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Navigator.pushNamed(context, "/boarderlist");
                },
              )
          ),
          CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xFF626262),

              child: IconButton(
                highlightColor: Color(0xFFFFB526),
                icon: Icon(
                  Icons.person,
                  color: Colors.white,

                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/myprofile");
                },
              )
          ),

        ],


      ),
    );
  }
}