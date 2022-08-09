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

                const Text("\nWelcome", style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 33, fontWeight: FontWeight.w900),),
                const SizedBox(height: 12,),
                const Text("The boarding house is merely the world in little."
                    , style: TextStyle(color: Color(
                    0xFF737373),fontSize: 12),),
                const SizedBox(height: 24),
                const TextField(
                  decoration: InputDecoration(
                    label: Text("email",style: TextStyle(color: Color(
                        0xFF737373))),
                    hintText: "Please write your email address"
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    label: Text("password",style: TextStyle(color: Color(
                        0xFF737373))),
                    hintText: "Please write your password"
                  ),
                ),

                const SizedBox(height: 24),

                Align(
                  alignment: Alignment.topRight,
                  child: MaterialButton(child: const Text("Forgot password",style: TextStyle(color: Color(
                      0xFFFFB526))),

                    onPressed: (){},),
                ),
                const SizedBox(height: 24),

                MaterialButton(onPressed: (){},child: Text("Login"),
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
                const Text("Sign in with\n",style: TextStyle(color: Color(
                    0xFF737373))),
                MaterialButton(onPressed: (){},child: Padding(
                  padding: const EdgeInsets.only(right: 10.0,top: 5.0,left: 10.0),
                  child: Image.asset('assets/google.png', width: 20,),
                ),
                  elevation: 24,
                  color: const Color(0x496E6E6E),
                  textColor: Colors.white,
                  shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                  ),

              ],
            ),
          ),
        ));
  }
}
