import '/screen/home/homeb.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color(0xFF232121),
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(280.0, 80.0, 3.0, 4.0),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/logo.png',
                    height: 70,
                    width: 70,
                  )
                ],
              ),
            ),
            Container(
              child: const Text(
                'Welcome',
                style: const TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 33,
                    fontWeight: FontWeight.bold),
              ),
              padding: const EdgeInsets.only(left: 35, top: 90),
            ),
            Container(
              padding: const EdgeInsets.only(top: 200, left: 35, right: 35),
              child: Column(
                children: const [
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.manage_accounts_sharp),
                        fillColor: Color(0x326E6E6E),
                        filled: true,
                        hintText: 'Username or Email',
                        hintStyle:
                            TextStyle(fontSize: 16.0, color: Color(0xFF737373)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0x326E6E6E)))),
                  ),
                  SizedBox(
                    //Use of SizedBox
                    height: 30,
                  ),
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      fillColor: Color(0x326E6E6E),
                      filled: true,
                      hintText: 'Password',
                      hintStyle:
                          TextStyle(fontSize: 16.0, color: Color(0xFF737373)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
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
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 340, left: 220, right: 35),
              child: FlatButton(
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Color(0xFFFFB526), fontSize: 12.0),
                ),
                onPressed: () {},
              ),
            ),
            Row(children: [
              Container(

                padding: const EdgeInsets.only(top: 100, left: 55, right: 35),
                child: const Text("Sign in",
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0)),
              ),
              Container(
                padding: const EdgeInsets.only(top: 100, left: 10, right: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: RawMaterialButton(
                    fillColor: const Color(0xFFFFB526),
                    elevation: 10.0,
                    child: Icon(
                      Icons.arrow_forward,
                      size: 30,
                      color: const Color(0xFFFFFFFF),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage1(userId: 2)),
                      );
                    },
                    padding: const EdgeInsets.all(15.0),
                    shape: const CircleBorder(),
                  ),
                ),
              ),
            ]),
            // Container(
            //   padding: const EdgeInsets.only(top: 680, left: 150, right: 20),
            //   child: const Text(
            //     "Sign Up with",
            //     style: TextStyle(color: Colors.grey),
            //   ),
            // ),
            // Container(
            //   padding: const EdgeInsets.only(top: 680, left: 80, right: 150),
            //   child: Align(
            //     alignment: Alignment.centerRight,
            //     child: RawMaterialButton(
            //       fillColor: const Color(0x326E6E6E),
            //       elevation: 10.0,
            //       onPressed: () {},
            //       padding: const EdgeInsets.all(35.0),
            //       shape: const CircleBorder(),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
