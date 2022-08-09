

import 'package:flutter/material.dart';


class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  int _value = 1;
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
            Container(child: const Text('Create An\nAccount', style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 33, fontWeight: FontWeight.bold),),
              padding: const EdgeInsets.only(left: 35,top: 90),
            ),
            Container(
              padding: const EdgeInsets.only(top:200, left: 35, right: 35),
              child: Column(
                children: const [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.manage_accounts_sharp),

                      fillColor: Color(0x326E6E6E),

                      filled: true,
                      hintText: 'Username or Email',
                      hintStyle: TextStyle(fontSize: 16.0, color: Color(
                          0xFF737373)),
                      border: OutlineInputBorder(
                        borderRadius:  BorderRadius.all( Radius.circular(50.0),),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,

                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    //Use of SizedBox
                    height: 30,
                  ),
                  TextField(

                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      fillColor: Color(0x326E6E6E),
                      filled: true,
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 16.0, color: Color(
                          0xFF737373)),
                      border: OutlineInputBorder(
                        borderRadius:  BorderRadius.all( Radius.circular(50.0),),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    //Use of SizedBox
                    height: 30,
                  ),
                  TextField(
                      decoration:  InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        fillColor: Color(0x326E6E6E),
                        filled: true,
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(fontSize: 16.0, color: Color(
                            0xFF737373)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0),),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.only(top:200, left: 35, right: 35),
              child:Column(

                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [

                  Row(children: [
                    Radio(value: 1,
                      groupValue: _value,
                      fillColor:
                      MaterialStateColor.resolveWith((states) =>  Color(0xFFFFB526)),
                      onChanged: (value){
                        setState((){
                          _value = _value;
                        });
                      },
                    ),
                    SizedBox(width: 10.0,),
                    const Text("I'm a boarding owner.", style: TextStyle(color: Colors.grey,
                        fontSize: 15.0),),
                  ],),

                  Row(children: [
                    Radio(value: 2,
                      groupValue: _value,
                      onChanged: (value){
                        setState((){
                          _value = _value;
                        });
                      },
                    ),
                    const SizedBox(width: 10.0,),
                    const Text("I'm a boarder.", style: TextStyle(color: Colors.grey,
                        fontSize: 15.0),),
                  ],)
                ],
              ) ,
            ),
            Container(
              padding: const EdgeInsets.only(top:560, left: 35, right: 35),
              child: RichText(
                text: const TextSpan(
                    text: "\nBy clicking the",
                    style: TextStyle(color: Colors.grey),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Register', style: TextStyle(color: Color(0xFFFFB526),)),
                      TextSpan(
                          text: ' button, you agree to all the\n', style: TextStyle(color: Colors.grey,)),
                      TextSpan(
                          text: ' terms and conditions.',
                          style: TextStyle(decoration: TextDecoration.underline,color: Color(0xFFFFB526))),
                    ]
                ),
              ),

            ),
            Container(
              padding: const EdgeInsets.only(top:630, left: 35, right: 35),
              child: const Text(
                  "Register",style: TextStyle(
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

                  child:  Icon(Icons.arrow_forward, size: 30, color: const Color(0xFFFFFFFF),),
                  onPressed: () {},
                  padding: const EdgeInsets.all(15.0),
                  shape: const CircleBorder(),

                ),
              ),
            ),

            const Text("Sign up with\n",style: TextStyle(color: Color(
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

    );
  }
}