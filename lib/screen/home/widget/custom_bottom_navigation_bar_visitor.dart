import '/screen/home/visitor.dart';
import 'package:flutter/material.dart';
import '/screen/home/home.dart';
//import 'package:flutter_svg/svg.dart';


class CustomBottomNavigationBarVisitor extends StatelessWidget {
  const CustomBottomNavigationBarVisitor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 25, left: 15, right: 15, top: 15),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
              backgroundColor: const Color(0xFF626262), //<-- SEE HERE
              child: IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                highlightColor: const Color(0xFFFFB526),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomePageVisitor()),
                  );
                },
              )),
          CircleAvatar(
              radius: 30,
              backgroundColor: const Color(0xFF626262),
              child: IconButton(
                highlightColor: const Color(0xFFFFB526),
                icon: const Icon(
                  Icons.bookmark,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Visitor()),
                  );
                  //TODO: map to login
                },
              )),
          CircleAvatar(
              radius: 30,
              backgroundColor: const Color(0xFF626262),
              child: IconButton(
                highlightColor: const Color(0xFFFFB526),
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomePageVisitor()),
                  );
                  //TODO: map to login
                },
              )),
          CircleAvatar(
              radius: 30,
              backgroundColor: const Color(0xFF626262),
              child: IconButton(
                highlightColor: const Color(0xFFFFB526),
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                  // ProfileScreen
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomePageVisitor()),
                  );
                  //TODO: map to login
                },
              )),
        ],
      ),
    );
  }
}
