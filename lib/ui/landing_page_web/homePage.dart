
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final Shader iphoneShader =
  const LinearGradient(colors: [Color(0xff070D14), Color(0xff85D1EE)])
      .createShader(Rect.fromLTWH(0, 100, 50, 2));

  @override
  Widget build(BuildContext context) {
    return Container(

        child: Scaffold(
          backgroundColor: const Color(0xFF2B2E34),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0,top: 5.0,left: 10.0),
                        child: Image.asset('assets/logo.png', width: 80,),
                      ),
                    ),
                    Row(
                      children: [
                        Align(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0,top: 5.0,left: 1000.0),
                            child:FloatingActionButton.extended(
                              label: const Text('Sign Up',style: TextStyle(fontSize: 18.0,color: Color(
                                  0xFFFFFFFF),fontWeight: FontWeight.bold)), // <-- Text
                              backgroundColor:  const Color(0xFFCE8F14),

                              onPressed: () {
                                Navigator.pushNamed(context, "/emailverification");
                              },
                            ),
                          ),
                        ),

                        const SizedBox(width: 40),
                        Align(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0,top: 5.0,left: 10.0),
                            child: MaterialButton(child: const Text("Login",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Color(
                                0xFFFFFFFF))),

                              onPressed: (){
                                Navigator.pushNamed(context, "/login");
                              },),
                          ),

                        ),
                        SizedBox(width: 40),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 70),
                        const Text("The boarding house is merely the world in little."
                          , style: TextStyle(color: Color(
                              0xFFA1A1A1),fontSize: 20),),
                        SizedBox(height: 30),
                        RichText(

                          text: const TextSpan(
                              text: 'No more Guessing,\n',
                              style: TextStyle(
                                  fontSize: 85.0, fontWeight: FontWeight.bold,fontFamily: 'Lobster',color: Color(
                                  0xFFFFFFFF)
                              ),
                              children: <TextSpan>[

                                TextSpan(
                                    text: 'No more ',style: TextStyle(fontFamily: 'Lobster',
                                    fontSize: 85.0,fontWeight: FontWeight.bold,color: Color(
                                        0xFFFFFFFF)
                                )
                                ),
                                TextSpan(
                                    text: 'Surprises',style: TextStyle(fontFamily: 'Lobster',
                                    fontSize: 85.0,fontWeight: FontWeight.bold,color: Color(
                                        0xFFCE8F14)
                                )
                                )
                              ]
                          ),
                        ),

                        const SizedBox(height: 50),

                        Row(
                          children: [
                            SizedBox(width: 10), Text('4.7', style: TextStyle(color: Colors.white, fontSize: 18.0),),
                            SizedBox(width: 10),
                            Icon(Icons.star, color: Colors.white, size: 15,),
                            SizedBox(width: 100),
                            Text('100M+', style: TextStyle(color: Colors.white, fontSize: 18.0),),
                            SizedBox(width: 10),
                            SizedBox(width: 60),
                            Text('3+', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 18.0,backgroundColor: Colors.white),),
                            SizedBox(width: 10),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 10), Text('9.04M reviews', style: TextStyle(color: Color(0xFFA1A1A1), fontSize: 15.0),),
                            SizedBox(width: 10),
                            SizedBox(width: 40),
                            Text('Downloads', style: TextStyle(color: Color(0xFFA1A1A1), fontSize: 15.0),),
                            SizedBox(width: 10),
                            SizedBox(width: 40),
                            Text('Rated for 3+', style: TextStyle(color: Color(0xFFA1A1A1),fontSize: 15.0,),),
                            SizedBox(width: 10),
                          ],
                        ),
                        const  SizedBox(height: 50),

                        FloatingActionButton.extended(
                          label: const Text('Install App',style: TextStyle(color: Color(
                              0xFFFFFFFF),fontWeight: FontWeight.bold)), // <-- Text
                          backgroundColor:  const Color(0xFFCE8F14),
                          icon: const Icon( // <-- Icon
                            Icons.download,
                            size: 24.0,
                            color: Color(0xFFFFFFFF),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/web.png',
                      width: 700,
                      height: 500,
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}