import 'package:flutter/material.dart';

import '../home2.dart';

class SearchInput extends StatelessWidget {
  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
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
            prefixIcon:IconButton(
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
    );
  }
}