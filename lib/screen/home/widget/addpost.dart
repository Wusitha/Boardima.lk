import 'package:flutter/material.dart';
//import 'package:note_via/ui/bottomNavigationBar.dart';

import '../home1.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);
  @override
  State<AddPost> createState() => AddPostState();
}
class AddPostState extends State<AddPost> {
  final List<String> _gender = ["Male","Female"];
  String? _selectedGender;
  final List<String> _type = ["Boarding Room","Hostel"];
  String? _selectedType;
  @override
  Widget build(BuildContext context) {
    final maxLines = 5;
    return  Container(
      height: 1200,
        child: Scaffold(
            backgroundColor: Color(0xFF232121),
            body: SingleChildScrollView(
                child: Stack(
                    children:[
                      // Container(
                      //     margin:const EdgeInsets.fromLTRB(300.0, 80.0, 3.0, 4.0),
                      //     child: Row(
                      //      children: const [
                      //         SizedBox(
                      //           width: 80,
                      //           child: Image(
                      //             image: AssetImage(
                      //               "assets/logo.png",
                      //             ),
                      //             fit: BoxFit.cover,
                      //           ),
                      //         ),
                      //       ],
                      //     )
                      // ),

                      // Container(child: const Text('Add your Post\n\n', style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 33, fontWeight: FontWeight.bold),),
                      //   padding: const EdgeInsets.only(left: 35,top: 100),
                      // ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 26),
                        child:  SizedBox(
                          height: maxLines * 10.0,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white,fontSize: 10.0),
                            maxLines: maxLines,
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3,color: Color(0x38727272)
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 3,color: Color(0x38FFCB4D))
                              ),
                              labelText: 'Minimum Price',
                              labelStyle: TextStyle(fontSize: 14.0, color: Color(
                                  0xA6808080)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 86),
                        child:  SizedBox(
                          height: maxLines * 10.0,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white, fontSize: 10.0),
                            maxLines: maxLines,
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3,color: Color(0x38727272)
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 3,color: Color(0x38FFCB4D))
                              ),
                              labelText: 'Maximum Price',
                              labelStyle: TextStyle(fontSize: 14.0, color: Color(
                                  0xA6808080)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 146),
                        child:  SizedBox(
                          height: maxLines * 10.0,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white,fontSize: 10.0),
                            maxLines: maxLines,
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3,color: Color(0x38727272)
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 3,color: Color(0x38FFCB4D))
                              ),
                              labelText: 'Bed Count',
                              labelStyle: TextStyle(fontSize: 14.0, color: Color( 0xA6808080)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 180,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 206),
                        child:  SizedBox(
                          height: maxLines * 10.0,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white,fontSize: 10.0),
                            maxLines: maxLines,
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3,color: Color(0x38727272)
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 3,color: Color(0x38FFCB4D))
                              ),
                              labelText: 'Bath Count',
                              labelStyle: TextStyle(fontSize: 14.0, color: Color( 0xA6808080)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 180,
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 746),
                      //   child:  SizedBox(
                      //     height: maxLines * 14.0,
                      //     child: TextFormField(
                      //       maxLines: maxLines,
                      //       decoration: const InputDecoration(
                      //         enabledBorder: OutlineInputBorder(
                      //             borderSide: BorderSide(
                      //                 width: 3,color: Color(0x38727272)
                      //             )
                      //         ),
                      //         focusedBorder: OutlineInputBorder(
                      //             borderSide: BorderSide(width: 3,color: Color(0x38FFCB4D))
                      //         ),
                      //         labelText: 'Rent Amount',
                      //         labelStyle: TextStyle(fontSize: 22.0, color: Color( 0xA6808080)),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 80,
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 846),
                      //   child:  SizedBox(
                      //     height: maxLines * 14.0,
                      //     child: TextFormField(
                      //       maxLines: maxLines,
                      //       decoration: const InputDecoration(
                      //         enabledBorder: OutlineInputBorder(
                      //             borderSide: BorderSide(
                      //                 width: 3,color: Color(0x38727272)
                      //             )
                      //         ),
                      //         focusedBorder: OutlineInputBorder(
                      //             borderSide: BorderSide(width: 3,color: Color(0x38FFCB4D))
                      //         ),
                      //         labelText: 'No. of beds',
                      //         labelStyle: TextStyle(fontSize: 22.0, color: Color( 0xA6808080)),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 80,
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 946),
                      //   child:  SizedBox(
                      //     height: maxLines * 14.0,
                      //     child: TextFormField(
                      //       maxLines: maxLines,
                      //       decoration: const InputDecoration(
                      //         enabledBorder: OutlineInputBorder(
                      //             borderSide: BorderSide(
                      //                 width: 3,color: Color(0x38727272)
                      //             )
                      //         ),
                      //         focusedBorder: OutlineInputBorder(
                      //             borderSide: BorderSide(width: 3,color: Color(0x38FFCB4D))
                      //         ),
                      //         labelText: 'No. of baths',
                      //         labelStyle: TextStyle(fontSize: 22.0, color: Color( 0xA6808080)),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      //
                      //
                      // const SizedBox(
                      //   height: 800,
                      // ),

                      // Container(
                      //   margin:const  EdgeInsets.fromLTRB(10.0, 276.0, 3.0, 4.0),
                      //   padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      //   width: 300,
                      //   decoration: BoxDecoration(
                      //       color:const  Color(0x38727272),
                      //       borderRadius: BorderRadius.circular(0)),
                      //   child: DropdownButton<String>(
                      //     value: _selectedGender,
                      //     onChanged: (value) {
                      //       setState(() {
                      //         _selectedGender = value;
                      //       });
                      //     },
                      //
                      //     hint:  Container(
                      //         child: Text(
                      //           '\nGender Preference',
                      //           style: TextStyle(fontSize: 14.0, color: Color( 0xA6808080)),
                      //         )),
                      //
                      //     // Hide the default underline
                      //     underline: Container(),
                      //     // set the color of the dropdown menu
                      //     dropdownColor: Color(0xFF232121),
                      //     icon: const Icon(
                      //       Icons.arrow_drop_down,
                      //       color: Colors.grey,
                      //     ),
                      //     isExpanded: true,
                      //
                      //     // The list of options
                      //     items: _gender
                      //         .map((e) => DropdownMenuItem(
                      //       value: e,
                      //       child: Container(
                      //         alignment: Alignment.centerLeft,
                      //         child: Text(
                      //           e,
                      //           style: const TextStyle(fontSize: 22,color: Color(0x99FFCB4D)),
                      //         ),
                      //       ),
                      //     ))
                      //         .toList(),
                      //
                      //     // Customize the selected item
                      //     selectedItemBuilder: (BuildContext context) => _gender
                      //         .map((e) => Center(
                      //       child: Text(
                      //         e,
                      //         style: const TextStyle(
                      //             fontSize: 22,
                      //             color: Colors.grey,
                      //             fontStyle: FontStyle.normal,
                      //             fontWeight: FontWeight.normal),
                      //       ),
                      //     ))
                      //         .toList(),
                      //   ),
                      // ),

                      Container(
                        margin:const  EdgeInsets.fromLTRB(10.0, 266.0, 3.0, 4.0),
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                            color:const  Color(0x38727272),
                            borderRadius: BorderRadius.circular(0)),
                        child: DropdownButton<String>(
                          value: _selectedType,
                          onChanged: (value) {
                            setState(() {
                              _selectedType = value;
                            });
                          },

                          hint:  Container(
                              child: const Text(
                                'Property Type',
                                style: TextStyle(fontSize: 14.0, color: Color( 0xA6808080)),
                              )),

                          // Hide the default underline
                          underline: Container(),
                          // set the color of the dropdown menu
                          dropdownColor: Color(0xFF232121),
                          icon: const Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Colors.grey,
                          ),
                          isExpanded: true,

                          // The list of options
                          items: _type
                              .map((e) => DropdownMenuItem(
                            value: e,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                e,
                                style: const TextStyle(fontSize: 14,color: Color(0x99FFCB4D)),
                              ),
                            ),
                          ))
                              .toList(),

                          // Customize the selected item
                          selectedItemBuilder: (BuildContext context) => _type
                              .map((e) => Center(
                            child: Text(
                              e,
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.amber,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal),
                            ),
                          ))
                              .toList(),
                        ),
                      ),
                      // Container(
                      //     padding: const EdgeInsets.only(top:1250, left: 5, right: 5),
                      //     child: TextButton.icon(
                      //       onPressed: () {
                      //         // Respond to button press
                      //       },
                      //       icon: Icon(Icons.add, size: 25,color: Color(0xFFF4B207),),
                      //       label: Text("Add Images ",style: TextStyle(
                      //           color:const  Color(0xFFF4B207),
                      //           fontWeight: FontWeight.bold,
                      //           fontSize: 25
                      //       ),),
                      //
                      //     )
                      // ),
                      Row(
                       children:[
                       Container(
                         padding: const EdgeInsets.only(top:346, left: 120, right: 0),
                         child: const Text(
                             "Filter",style: TextStyle(
                             color: Color(0xFFFFFFFF),
                             fontWeight: FontWeight.bold,
                             fontSize: 16.0)
                         ),
                       ),
                          Container(
                            padding:const EdgeInsets.only(top:346, left: 10, right: 0,bottom: 0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: RawMaterialButton(
                                fillColor: const Color(0xFFFFB526),
                                elevation: 10.0,
                                child:  const Icon(Icons.arrow_forward, size: 16, color: Color(0xFFFFFFFF),),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => HomePage2()),
                                  );
                                },
                                padding: const EdgeInsets.all(15.0),
                                shape: const CircleBorder(),
                              ),
                            ),
                          ),
                       ]

                      )

                    ]
                )
            ),
          //  bottomNavigationBar: CustomBottomNavigationBar(),
        )
    );
  }
}




