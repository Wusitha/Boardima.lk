

import '/screen/home/home.dart';
import 'package:flutter/material.dart';
import '/screen/home/homeb.dart';

import '/screen/home/home.dart';

import 'login.dart';


class Visitor extends StatefulWidget {
  const Visitor({Key? key}) : super(key: key);

  @override
  State<Visitor> createState() => VisitorState();
}

class VisitorState extends State<Visitor> {

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Scaffold(
        backgroundColor: Color(0xFF232121),
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(280.0, 10.0, 3.0, 4.0),
              child: Row(
                children: <Widget>[
                  Image.asset('assets/logo.png',
                    height: 70,
                    width: 70,
                  )
                ],
              ),
            ),
            Container(child: const Text('Welcome', style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 33, fontWeight: FontWeight.bold),),
              padding: const EdgeInsets.only(left: 35,top: 30),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, 3.0, 4.0),
              child: Row(
                children: <Widget>[
                  Image.asset('assets/images/h3.jpg',
                    height: 570,
                    width: 350,
                  )
                ],
              ),
            ),
            Row(
                children:[
                  Container(
                    padding: const EdgeInsets.only(top:480, left: 35, right: 35),
                    child: const Text(
                        "Sign up",style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0)
                    ),
                  ),

                  Container(
                    padding:const EdgeInsets.only(top:480, left: 120, right: 20),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: RawMaterialButton(
                        fillColor: const Color(0xFFFFB526),
                        elevation: 10.0,

                        child: Icon(Icons.arrow_forward, size: 30, color: const Color(0xFFFFFFFF),),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  MyLogin()),
                          );
                        },
                        padding: const EdgeInsets.all(15.0),
                        shape: const CircleBorder(),

                      ),
                    ),
                  ),

                ]
            ),
            Row(
                children:[
                  Container(
                    padding: const EdgeInsets.only(top:680, left: 35, right: 35),
                    child: const Text(
                        "Log in",style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0)
                    ),
                  ),

                  Container(
                    padding:const EdgeInsets.only(top:680, left: 130, right: 20),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: RawMaterialButton(
                        fillColor: const Color(0xFFFFB526),
                        elevation: 10.0,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  MyLogin()),
                          );
                        },
                        padding: const EdgeInsets.all(15.0),
                        shape: const CircleBorder(),

                        child: const Icon(Icons.arrow_forward, size: 30, color: Color(0xFFFFFFFF),),

                      ),
                    ),
                  ),

                ]
            ),
            Row(
                children:[
                  Container(
                    padding: const EdgeInsets.only(top:280, left: 35, right: 35),
                    child: const Text(
                        "Continue as a Visitor",style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0)
                    ),
                  ),

                  Container(
                    padding:const EdgeInsets.only(top:280, left: 0, right: 20),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: RawMaterialButton(
                        fillColor: const Color(0xFFFFB526),
                        elevation: 10.0,

                        child: Icon(Icons.arrow_forward, size: 30, color: const Color(0xFFFFFFFF),),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePageVisitor()),
                          );
                        },
                        padding: const EdgeInsets.all(15.0),
                        shape: const CircleBorder(),

                      ),
                    ),
                  ),

                ]
            ),


          ],

        ),
      ),

    );
  }
}