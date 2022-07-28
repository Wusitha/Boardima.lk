import 'package:flutter/material.dart';
import '../home2.dart';
import '/screen/home/widget/search_input.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(

        padding: EdgeInsets.all(15),
        child: TextField(
          style: const TextStyle(color: Colors.white),
          controller: _controller,
          decoration: InputDecoration(
              fillColor: Color(0xFF626262),
              filled: true,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)
              ),
              prefixIcon: IconButton(
                onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage3()),
                  );
                },
                icon: Icon(Icons.search),),
              suffixIcon: IconButton(
                onPressed: _controller.clear,
                icon: Icon(Icons.clear),),


              // suffixIcon: Container(
              //   padding: EdgeInsets.all(15),
              //
              //   child: SvgPicture.asset("assets/icons/cross.svg"),
              // ),
              // Container(
              //   padding: EdgeInsets.all(15),
              //   child: SvgPicture.asset('assets/icons/search.svg'),
              // ),
              // prefixIcon:Icon(Icons.search),
              hintText: 'Search',
              hintStyle: TextStyle(fontSize: 17.0),
              contentPadding: EdgeInsets.all(2)),
        ),



        // padding: EdgeInsets.symmetric(horizontal: 15),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     // SearchInput(),
        //     IconButton(
        //         onPressed: () {},
        //         icon: SvgPicture.asset('assets/icons/.svg')),
        //     // CircleAvatar(
        //     //     backgroundImage: AssetImage('assets/images/avatar.jpeg'))
        //   ],
        // ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}