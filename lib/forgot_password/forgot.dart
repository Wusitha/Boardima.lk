

import 'package:flutter/material.dart';


class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Scaffold(
        backgroundColor: Color(0xFF232121),
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(310.0, 80.0, 3.0, 4.0),
              child: Row(
                children: <Widget>[
                  Image.asset('assets/logo.png',
                    height: 70,
                    width: 70,
                  )
                ],
              ),
            ),
            Container(child: const Text('Forgot\nPassword?', style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 33, fontWeight: FontWeight.bold),),
              padding: const EdgeInsets.only(left: 35,top: 90),
            ),
            Container(
              padding: const EdgeInsets.only(top:200, left: 35, right: 35),
              child: Column(
                children: const [
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        fillColor: Color(0x326E6E6E),
                        filled: true,
                        hintText: 'Enter your email address',
                        hintStyle: TextStyle(fontSize: 16.0, color: Color(
                            0xFF737373)),
                        border: OutlineInputBorder(
                          borderRadius:  BorderRadius.all( Radius.circular(50.0),),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color(0x326E6E6E))
                        )
                    ),
                  ),

                  SizedBox(
                    //Use of SizedBox
                    height: 10,
                  ),

                ],
              ),

            ),
            Container(child: const Text('We will send you a message to set or '
                'reset your \nnew password.', style: const TextStyle(color: Color(
                0x88AAAAAA), fontSize: 15),),
              padding: const EdgeInsets.only(left: 35,top: 340),
            ),

            Container(
              padding: const EdgeInsets.only(top:630, left: 35, right: 35),
              child: const Text(
                  "Send Code",style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0)
              ),
            ),

            Container(
              padding:const EdgeInsets.only(top:480, left: 20, right: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: RawMaterialButton(
                  fillColor: const Color(0xFFFFB526),
                  elevation: 10.0,

                  child: Icon(Icons.arrow_forward, size: 30, color: const Color(0xFFFFFFFF),),
                  onPressed: () {},
                  padding: const EdgeInsets.all(15.0),
                  shape: const CircleBorder(),

                ),
              ),
            ),

          ],

        ),
      ),

    );
  }
}