import 'package:flutter/material.dart';

class LoginPageLeftSide extends StatelessWidget {
  const LoginPageLeftSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(

          color: const Color(0xFF232121),
          child: Padding(
            // padding: const EdgeInsets.all(120.0),
            padding: const EdgeInsets.only(right: 120.0,top: 90.0,left: 120.0),
            child: Column(

              children: [
                Align(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0,top: 5.0,left: 10.0),
                    child: Image.asset('assets/logo.png', width: 70,),
                  ),
                ),

                const Text("\nForgot Password?", style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 33, fontWeight: FontWeight.w900),),
                const SizedBox(height: 28,),
                const Text("The boarding house is merely the world in little.\n\n\n"
                    , style: TextStyle(color: Color(
                    0xFF737373),fontSize: 12),),
                const SizedBox(height: 24),
                const TextField(
                  decoration: InputDecoration(
                    label: Text("Enter your email address",style: TextStyle(color: Color(
                        0xFF737373))),
                    hintText: "Please write your email address"
                  ),
                ),

                const SizedBox(height: 30),
                const Text("We'll send you a message to set or reset your new password."
                  , style: TextStyle(color: Color(
                      0xFF737373),fontSize: 12),),

                const SizedBox(height: 24),

                MaterialButton(onPressed: (){},child: Text("Send Code"),
                  minWidth: double.infinity,
                  height: 52,
                  elevation: 24,
                  color: const Color(0xFFFFB526),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),


              ],
            ),
          ),
        ));
  }
}
