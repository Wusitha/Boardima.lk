
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:note_via/models/addPostModel.dart';
import 'package:note_via/ui/adminPages/constants/style.dart';
import 'package:note_via/ui/bottomNavigationBar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);
  @override
  State<AddPost> createState() => AddPostState();
}
class AddPostState extends State<AddPost> {
  TextEditingController locationController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();
  TextEditingController keyMoneyController=TextEditingController();
  TextEditingController rentDateController=TextEditingController();
  TextEditingController rentAmountController=TextEditingController();
  TextEditingController bedsController=TextEditingController();
  TextEditingController bathsController=TextEditingController();
  TextEditingController genderController=TextEditingController();
  TextEditingController typeController=TextEditingController();
  Uint8List webImage=Uint8List(8);
  String imgUrl="";

  final List<String> _gender = ["Male","Female","Both"];
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
                      Container(
                          margin:const EdgeInsets.fromLTRB(300.0, 80.0, 3.0, 4.0),
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

                      Container(child: const Text('Add your Post\n\n', style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 33, fontWeight: FontWeight.bold),),
                        padding: const EdgeInsets.only(left: 35,top: 100),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 246),
                        child:  SizedBox(
                          height: maxLines * 24.0,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            controller: locationController,
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
                              labelText: 'Location',
                              labelStyle: TextStyle(fontSize: 22.0, color: Color(
                                  0xA6808080)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 386),
                        child:  SizedBox(
                          height: maxLines * 84.0,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            controller: descriptionController,
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
                              labelText: 'Description',
                              labelStyle: TextStyle(fontSize: 22.0, color: Color(
                                  0xA6808080)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 546),
                        child:  SizedBox(
                          height: maxLines * 14.0,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            controller: keyMoneyController,
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
                              labelText: 'Keymoney',
                              labelStyle: TextStyle(fontSize: 22.0, color: Color( 0xA6808080)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 646),
                        child:  SizedBox(
                          height: maxLines * 14.0,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            controller: rentDateController,
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
                              labelText: 'Rent Date',
                              labelStyle: TextStyle(fontSize: 22.0, color: Color( 0xA6808080)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 746),
                        child:  SizedBox(
                          height: maxLines * 14.0,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            controller: rentAmountController,
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
                              labelText: 'Rent Amount',
                              labelStyle: TextStyle(fontSize: 22.0, color: Color( 0xA6808080)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 846),
                        child:  SizedBox(
                          height: maxLines * 14.0,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            controller: bedsController,
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
                              labelText: 'No. of beds',
                              labelStyle: TextStyle(fontSize: 22.0, color: Color( 0xA6808080)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 946),
                        child:  SizedBox(
                          height: maxLines * 14.0,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            controller: bathsController,
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
                              labelText: 'No. of baths',
                              labelStyle: TextStyle(fontSize: 22.0, color: Color( 0xA6808080)),
                            ),
                          ),
                        ),
                      ),


                      const SizedBox(
                        height: 800,
                      ),

                      Container(
                        margin:const  EdgeInsets.fromLTRB(10.0, 1050.0, 3.0, 4.0),
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        width: 300,
                        decoration: BoxDecoration(
                            color:const  Color(0x38727272),
                            borderRadius: BorderRadius.circular(0)),
                        child: DropdownButton<String>(
                          value: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value;
                            });
                          },

                          hint:  Container(
                              child: Text(
                                '\nGender Preference',
                                style: TextStyle(fontSize: 22.0, color: Color( 0xA6808080)),
                              )),

                          // Hide the default underline
                          underline: Container(),
                          // set the color of the dropdown menu
                          dropdownColor: Color(0xFF232121),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                          ),
                          isExpanded: true,

                          // The list of options
                          items: _gender
                              .map((e) => DropdownMenuItem(
                            value: e,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                e,
                                style: const TextStyle(fontSize: 22,color: Color(0x99FFCB4D)),
                              ),
                            ),
                          ))
                              .toList(),

                          // Customize the selected item
                          selectedItemBuilder: (BuildContext context) => _gender
                              .map((e) => Center(
                            child: Text(
                              e,
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.grey,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal),
                            ),
                          ))
                              .toList(),
                        ),
                      ),

                      Container(
                        margin:const  EdgeInsets.fromLTRB(10.0, 1150.0, 3.0, 4.0),
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        width: 300,
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
                              child: Text(
                                '\nRent Type',
                                style: TextStyle(fontSize: 22.0, color: Color( 0xA6808080)),
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
                                style: const TextStyle(fontSize: 22,color: Color(0x99FFCB4D)),
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
                                  fontSize: 22,
                                  color: Colors.amber,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal),
                            ),
                          ))
                              .toList(),
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.only(top:1250, left: 5, right: 5),
                          child: TextButton.icon(
                            onPressed: () {
                              _pickImage();
                            },
                            icon: Icon(Icons.add, size: 25,color: Color(0xFFF4B207),),
                            label: Text("Add Images ",style: TextStyle(
                                color:const  Color(0xFFF4B207),
                                fontWeight: FontWeight.bold,
                                fontSize: 25
                            ),),

                          )
                      ),
                      Container(
                        margin:const  EdgeInsets.fromLTRB(10.0, 1300.0, 3.0, 4.0),
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        width: 300,
                        child: Center(
                          child: (webImage==null)?Icon(Icons.add,color: fontYellow,):Image.memory(webImage,fit: BoxFit.fill,),
                        ),
                      ),
                      Row(
                       children:[
                       Container(
                         padding: const EdgeInsets.only(top:1680, left: 35, right: 35),
                         child: const Text(
                             "Add Post",style: TextStyle(
                             color: Color(0xFFFFFFFF),
                             fontWeight: FontWeight.bold,
                             fontSize: 28.0)
                         ),
                       ),
                          Container(
                            padding:const EdgeInsets.only(top:1680, left: 80, right: 10,bottom: 0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: RawMaterialButton(
                                fillColor: const Color(0xFFFFB526),
                                elevation: 10.0,
                                child:  Icon(Icons.arrow_forward, size: 30, color: const Color(0xFFFFFFFF),),
                                onPressed: send,
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
            bottomNavigationBar: CustomBottomNavigationBar(),
        )
    );
  }

  Future <void> _pickImage() async{
    final ImagePicker _picker=ImagePicker();
    XFile? image=await _picker.pickImage(source: ImageSource.gallery);
    if(image!=null) {
      var f = await image.readAsBytes();
      // await new File("C:\\Users\\sasin\\OneDrive\\Desktop\\lectures\\yr3sem1\\professional practice\\New folder").writeAsBytes(f);
      image.saveTo(
          "C:/Users/sasin/OneDrive/Desktop/lectures/yr3sem1/professional practice/New folder/" +
              image.name);


      setState(() {
        webImage = f;
        imgUrl = "assets/" + image.name;
      });
    }

    //   }else{
    //   // print("No Image");
    // }
  }

  void send() async{
    AddPostModel addPostModel=AddPostModel(location: locationController.text, description: descriptionController.text, keyMoney: keyMoneyController.text, state: "P", rentAmount: rentAmountController.text, rentDate: rentDateController.text, beds: bedsController.text, baths: bathsController.text, type: _selectedType.toString(), imgUrl: imgUrl);
        var responce=await http.post(Uri.parse("http://192.168.14.1:8080/owner/addPlace"),
        headers: {"content-type":"application/json"},
    body: json.encode(addPostModel.toJson()));
    print(responce.body);
  }
}




