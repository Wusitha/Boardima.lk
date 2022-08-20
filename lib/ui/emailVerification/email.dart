import 'dart:ui';

import 'package:flutter/material.dart';


class EmailVerifiedPage extends StatelessWidget {
  const EmailVerifiedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F1F1F),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: 640,
            width: 1080,
            margin: EdgeInsets.symmetric(horizontal: 24),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.black,
              boxShadow: [
                const BoxShadow(
                  color: Color(0x57AAAAAA),
                  blurRadius: 5,
                  spreadRadius: 3,
                  offset: Offset(0.0, 2.0),
                  // shadow direction: bottom right
                ),


              ],
            ),
            child: Column(
              children: [
                Align(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 1000.0,top: 15.0,left: 10.0),
                    child: Image.asset('assets/logo.png', width: 70,),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0,top: 15.0,left: 10.0),
                    child: Image.asset('assets/email.png', width: 270,),
                  ),
                ),
                const Text("\nVerify Your email address", style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 33, fontWeight: FontWeight.w900),),
                const SizedBox(height: 12,),
                const Text("Please verify your email address by clicking button below."
                  , style: TextStyle(color: Color(
                      0xFF737373),fontSize: 12),),
                const SizedBox(height: 18,),
                new SizedBox(
                  width: 200,
                  height: 52,
                 child: MaterialButton( onPressed:() {
                    Navigator.pushNamed(context, "/login");
                  },child: Text("Verify your email",style: TextStyle(fontSize: 16)),
                    minWidth: double.maxFinite,
                    elevation: 24,
                    color: const Color(0xFFFFB526),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)
                    ),
                  ),
                )

              ],
            ),

          ),
        ),
      ),
    );
  }
}
