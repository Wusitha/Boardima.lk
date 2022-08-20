import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPageRightSide extends StatelessWidget {
  const LoginPageRightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          color: const Color(0xFFFFFFFF),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/home.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: SizedBox(
                height: 500,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaY: 1, sigmaX: 1),
                          child: Container(
                            alignment: Alignment.topLeft,
                            color: Colors.grey.withOpacity(.3),
                            padding: const EdgeInsets.all(42),
                            // child: const Text("No more\n🤝",
                            //   style: TextStyle(
                            //       color: Colors.black,
                            //       fontSize: 28.00,
                            //       fontWeight: FontWeight.bold
                            //   ),
                            // ),
                            child: RichText(

                              text: const TextSpan(
                                text: '\n\n\nNo more Guessing,\n',
                                style: TextStyle(
                                  fontSize: 45.0, fontWeight: FontWeight.bold,fontFamily: 'Lobster',color: Color(
                                    0xFF333333)
                                ),
                                children: <TextSpan>[

                                  TextSpan(
                                      text: 'No more ',style: TextStyle(fontFamily: 'Lobster',
                                      fontSize: 45.0,fontWeight: FontWeight.bold,color: Color(
                                          0xFF333333)
                                  )
                                  ),
                                  TextSpan(
                                      text: 'Surprises',style: TextStyle(fontFamily: 'Lobster',
                                      fontSize: 45.0,fontWeight: FontWeight.bold,color: Color(
                                          0xFFCE8F14)
                                  )
                                  )
                                ]
                              ),
                            ),

                          ),
                        ),
                      ),
                    ),
                    // Align(
                    //   alignment: Alignment.bottomRight,
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(right: 60.0),
                    //     child: Image.asset('assets/logo.png', width: 300,),
                    //   ),
                    // ),

                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
