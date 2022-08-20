import 'package:flutter/material.dart';

class LoginPageLeftSide extends StatefulWidget {
  const LoginPageLeftSide({Key? key}) : super(key: key);
  @override
  LoginPageLeftSideState createState() => LoginPageLeftSideState();
}
class LoginPageLeftSideState extends State<LoginPageLeftSide> {
  // Define a key to access the form
  final _formKey = GlobalKey<FormState>();

  String _userEmail = '';
  String _userName = '';
  String _password = '';
  String _confirmPassword = '';

  // This function is triggered when the user press the "Sign Up" button
  // void _trySubmitForm() {
  //   final bool? isValid = _formKey.currentState?.validate();
  //   if (isValid == true) {
  //     debugPrint('Everything looks good!');
  //     debugPrint(_userEmail);
  //     debugPrint(_userName);
  //     debugPrint(_password);
  //     debugPrint(_confirmPassword);

      /*
      Continute proccessing the provided information with your own logic
      such us sending HTTP requests, savaing to SQLite database, etc.
      */
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          color: const Color(0xFF232121),
          child: Padding(
            // padding: const EdgeInsets.all(120.0),
            padding: const EdgeInsets.only(right: 120.0,top: 20.0,left: 120.0),
            child: Form(
              key: _formKey,
    child: Column(

    // mainAxisSize: MainAxisSize.min,
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
                 TextFormField(
                  decoration: InputDecoration(
                      label: Text("email",style: TextStyle(color: Color(
                          0xFF737373))),
                      hintText: "Please write your email address"
                  ),
    validator: (value) {
    if (value == null || value.trim().isEmpty) {
    return 'This field is required';
    }
    if (value.trim().length < 4) {
    return 'Username must be at least 4 characters in length';
    }
    // Return null if the entered username is valid
    return null;
    },
    onChanged: (value) => _userName = value,
                ),
                 TextFormField(
                  decoration: InputDecoration(
                      label: Text("password",style: TextStyle(color: Color(
                          0xFF737373))),
                      hintText: "Please write your password"
                  ),
                      obscureText: true,
    validator: (value) {
    if (value == null || value.trim().isEmpty) {
    return 'This field is required';
    }
    if (value.trim().length < 8) {
    return 'Password must be at least 8 characters in length';
    }
    // Return null if the entered password is valid
    return null;
    },
    onChanged: (value) => _password = value,
                ),

                const SizedBox(height: 24),

                Align(
                  alignment: Alignment.topRight,
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.pushNamed(context, "/forgotpassword");
                    },
                    child: const Text("Forgot password",style: TextStyle(color: Color(
                      0xFFFFB526))),

                    ),
                ),
                const SizedBox(height: 24),

                MaterialButton( onPressed:() {
                  final bool? isValid = _formKey.currentState?.validate();
                  if(isValid==true)
                  Navigator.pushNamed(context, "/homepage");
                }

                // _trySubmitForm
                  ,child: Text("Login"),
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
        )));
  }
}
