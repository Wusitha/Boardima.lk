// // import 'package:flutter/material.dart';
// // import 'package:note_via/ui/bottomNavigationBar.dart';
// //
// // class BoarderList extends StatefulWidget {
// //   const BoarderList({Key? key}) : super(key: key);
// //
// //   @override
// //   State<BoarderList> createState() => BoarderListState();
// // }
// //
// // class BoarderListState extends State<BoarderList> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child: Scaffold(
// //         backgroundColor:const  Color(0xFF232121),
// //         body: SingleChildScrollView(
// //           child: Stack(
// //             children: [
// //               Container(
// //                 margin:const  EdgeInsets.fromLTRB(300.0, 80.0, 3.0, 4.0),
// //                 decoration: BoxDecoration(color:Color(
// //                     0x9D969696),borderRadius: BorderRadius.circular(20)),
// //                 child: ClipRRect(
// //                   borderRadius: BorderRadius.circular(20),
// //                   child: SizedBox.fromSize(
// //                     size: Size.fromRadius(48), // Image radius
// //                     child: Image.network('imageUrl', fit: BoxFit.cover),
// //                   ),
// //                   // child: const [
// //                   //   SizedBox(
// //                   //     width: 80,
// //                   //     child: Image(
// //                   //       image: AssetImage(
// //                   //         "assets/logo.png",
// //                   //       ),
// //                   //       fit: BoxFit.cover,
// //                   //     ),
// //                   //   ),
// //                   // ],
// //                 ),
// //               ),
// //               Container(child:  Text('Boarders List\n\n', style:  TextStyle(color: Color(0xFFFFFFFF), fontSize: 33, fontWeight: FontWeight.bold),),
// //                 padding: const EdgeInsets.only(left: 35,top: 90),
// //               ),
// //               const SizedBox(height: 100,),
// //               Container(height: 130, width: 360,
// //                   margin:const  EdgeInsets.fromLTRB(16.0, 180.0, 10.0, .0),
// //                   padding: const EdgeInsets.only(left: 35,top: 20),
// //                 decoration: BoxDecoration(
// //                  boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2),)],
// //                   border: Border.all(
// //     color: Colors.black26.withOpacity(0.2), width: 1.0),
// //     gradient: LinearGradient(
// //     colors: [Colors.black26.withOpacity(0.5), Colors.grey.withOpacity(0.2)],
// //     stops: [0.0, 1.0],
// //     ),
// //     borderRadius: BorderRadius.circular(20)),
// //     child: const Padding(padding: EdgeInsets.all(10.0),
// //
// //       child: const Text('Esari Upendri',style:  TextStyle( color:Color(
// //           0x9D969696),fontSize: 24, fontWeight: FontWeight.normal)
// //
// //       ),
// //
// //
// //     )),
// //               Row(
// //                 children: [
// //                   Container(
// //                     padding:const EdgeInsets.only(top:330, left: 60, right: 10),
// //                     child: OutlinedButton(
// //                       child: const Text('Add',style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
// //                       style: OutlinedButton.styleFrom(
// //                         primary: Colors.white,
// //                         backgroundColor: const Color(0xFFFFB526),
// //                         elevation: 50,
// //                       ),
// //                       onPressed: () {},
// //                     ),
// //                   ),
// //                   Container(
// //                     padding:const EdgeInsets.only(top:330, left: 10, right: 10),
// //                     child: OutlinedButton(
// //                         style: OutlinedButton.styleFrom(
// //                           primary: Colors.white,
// //                           elevation: 50,
// //                           side:const BorderSide(color: Color(0xFFFFB526),width: 1.5)
// //                         ),
// //                       onPressed: () {
// //                         // Respond to button press
// //                       },
// //
// //                       child:const Text("Reject",style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
// //                     )
// //                   ),
// //                   Container(
// //                     padding:const EdgeInsets.only(top:330, left: 10, right: 10),
// //                     child: OutlinedButton(
// //                       child: const Text('Remove',style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
// //                       style: OutlinedButton.styleFrom(
// //                         primary: Colors.white,
// //                           backgroundColor: const Color(0xFFEF2E2E),
// //
// //                         // backgroundColor: Color.(0xFFFFB526),
// //                       ),
// //                       onPressed: () {},
// //                     ),
// //                   )
// //                 ],
// //               ),
// //               const SizedBox(height: 800,),
// //               Container(height: 130, width: 360,
// //                   margin:const  EdgeInsets.fromLTRB(16.0, 450.0, 10.0, .0),
// //                   padding: const EdgeInsets.only(left: 35,top: 20),
// //                   decoration: BoxDecoration(
// //                       boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2),)],
// //                       border: Border.all(
// //                           color: Colors.black26.withOpacity(0.2), width: 1.0),
// //                       gradient: LinearGradient(
// //                         colors: [Colors.black26.withOpacity(0.5), Colors.grey.withOpacity(0.2)],
// //                         stops: [0.0, 1.0],
// //                       ),
// //                       borderRadius: BorderRadius.circular(20)),
// //                   child: const Padding(padding: EdgeInsets.all(10.0),
// //
// //                     child: const Text('Esari Upendri',style:  TextStyle( color:Color(
// //                         0x9D969696),fontSize: 24, fontWeight: FontWeight.normal)
// //
// //                     ),
// //
// //
// //                   )),
// //               Row(
// //                 children: [
// //                   Container(
// //                     padding:const EdgeInsets.only(top:600, left: 60, right: 10),
// //                     child: OutlinedButton(
// //                       child: const Text('Add',style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
// //                       style: OutlinedButton.styleFrom(
// //                         primary: Colors.white,
// //                         backgroundColor: const Color(0xFFFFB526),
// //                         elevation: 50,
// //                       ),
// //                       onPressed: () {},
// //                     ),
// //                   ),
// //                   Container(
// //                       padding:const EdgeInsets.only(top:600, left: 10, right: 10),
// //                       child: OutlinedButton(
// //                         style: OutlinedButton.styleFrom(
// //                             primary: Colors.white,
// //                             elevation: 50,
// //                             side:const BorderSide(color: Color(0xFFFFB526),width: 1.5)
// //                         ),
// //                         onPressed: () {
// //                           // Respond to button press
// //                         },
// //
// //                         child:const Text("Reject",style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
// //                       )
// //                   ),
// //                   Container(
// //                     padding:const EdgeInsets.only(top:600, left: 10, right: 10),
// //                     child: OutlinedButton(
// //                       child: const Text('Remove',style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
// //                       style: OutlinedButton.styleFrom(
// //                         primary: Colors.white,
// //                         backgroundColor: const Color(0xFFEF2E2E),
// //
// //                         // backgroundColor: Color.(0xFFFFB526),
// //                       ),
// //                       onPressed: () {},
// //                     ),
// //                   )
// //                 ],
// //               ),
// //
// //               Container(height: 130, width: 360,
// //                   margin:const  EdgeInsets.fromLTRB(16.0, 720.0, 10.0, .0),
// //                   padding: const EdgeInsets.only(left: 35,top: 20),
// //                   decoration: BoxDecoration(
// //                       boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2),)],
// //                       border: Border.all(
// //                           color: Colors.black26.withOpacity(0.2), width: 1.0),
// //                       gradient: LinearGradient(
// //                         colors: [Colors.black26.withOpacity(0.5), Colors.grey.withOpacity(0.2)],
// //                         stops: [0.0, 1.0],
// //                       ),
// //                       borderRadius: BorderRadius.circular(20)),
// //                   child: const Padding(padding: EdgeInsets.all(10.0),
// //
// //                     child: const Text('Esari Upendri',style:  TextStyle( color:Color(
// //                         0x9D969696),fontSize: 24, fontWeight: FontWeight.normal)
// //
// //                     ),
// //
// //
// //                   )),
// //               Row(
// //                 children: [
// //                   Container(
// //                     padding:const EdgeInsets.only(top:870, left: 60, right: 10),
// //                     child: OutlinedButton(
// //                       child: const Text('Add',style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
// //                       style: OutlinedButton.styleFrom(
// //                         primary: Colors.white,
// //                         backgroundColor: const Color(0xFFFFB526),
// //                         elevation: 50,
// //                       ),
// //                       onPressed: () {},
// //                     ),
// //                   ),
// //                   Container(
// //                       padding:const EdgeInsets.only(top:870, left: 10, right: 10),
// //                       child: OutlinedButton(
// //                         style: OutlinedButton.styleFrom(
// //                             primary: Colors.white,
// //                             elevation: 50,
// //                             side:const BorderSide(color: Color(0xFFFFB526),width: 1.5)
// //                         ),
// //                         onPressed: () {
// //                           // Respond to button press
// //                         },
// //
// //                         child:const Text("Reject",style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
// //                       )
// //                   ),
// //                   Container(
// //                     padding:const EdgeInsets.only(top:870, left: 10, right: 10),
// //                     child: OutlinedButton(
// //                       child: const Text('Remove',style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
// //                       style: OutlinedButton.styleFrom(
// //                         primary: Colors.white,
// //                         backgroundColor: const Color(0xFFEF2E2E),
// //
// //                         // backgroundColor: Color.(0xFFFFB526),
// //                       ),
// //                       onPressed: () {},
// //                     ),
// //                   )
// //                 ],
// //               ),
// //             ],
// //           ),
// //         ),
// //         bottomNavigationBar: CustomBottomNavigationBar(),
// //       ),
// //     );
// //   }
// // }
//
// import 'package:flutter/material.dart';
//
// import '../bottomNavigationBar.dart';
//
// class BoarderList extends StatefulWidget {
//   const BoarderList({Key? key}) : super(key: key);
//
//   @override
//   State<BoarderList> createState() => BoarderListState();
// }
//
// class BoarderListState extends State<BoarderList> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Scaffold(
//         backgroundColor:const  Color(0xFF232121),
//         body: SingleChildScrollView(
//           child: Stack(
//             children: [
//               Container(
//                   margin:const EdgeInsets.fromLTRB(300.0, 80.0, 3.0, 4.0),
//                   child: Row(
//                     children: const [
//                       SizedBox(
//                         width: 80,
//                         child: Image(
//                           image: AssetImage(
//                             "assets/logo.png",
//                           ),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ],
//                   )
//               ),
//               Container(child:  Text('Visitors List\n\n', style:  TextStyle(color: Color(0xFFFFFFFF), fontSize: 33, fontWeight: FontWeight.bold),),
//                 padding: const EdgeInsets.only(left: 35,top: 90),
//               ),
//               const SizedBox(height: 100,),
//               Container(height: 100, width: 360,
//                   margin:const  EdgeInsets.fromLTRB(16.0, 180.0, 10.0, .0),
//                   padding: const EdgeInsets.only(left: 35,top: 0),
//                   decoration: BoxDecoration(
//                       boxShadow: [BoxShadow(color: Colors.black26.withOpacity(0.2),)],
//                       border: Border.all(
//                           color: Colors.black26.withOpacity(0.2), width: 1.0),
//                       gradient: LinearGradient(
//                         colors: [Colors.black26.withOpacity(0.5), Colors.black26.withOpacity(0.2)],
//                         stops: [0.0, 1.0],
//                       ),
//                       borderRadius: BorderRadius.circular(20)),
//                   // child: const Padding(padding: EdgeInsets.all(10.0),
//                   //
//                   //   child: const Text('Esari Upendri\nStudies at University of Colombo',style:  TextStyle( color:Color(
//                   //       0x9D969696),fontSize: 24, fontWeight: FontWeight.normal)
//                   //
//                   //   ),
//                   //
//                   //
//                   // )
//                   child: Column(
//                     // this makes the column height hug its content
//                     // mainAxisSize: MainAxisSize.min,
//                     children: [
//
//                       // first row
//                       Row(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(right: 8.0,top: 0.0,left: 0.0),
//                           ),
//                           Text(
//                             '\nBuddhima Weerasinghe',
//                             style: TextStyle(fontWeight: FontWeight.normal,fontSize: 19,
//                               color:const  Color(0xFF818181,),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(right: 20.0,top: 0.0,left: 10.0),
//
//                         child: Text('Studies at ACBT university\nNeed a room with studying area',
//                           style: TextStyle(
//                             color:const  Color(0xFF6C6C6C),
//                           ),
//                         ),
//                       ),
//
//                     ],
//                   )
//               ),
//               Row(
//                 children: [
//                   Container(
//                     padding:const EdgeInsets.only(top:290, left: 60, right: 10),
//                     child: OutlinedButton(
//                       child: const Text('Add',style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
//                       style: OutlinedButton.styleFrom(
//                         primary: Colors.white,
//                         backgroundColor: const Color(0xFFFFB526),
//                         elevation: 50,
//                       ),
//                       onPressed: () {},
//                     ),
//                   ),
//                   Container(
//                       padding:const EdgeInsets.only(top:290, left: 10, right: 10),
//                       child: OutlinedButton(
//                         style: OutlinedButton.styleFrom(
//                             primary: Colors.white,
//                             elevation: 50,
//                             side:const BorderSide(color: Color(0xFFFFB526),width: 1.5)
//                         ),
//                         onPressed: () {
//                           // Respond to button press
//                         },
//
//                         child:const Text("Reject",style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
//                       )
//                   ),
//                   Container(
//                     padding:const EdgeInsets.only(top:290, left: 10, right: 10),
//                     child: OutlinedButton(
//                       child: const Text('Remove',style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
//                       style: OutlinedButton.styleFrom(
//                         primary: Colors.white,
//                         backgroundColor: const Color(0xFFEF2E2E),
//
//                         // backgroundColor: Color.(0xFFFFB526),
//                       ),
//                       onPressed: () {},
//                     ),
//                   )
//                 ],
//               ),
//               const SizedBox(height: 500,),
//               Container(height: 100, width: 360,
//                   margin:const  EdgeInsets.fromLTRB(16.0, 380.0, 10.0, .0),
//                   padding: const EdgeInsets.only(left: 35,top: 0),
//                   decoration: BoxDecoration(
//                       boxShadow: [BoxShadow(color: Colors.black26.withOpacity(0.2),)],
//                       border: Border.all(
//                           color: Colors.black26.withOpacity(0.2), width: 1.0),
//                       gradient: LinearGradient(
//                         colors: [Colors.black26.withOpacity(0.5), Colors.black26.withOpacity(0.2)],
//                         stops: [0.0, 1.0],
//                       ),
//                       borderRadius: BorderRadius.circular(20)),
//                   // child: const Padding(padding: EdgeInsets.all(10.0),
//                   //
//                   //   child: const Text('Esari Upendri\nStudies at University of Colombo',style:  TextStyle( color:Color(
//                   //       0x9D969696),fontSize: 24, fontWeight: FontWeight.normal)
//                   //
//                   //   ),
//                   //
//                   //
//                   // )
//                   child: Column(
//                     // this makes the column height hug its content
//                     // mainAxisSize: MainAxisSize.min,
//                     children: [
//
//                       // first row
//                       Row(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(right: 8.0,top: 0.0,left: 0.0),
//                           ),
//                           Text(
//                             '\nEsari Upendri',
//                             style: TextStyle(fontWeight: FontWeight.normal,fontSize: 19,
//                               color:const  Color(0xFF818181,),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(right: 20.0,top: 0.0,left: 10.0),
//
//                         child: Text('Studies at Univeristy of Colombo\nNeed a room for two girls',
//                           style: TextStyle(
//                             color:const  Color(0xFF6C6C6C),
//                           ),
//                         ),
//                       ),
//
//                     ],
//                   )
//               ),
//               Row(
//                 children: [
//                   Container(
//                     padding:const EdgeInsets.only(top:490, left: 60, right: 10),
//                     child: OutlinedButton(
//                       child: const Text('Add',style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
//                       style: OutlinedButton.styleFrom(
//                         primary: Colors.white,
//                         backgroundColor: const Color(0xFFFFB526),
//                         elevation: 50,
//                       ),
//                       onPressed: () {},
//                     ),
//                   ),
//                   Container(
//                       padding:const EdgeInsets.only(top:490, left: 10, right: 10),
//                       child: OutlinedButton(
//                         style: OutlinedButton.styleFrom(
//                             primary: Colors.white,
//                             elevation: 50,
//                             side:const BorderSide(color: Color(0xFFFFB526),width: 1.5)
//                         ),
//                         onPressed: () {
//                           // Respond to button press
//                         },
//
//                         child:const Text("Reject",style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
//                       )
//                   ),
//                   Container(
//                     padding:const EdgeInsets.only(top:490, left: 10, right: 10),
//                     child: OutlinedButton(
//                       child: const Text('Remove',style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
//                       style: OutlinedButton.styleFrom(
//                         primary: Colors.white,
//                         backgroundColor: const Color(0xFFEF2E2E),
//
//                         // backgroundColor: Color.(0xFFFFB526),
//                       ),
//                       onPressed: () {},
//                     ),
//                   )
//                 ],
//               ),
//               const SizedBox(height: 500,),
//               Container(height: 100, width: 360,
//                   margin:const  EdgeInsets.fromLTRB(16.0, 580.0, 10.0, .0),
//                   padding: const EdgeInsets.only(left: 35,top: 0),
//                   decoration: BoxDecoration(
//                       boxShadow: [BoxShadow(color: Colors.black26.withOpacity(0.2),)],
//                       border: Border.all(
//                           color: Colors.black26.withOpacity(0.2), width: 1.0),
//                       gradient: LinearGradient(
//                         colors: [Colors.black26.withOpacity(0.5), Colors.black26.withOpacity(0.2)],
//                         stops: [0.0, 1.0],
//                       ),
//                       borderRadius: BorderRadius.circular(20)),
//                   // child: const Padding(padding: EdgeInsets.all(10.0),
//                   //
//                   //   child: const Text('Esari Upendri\nStudies at University of Colombo',style:  TextStyle( color:Color(
//                   //       0x9D969696),fontSize: 24, fontWeight: FontWeight.normal)
//                   //
//                   //   ),
//                   //
//                   //
//                   // )
//                   child: Column(
//                     // this makes the column height hug its content
//                     // mainAxisSize: MainAxisSize.min,
//                     children: [
//
//                       // first row
//                       Row(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(right: 8.0,top: 0.0,left: 0.0),
//                           ),
//                           Text(
//                             '\nSandun Wijesinghe',
//                             style: TextStyle(fontWeight: FontWeight.normal,fontSize: 19,
//                               color:const  Color(0xFF818181,),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(right: 20.0,top: 0.0,left: 10.0),
//
//                         child: Text('Works at CEB\nNeed a single room',
//                           style: TextStyle(
//                             color:const  Color(0xFF6C6C6C),
//                           ),
//                         ),
//                       ),
//
//                     ],
//                   )
//               ),
//               Row(
//                 children: [
//                   Container(
//                     padding:const EdgeInsets.only(top:690, left: 60, right: 10),
//                     child: OutlinedButton(
//                       child: const Text('Add',style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
//                       style: OutlinedButton.styleFrom(
//                         primary: Colors.white,
//                         backgroundColor: const Color(0xFFFFB526),
//                         elevation: 50,
//                       ),
//                       onPressed: () {},
//                     ),
//                   ),
//                   Container(
//                       padding:const EdgeInsets.only(top:690, left: 10, right: 10),
//                       child: OutlinedButton(
//                         style: OutlinedButton.styleFrom(
//                             primary: Colors.white,
//                             elevation: 50,
//                             side:const BorderSide(color: Color(0xFFFFB526),width: 1.5)
//                         ),
//                         onPressed: () {
//                           // Respond to button press
//                         },
//
//                         child:const Text("Reject",style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
//                       )
//                   ),
//                   Container(
//                     padding:const EdgeInsets.only(top:690, left: 10, right: 10),
//                     child: OutlinedButton(
//                       child: const Text('Remove',style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
//                       style: OutlinedButton.styleFrom(
//                         primary: Colors.white,
//                         backgroundColor: const Color(0xFFEF2E2E),
//
//                         // backgroundColor: Color.(0xFFFFB526),
//                       ),
//                       onPressed: () {},
//                     ),
//                   )
//                 ],
//               ),
//               const SizedBox(height: 500,),
//               Container(height: 100, width: 360,
//                   margin:const  EdgeInsets.fromLTRB(16.0, 780.0, 10.0, .0),
//                   padding: const EdgeInsets.only(left: 35,top: 0),
//                   decoration: BoxDecoration(
//                       boxShadow: [BoxShadow(color: Colors.black26.withOpacity(0.2),)],
//                       border: Border.all(
//                           color: Colors.black26.withOpacity(0.2), width: 1.0),
//                       gradient: LinearGradient(
//                         colors: [Colors.black26.withOpacity(0.5), Colors.black26.withOpacity(0.2)],
//                         stops: [0.0, 1.0],
//                       ),
//                       borderRadius: BorderRadius.circular(20)),
//                   // child: const Padding(padding: EdgeInsets.all(10.0),
//                   //
//                   //   child: const Text('Esari Upendri\nStudies at University of Colombo',style:  TextStyle( color:Color(
//                   //       0x9D969696),fontSize: 24, fontWeight: FontWeight.normal)
//                   //
//                   //   ),
//                   //
//                   //
//                   // )
//                   child: Column(
//                     // this makes the column height hug its content
//                     // mainAxisSize: MainAxisSize.min,
//                     children: [
//
//                       // first row
//                       Row(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(right: 8.0,top: 0.0,left: 0.0),
//                           ),
//                           Text(
//                             '\nPiyumi Rathnayake',
//                             style: TextStyle(fontWeight: FontWeight.normal,fontSize: 19,
//                               color:const  Color(0xFF818181,),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(right: 20.0,top: 0.0,left: 10.0),
//
//                         child: Text('Works at Dialog Axiata\nNeed two rooms for 4 girls',
//                           style: TextStyle(
//                             color:const  Color(0xFF6C6C6C),
//                           ),
//                         ),
//                       ),
//
//                     ],
//                   )
//               ),
//               Row(
//                 children: [
//                   Container(
//                     padding:const EdgeInsets.only(top:890, left: 60, right: 10),
//                     child: OutlinedButton(
//                       child: const Text('Add',style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
//                       style: OutlinedButton.styleFrom(
//                         primary: Colors.white,
//                         backgroundColor: const Color(0xFFFFB526),
//                         elevation: 50,
//                       ),
//                       onPressed: () {},
//                     ),
//                   ),
//                   Container(
//                       padding:const EdgeInsets.only(top:890, left: 10, right: 10),
//                       child: OutlinedButton(
//                         style: OutlinedButton.styleFrom(
//                             primary: Colors.white,
//                             elevation: 50,
//                             side:const BorderSide(color: Color(0xFFFFB526),width: 1.5)
//                         ),
//                         onPressed: () {
//                           // Respond to button press
//                         },
//
//                         child:const Text("Reject",style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
//                       )
//                   ),
//                   Container(
//                     padding:const EdgeInsets.only(top:890, left: 10, right: 10),
//                     child: OutlinedButton(
//                       child: const Text('Remove',style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
//                       style: OutlinedButton.styleFrom(
//                         primary: Colors.white,
//                         backgroundColor: const Color(0xFFEF2E2E),
//
//                         // backgroundColor: Color.(0xFFFFB526),
//                       ),
//                       onPressed: () {},
//                     ),
//                   )
//                 ],
//               ),
//               const SizedBox(height: 500,),
//             ],
//           ),
//         ),
//         bottomNavigationBar: CustomBottomNavigationBar(),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:note_via/models/boarderListModel.dart';
import 'package:note_via/ui/adminPages/constants/style.dart';
import 'package:note_via/ui/screen/home/widget/custom_bottom_navigation_bar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BoarderList extends StatefulWidget {
  const BoarderList({Key? key}) : super(key: key);

  @override
  State<BoarderList> createState() => BoarderListState();
}

class BoarderListState extends State<BoarderList> {
  Future<String> getRequestedBoarders() async
  {
    var response=await http.get(Uri.parse("http://localhost:8080/owner/boardersList"));
    print(response.body);
    return response.body;

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor:const  Color(0xFF232121),
        appBar: AppBar(title: Text("Requested Boarder List",style: TextStyle(color: Colors.white,fontSize: 24),),leading:Image.asset("assets/logo.png") ,backgroundColor: const  Color(0xFF232121),),
        body: FutureBuilder(
          future: getRequestedBoarders(),
          builder: (context,snapshot){
            if(snapshot.connectionState==ConnectionState.done)
            {
              if(snapshot.hasData)
              {
                var data=snapshot.data.toString();
                var responseInJson=json.decode(data);
                BoarderListModel boarders= BoarderListModel.fromJson({"data":responseInJson});


                return ListView.builder(
                  itemCount: boarders.data.length,
                  itemBuilder: (context,index){
                    return Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Card(
                          color:navigationBarColor ,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                          child:ListTile(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                            onTap: (){},
                            leading:Icon(Icons.supervised_user_circle_outlined,color: fontYellow,),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${boarders.data[index].firstName} ${boarders.data[index].lastName}",style: TextStyle(fontSize: 22,color: Colors.white),),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Text("Contact :${boarders.data[index].contact}",style: TextStyle(color: Colors.white,fontSize: 13),),
                                    SizedBox(width: 5,),
                                    // Text("Date of Birth :${boarders.data[index].dob}",style: TextStyle(color: Colors.white,fontSize: 10),),
                                    // SizedBox(width: 5,),
                                    Text("Gender :${boarders.data[index].gender}",style: TextStyle(color: Colors.white,fontSize: 13),),
                                    SizedBox(width: 10,),

                                    SizedBox(width: 2,),


                                  ],


                                ),
                                SizedBox(height: 6,),
                                Row(
                                  children: [
                                    FloatingActionButton.extended(onPressed: (){},icon:Icon(Icons.sms_failed_outlined,color:fontYellow),label:Text("Reject",style: TextStyle(color: fontYellow,fontSize: 13),),backgroundColor: Colors.red.withOpacity(0.25),),
                                    SizedBox(width: 10,),
                                    FloatingActionButton.extended(onPressed: ()=>accept(context,boarders.data[0].id),icon:Icon(Icons.done,color:fontYellow),label:Text("Accept",style: TextStyle(color: fontYellow,fontSize: 13),),backgroundColor: Colors.green.withOpacity(0.25),),
                                  ],
                                )


                              ],
                            ),
                            // trailing: Row(
                            //   children: [
                            //     FloatingActionButton.extended(onPressed: (){},icon:Icon(Icons.done,color:fontYellow),label:Text("Reject",style: TextStyle(color: fontYellow,fontSize: 16),),backgroundColor: Colors.red.withOpacity(0.25),),
                            //     SizedBox(width: 10,),
                            //     FloatingActionButton.extended(onPressed: ()=>accept(context,boarders.data[0].id),icon:Icon(Icons.done,color:fontYellow),label:Text("Accept",style: TextStyle(color: fontYellow,fontSize: 16),),backgroundColor: Colors.green.withOpacity(0.25),),
                            //   ],
                            // ),

                          ),
                        )
                    );
                  },
                );

              }

            }
            return Center(
              child:CircularProgressIndicator(color: fontYellow),
            );

          },
        ),

        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }

  void accept(BuildContext context,id) async{
    var response=await http.post(Uri.parse("http://localhost:8080/owner/acceptBoarder"),
        headers: {"content-type":"application/json"},
        body: id.toString());
    print(response.body);
    Navigator.pushNamed(context, "/myBoarders");


  }
}

