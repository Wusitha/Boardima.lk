// import 'package:flutter/material.dart';
// import 'package:note_via/ui/bottomNavigationBar.dart';
// class BoardingOwner extends StatefulWidget {
//   const BoardingOwner({Key? key}) : super(key: key);
//
//
//
//   @override
//   State<BoardingOwner> createState() => LandingPageState();
// }
// class LandingPageState extends State<BoardingOwner> {
//   // Initial Selected Value
//   String dropdownvalue = 'Krish Hostel';
//
//   // List of items in our dropdown menu
//   var items = [
//     'Krish Hostel',
//
//   ];
//
//
//   @override
//   Widget build(BuildContext context) {
//     final maxLines = 5;
//     var bottomNavigationBar;
//     return  Container(
//       child: Scaffold(
//         backgroundColor: Color(0xFF232121),
//         body: SingleChildScrollView(
//           child: Stack(
//               children:[
//                 Container(
//                     margin:const EdgeInsets.fromLTRB(300.0, 80.0, 3.0, 4.0),
//                     child: Row(
//                       children: const [
//                         SizedBox(
//                           width: 80,
//                           child: Image(
//                             image: AssetImage(
//                               "assets/logo.png",
//                             ),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ],
//                     )
//                 ),
//                 // Container(child: const Text('Hello\n\n', style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 33, fontWeight: FontWeight.bold),),
//                 //   padding: const EdgeInsets.only(left: 35,top: 90),
//                 // ),
//
//                 Row(
//                   children: [
//                     DropdownButton(
//
//                       // Initial Value
//                       value: dropdownvalue,
//
//                       // Down Arrow Icon
//                       icon: const Icon(Icons.keyboard_arrow_down),
//
//                       // Array list of items
//                       items: items.map((String items) {
//                         return DropdownMenuItem(
//                           value: items,
//                           child: Text(items),
//                         );
//                       }).toList(),
//                       // After selecting the desired option,it will
//                       // change button value to selected value
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           dropdownvalue = newValue!;
//                         });
//                       },
//                     ),
//                   ],
//                 ),
//                 Container(
//                   margin:const EdgeInsets.fromLTRB(10.0, 90.0, 3.0, 4.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       DropdownButton(
//
//                         // Initial Value
//                         value: dropdownvalue,
//
//                         // Down Arrow Icon
//                         icon: const Icon(Icons.keyboard_arrow_down),
//
//                         // Array list of items
//                         items: items.map((String items) {
//                           return DropdownMenuItem(
//                             value: items,
//                             child: const Text(
//                               'My Boarding',
//                               style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,
//                                 color:const  Color(0xFFFFFFFF,),
//                               ),
//                             ),
//                           );
//                         }).toList(),
//                         // After selecting the desired option,it will
//                         // change button value to selected value
//                         onChanged: (String? newValue) {
//                           setState(() {
//                             dropdownvalue = newValue!;
//                           });
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                     padding: const EdgeInsets.only(top:180, left: 5, right: 5),
//                     child: TextButton.icon(
//                       onPressed: () {
//                         // Respond to button press
//                       },
//                       icon: Icon(Icons.add, size: 25,color: Color(0xFFF4B207),),
//                       label: Text("Add Another Boarding Place",style: TextStyle(
//                           color:const  Color(0xFFF4B207),
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18
//                       ),),
//
//                     )
//                 ),
//                 Container(
//                   padding: const EdgeInsets.only(top:280, left: 5, right: 5),
//                   child: Image.asset('assets/images/home2.jpg'),
//                 ),
//
//                 Container(
//                   margin: const EdgeInsets.only(top:590, left: 5, right: 5),
//                   decoration: BoxDecoration(
//                     color:const  Color(0xFF363636),
//                     border: Border.all(),
//                     borderRadius: BorderRadius.all(Radius.circular(3.0)),
//                   ),
//
//                   // column of three rows
//                   child: Column(
//
//                     // this makes the column height hug its content
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//
//                       // first row
//                       Row(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(right: 8.0,top: 10.0),
//
//                           ),
//                           Text(
//                             '\nKrish Hostel',
//                             style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,
//                               color:const  Color(0xFF8A8A8A,),
//                             ),
//                           ),
//                         ],
//                       ),
//
//                       // second row (single item)
//                       Padding(
//                         padding: EdgeInsets.only(right: 220.0,top: 10.0,left: 2.0),
//
//                         child: Text('No.68, Fussels Lane\nWellawatte\n',
//                           style: TextStyle(
//                             color:const  Color(0xFFA8A8A8),
//                           ),
//                         ),
//                       ),
//
//                       // third row
//                       Padding(    padding: EdgeInsets.only(right: 20.0,top: 10.0,left: 12.0),
//                         child: Row(
//                           children: [
//                             Text('Rs.10,000 per month\n',
//                               style: TextStyle(
//                                   color:const  Color(0xFF67B716),
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 15
//                               ),
//                             ),
//
//                           ],
//                         ),
//                       ) ,
//
//                       Padding(
//                         padding: EdgeInsets.only(right: 20.0,top: 10.0,left: 12.0),
//
//                         child: Row(
//                           children: [
//                             Text('3 Bedrooms\n3 attach bathrooms\n',
//                               style: TextStyle(
//                                   color:const  Color(0xFFA8A8A8),
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 15
//                               ),
//                             ),
//                             SizedBox(width: 50.0,),
//                             Text('No kitchen facility\nwater bill and electricity\nbill included.\n',
//                               style: TextStyle(
//                                   color:const  Color(0xFFA8A8A8),
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 15
//                               ),
//                             ),
//
//
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(right: 0.0,top: 10.0,left: 12.0),
//
//                         child: Row(
//                           children: [
//                             Text('2 months advance.\nworking professionals preferred.\n150 meters to Cotta Road and bus stop.\n(5minute walking distance)Bus routes 5 minute\nwalking distance to cargills .\n150m to Ayurveda General Hospital Rajagiriya\n\n',
//                               style: TextStyle(
//                                   color:const  Color(0xFFA8A8A8),
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 15
//                               ),
//                             ),
//
//
//
//                           ],
//                         ),
//                       ),
//
//
//
//                     ],
//                   ),
//                 ),
//
//                 Row(
//                     children:[Container(
//                       padding:const EdgeInsets.only(top:1010, left: 20, right: 0,bottom: 30),
//                       child: OutlinedButton(
//                         child: const Text('Reports',style:  TextStyle( fontSize: 22, fontWeight: FontWeight.bold),),
//                         style: OutlinedButton.styleFrom(
//                           primary: Colors.white,
//                           backgroundColor: const Color(0xFFFFB526),
//                           elevation: 50,
//                         ),
//                         onPressed: () {
//                           Navigator.pushNamed(context, "/forgotpassword");
//                         },
//                       ),
//                     ),
//                       Container(
//                         padding:const EdgeInsets.only(top:1010, left: 100, right: 0,bottom: 30),
//                         child: OutlinedButton(
//                           child: const Text('Complaints',style:  TextStyle( fontSize: 22, fontWeight: FontWeight.bold),),
//                           style: OutlinedButton.styleFrom(
//                             primary: Colors.white,
//                             backgroundColor: const Color(0xFFFFB526),
//                             elevation: 50,
//                           ),
//                           onPressed: () {
//                             Navigator.pushNamed(context, "/complaints");
//                           },
//                         ),
//                       )
//                     ]
//                 ),
//
//               ]
//
//           ),
//
//
//         ),
//         bottomNavigationBar: CustomBottomNavigationBar(),
//       ),
//
//
//     );
//   }
// }
//
//
//
//

// import 'package:flutter/material.dart';
// import 'package:note_via/ui/bottomNavigationBar.dart';
// class BoardingOwner extends StatefulWidget {
//   const BoardingOwner({Key? key}) : super(key: key);
//
//
//
//   @override
//   State<BoardingOwner> createState() => LandingPageState();
// }
// class LandingPageState extends State<BoardingOwner> {
//   // Initial Selected Value
//   String dropdownvalue = 'Krish Hostel';
//
//   // List of items in our dropdown menu
//   var items = [
//     'Krish Hostel',
//
//   ];
//
//
//   @override
//   Widget build(BuildContext context) {
//     final maxLines = 5;
//     var bottomNavigationBar;
//     return  Container(
//       child: Scaffold(
//         backgroundColor: Color(0xFF232121),
//         body: SingleChildScrollView(
//           child: Stack(
//               children:[
//                 Container(
//                     margin:const EdgeInsets.fromLTRB(300.0, 80.0, 3.0, 4.0),
//                     child: Row(
//                       children: const [
//                         SizedBox(
//                           width: 80,
//                           child: Image(
//                             image: AssetImage(
//                               "assets/logo.png",
//                             ),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ],
//                     )
//                 ),
//                 // Container(child: const Text('Hello\n\n', style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 33, fontWeight: FontWeight.bold),),
//                 //   padding: const EdgeInsets.only(left: 35,top: 90),
//                 // ),
//
//                 Row(
//                   children: [
//                     DropdownButton(
//
//                       // Initial Value
//                       value: dropdownvalue,
//
//                       // Down Arrow Icon
//                       icon: const Icon(Icons.keyboard_arrow_down),
//
//                       // Array list of items
//                       items: items.map((String items) {
//                         return DropdownMenuItem(
//                           value: items,
//                           child: Text(items),
//                         );
//                       }).toList(),
//                       // After selecting the desired option,it will
//                       // change button value to selected value
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           dropdownvalue = newValue!;
//                         });
//                       },
//                     ),
//                   ],
//                 ),
//                 Container(
//                   margin:const EdgeInsets.fromLTRB(10.0, 90.0, 3.0, 4.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       DropdownButton(
//
//                         // Initial Value
//                         value: dropdownvalue,
//
//                         // Down Arrow Icon
//                         icon: const Icon(Icons.keyboard_arrow_down),
//
//                         // Array list of items
//                         items: items.map((String items) {
//                           return DropdownMenuItem(
//                             value: items,
//                             child: const Text(
//                               'My Boarding',
//                               style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,
//                                 color:const  Color(0xFFFFFFFF,),
//                               ),
//                             ),
//                           );
//                         }).toList(),
//                         // After selecting the desired option,it will
//                         // change button value to selected value
//                         onChanged: (String? newValue) {
//                           setState(() {
//                             dropdownvalue = newValue!;
//                           });
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                     padding: const EdgeInsets.only(top:180, left: 5, right: 5),
//                     child: TextButton.icon(
//                       onPressed: () {
//                         // Respond to button press
//                       },
//                       icon: Icon(Icons.add, size: 25,color: Color(0xFFF4B207),),
//                       label: Text("Add Another Boarding Place",style: TextStyle(
//                           color:const  Color(0xFFF4B207),
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18
//                       ),),
//
//                     )
//                 ),
//                 Container(
//                   padding: const EdgeInsets.only(top:280, left: 5, right: 5),
//                   child: Image.asset('assets/images/home2.jpg'),
//                 ),
//
//                 Container(
//                   margin: const EdgeInsets.only(top:590, left: 5, right: 5),
//                   decoration: BoxDecoration(
//                     color:const  Color(0xFF363636),
//                     border: Border.all(),
//                     borderRadius: BorderRadius.all(Radius.circular(3.0)),
//                   ),
//
//                   // column of three rows
//                   child: Column(
//
//                     // this makes the column height hug its content
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//
//                       // first row
//                       Row(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(right: 8.0,top: 10.0),
//
//                           ),
//                           Text(
//                             '\nKrish Hostel',
//                             style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,
//                               color:const  Color(0xFF8A8A8A,),
//                             ),
//                           ),
//                         ],
//                       ),
//
//                       // second row (single item)
//                       Padding(
//                         padding: EdgeInsets.only(right: 220.0,top: 10.0,left: 2.0),
//
//                         child: Text('No.68, Fussels Lane\nWellawatte\n',
//                           style: TextStyle(
//                             color:const  Color(0xFFA8A8A8),
//                           ),
//                         ),
//                       ),
//
//                       // third row
//                       Padding(    padding: EdgeInsets.only(right: 20.0,top: 10.0,left: 12.0),
//                         child: Row(
//                           children: [
//                             Text('Rs.10,000 per month\n',
//                               style: TextStyle(
//                                   color:const  Color(0xFF67B716),
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 15
//                               ),
//                             ),
//
//                           ],
//                         ),
//                       ) ,
//
//                       Padding(
//                         padding: EdgeInsets.only(right: 20.0,top: 10.0,left: 12.0),
//
//                         child: Row(
//                           children: [
//                             Text('3 Bedrooms\n3 attach bathrooms\n',
//                               style: TextStyle(
//                                   color:const  Color(0xFFA8A8A8),
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 15
//                               ),
//                             ),
//                             SizedBox(width: 50.0,),
//                             Text('No kitchen facility\nwater bill and electricity\nbill included.\n',
//                               style: TextStyle(
//                                   color:const  Color(0xFFA8A8A8),
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 15
//                               ),
//                             ),
//
//
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(right: 0.0,top: 10.0,left: 12.0),
//
//                         child: Row(
//                           children: [
//                             Text('2 months advance.\nworking professionals preferred.\n150 meters to Cotta Road and bus stop.\n(5minute walking distance)Bus routes 5 minute\nwalking distance to cargills .\n150m to Ayurveda General Hospital Rajagiriya\n\n',
//                               style: TextStyle(
//                                   color:const  Color(0xFFA8A8A8),
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 15
//                               ),
//                             ),
//
//
//
//                           ],
//                         ),
//                       ),
//
//
//
//                     ],
//                   ),
//                 ),
//
//                 Row(
//                     children:[Container(
//                       padding:const EdgeInsets.only(top:1010, left: 20, right: 0,bottom: 30),
//                       child: OutlinedButton(
//                         child: const Text('Reports',style:  TextStyle( fontSize: 22, fontWeight: FontWeight.bold),),
//                         style: OutlinedButton.styleFrom(
//                           primary: Colors.white,
//                           backgroundColor: const Color(0xFFFFB526),
//                           elevation: 50,
//                         ),
//                         onPressed: () {
//                           Navigator.pushNamed(context, "/forgotpassword");
//                         },
//                       ),
//                     ),
//                       Container(
//                         padding:const EdgeInsets.only(top:1010, left: 100, right: 0,bottom: 30),
//                         child: OutlinedButton(
//                           child: const Text('Complaints',style:  TextStyle( fontSize: 22, fontWeight: FontWeight.bold),),
//                           style: OutlinedButton.styleFrom(
//                             primary: Colors.white,
//                             backgroundColor: const Color(0xFFFFB526),
//                             elevation: 50,
//                           ),
//                           onPressed: () {
//                             Navigator.pushNamed(context, "/complaints");
//                           },
//                         ),
//                       )
//                     ]
//                 ),
//
//               ]
//
//           ),
//
//
//         ),
//         bottomNavigationBar: CustomBottomNavigationBar(),
//       ),
//
//
//     );
//   }
// }
//
//
//
//
import 'package:flutter/material.dart';
// import 'package:boardima_lk/landingPage/landingPage.dart';
// import 'package:boardima_lk/landingPage/landingPagemob.dart';


import '../bottomNavigationBar.dart';
class BoardingOwner extends StatefulWidget {

  const BoardingOwner({Key? key}) : super(key: key);
  @override
  State<BoardingOwner> createState() => LandingPageState();
}
class LandingPageState extends State<BoardingOwner> {
  // Initial Selected Value
  String dropdownvalue = '';

  // List of items in our dropdown menu
  var items = [
    '',

  ];


  @override
  Widget build(BuildContext context) {
    final maxLines = 5;
    var bottomNavigationBar;
    return  Container(
      child: Scaffold(
        backgroundColor: Color(0xFF232121),
        body: SingleChildScrollView(
          child: Stack(
              children:[
                Container(
                    margin:const EdgeInsets.fromLTRB(300.0, 50.0, 3.0, 4.0),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 80,
                          child: Image(
                            image: AssetImage(
                              "assets/logo.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )
                ),
                // Container(child: const Text('Hello\n\n', style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 33, fontWeight: FontWeight.bold),),
                //   padding: const EdgeInsets.only(left: 35,top: 90),
                // ),

                Row(
                  children: [
                    DropdownButton(

                      // Initial Value
                      value: dropdownvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                Container(
                  margin:const EdgeInsets.fromLTRB(10.0, 50.0, 3.0, 4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DropdownButton(

                        // Initial Value
                        value: dropdownvalue,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: const Text(
                              'My Boarding',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,
                                color:const  Color(0xFFFFFFFF,),
                              ),
                            ),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(top:180, left: 5, right: 5),
                    child: TextButton.icon(
                      onPressed: () {
                        // Respond to button press
                      },
                      icon: Icon(Icons.add, size: 25,color: Color(0xFFF4B207),),
                      label: Text("Add Another Boarding Place",style: TextStyle(
                          color:const  Color(0xFFF4B207),
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),),

                    )
                ),

                Container(
                  width: 760,
                  height: 240,
                  margin: const EdgeInsets.only(top:230, left: 5, right: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(width: 5, color:const  Color(0x527C7C7C),), //<-- SEE HERE
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('images/hh.jpg',),),),
                Container(
                    height: 120,
                    width: 400,
                    margin: const EdgeInsets.only(top:320, left: 5, right: 5),
                    decoration: BoxDecoration(
                      color:const  Color(0x7C7C7C),
                      // border: Border.all(
                      //   color:const  Color(0xFF363636),
                      //   width: 9,
                      // ),

                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Column(
                      // this makes the column height hug its content
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        // first row
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 8.0,top: 20.0,left: 30.0),
                            ),
                            Text(
                              'Krish Hostel',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 29,
                                color:const  Color(0xFF484848,),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 210.0,top: 0.0,left: 10.0),

                          child: Text('No.68, Fussels Lane\nWellawatte\n',
                            style: TextStyle(
                              color:const  Color(0xFF484848),
                            ),
                          ),
                        ),

                      ],
                    )),
                Container(
                  margin: const EdgeInsets.only(top:480, left: 5, right: 5),
                  decoration: BoxDecoration(
                    color:const  Color(0xFF363636),
                    border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),

                  // column of three rows
                  child: Column(
                    // this makes the column height hug its content
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      // first row
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 8.0,top: 10.0),
                          ),
                          Text(
                            '\nKrish Hostel',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,
                              color:const  Color(0xFF8A8A8A,),
                            ),
                          ),
                        ],
                      ),

                      // second row (single item)
                      Padding(
                        padding: EdgeInsets.only(right: 220.0,top: 10.0,left: 2.0),

                        child: Text('No.68, Fussels Lane\nWellawatte\n',
                          style: TextStyle(
                            color:const  Color(0xFFA8A8A8),
                          ),
                        ),
                      ),

                      // third row
                      Padding(    padding: EdgeInsets.only(right: 20.0,top: 10.0,left: 12.0),
                        child: Row(
                          children: [
                            Text('Rs.10,000 per month\n',
                              style: TextStyle(
                                  color:const  Color(0xFF67B716),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                            ),
                          ],
                        ),
                      ) ,

                      Padding(
                        padding: EdgeInsets.only(right: 20.0,top: 10.0,left: 12.0),

                        child: Row(
                          children: [
                            Text('3 Bedrooms\n3 attach bathrooms\n',
                              style: TextStyle(
                                  color:const  Color(0xFFA8A8A8),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                            ),
                            SizedBox(width: 50.0,),
                            Text('No kitchen facility\nwater bill and electricity\nbill included.\n',
                              style: TextStyle(
                                  color:const  Color(0xFFA8A8A8),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 0.0,top: 10.0,left: 12.0),
                        child: Row(
                          children: [
                            Text('2 months advance.\nworking professionals preferred.\n150 meters to Cotta Road and bus stop.\n(5minute walking distance)Bus routes 5 minute\nwalking distance to cargills .\n150m to Ayurveda General Hospital Rajagiriya\n\n',
                              style: TextStyle(
                                  color:const  Color(0xFFA8A8A8),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 760,
                  height: 220,
                  margin: const EdgeInsets.only(top:940, left: 5, right: 5),
                  decoration: BoxDecoration(
                    color:const  Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(width: 5, color:const  Color(0x527C7C7C),), //<-- SEE HERE
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('images/h3.jpg',),),),
                Container(
                    margin: const EdgeInsets.only(top:890, left: 5, right: 5),
                    // decoration: BoxDecoration(
                    //   color:const  Color(0x7C7C7C),
                    //   // border: Border.all(
                    //   //   color:const  Color(0xFF363636),
                    //   //   width: 9,
                    //   // ),
                    //
                    //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    // ),
                    child: Column(
                      // this makes the column height hug its content
                      children: [

                        // first row
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 8.0,top: 100.0,left: 40.0),
                            ),
                            Text(
                              '\nNo More Guessings &',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 29,
                                color:const  Color(0xFF484848,),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10.0,top: 0.0,left: 10.0),

                          child: Text('Surprises..',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 29,
                              color:const  Color(0xFFF4B207,),
                            ),
                          ),
                        ),

                      ],
                    )),
                Row(
                    children:[Container(
                      padding:const EdgeInsets.only(top:1180, left: 20, right: 0,bottom: 30),
                      child: OutlinedButton(
                        child: const Text('Reports',style:  TextStyle( fontSize: 22, fontWeight: FontWeight.bold),),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: const Color(0xFFFFB526),
                          elevation: 50,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/forgotpassword");
                        },
                      ),
                    ),
                      Container(
                        padding:const EdgeInsets.only(top:1180, left: 100, right: 0,bottom: 30),
                        child: OutlinedButton(
                          child: const Text('Reviews',style:  TextStyle( fontSize: 22, fontWeight: FontWeight.bold),),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: const Color(0xFFFFB526),
                            elevation: 50,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "/complaints");
                          },
                        ),
                      )
                    ]
                ),

              ]

          ),


        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),


    );
  }
}




