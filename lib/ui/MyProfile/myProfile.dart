import 'package:flutter/material.dart';
import 'package:note_via/ui/bottomNavigationBar.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => MyProfileState();
}

class MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Scaffold(
        backgroundColor: Color(0xFF232121),
        body:SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(300.0, 70.0, 3.0, 8.0),
              child: Row(
                children: <Widget>[
                  Image.asset('assets/logo.png',
                    height: 80,
                    width: 80,
                  )
                ],
              ),
            ),
            Container(child: const Text('Profile\n\n', style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 33, fontWeight: FontWeight.bold),),
              padding: const EdgeInsets.only(left: 35,top: 90),
            ),
            Container(
              padding: const EdgeInsets.only(top:160, left: 35, right: 35),
              child: Column(
                children: const [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.manage_accounts_sharp),
                      fillColor: Color(0x47BBBBBB),
                      filled: true,
                      hintText: 'First Name',
                      hintStyle: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, color: Color(
                          0xFF000000)),
                      border: OutlineInputBorder(
                        borderRadius:  BorderRadius.all( Radius.circular(10.0),),
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
                      prefixIcon: Icon(Icons.manage_accounts_sharp),
                      fillColor: Color(0x47BBBBBB),
                      filled: true,
                      hintText: 'Last Name',
                      hintStyle: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, color: Color(
                          0xFF000000)),
                      border: OutlineInputBorder(
                        borderRadius:  BorderRadius.all( Radius.circular(10.0),),
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
                      prefixIcon: Icon(Icons.date_range),
                      fillColor: Color(0x47BBBBBB),
                      filled: true,
                      hintText: 'Date of Birth',
                      hintStyle: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, color: Color(
                          0xFF000000)),
                      border: OutlineInputBorder(
                        borderRadius:  BorderRadius.all( Radius.circular(10.0),),
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
                      prefixIcon: Icon(Icons.person),
                      fillColor: Color(0x47BBBBBB),
                      filled: true,
                      hintText: 'Gender',
                      hintStyle: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, color: Color(
                          0xFF000000)),
                      border: OutlineInputBorder(
                        borderRadius:  BorderRadius.all( Radius.circular(10.0),),
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
                        prefixIcon: Icon(Icons.key),
                        fillColor: Color(0x47BBBBBB),
                        filled: true,
                        hintText: 'NIC',
                        hintStyle: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, color: Color(
                            0xFF000000)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      )
                  ),
                  SizedBox(
                    //Use of SizedBox
                    height: 30,
                  ),
                  TextField(
                      decoration:  InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        fillColor: Color(0x47BBBBBB),
                        filled: true,
                        hintText: 'Contact No',
                        hintStyle: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, color: Color(
                            0xFF000000)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),
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
            const SizedBox(
              //Use of SizedBox
              height: 60,
            ),
            Container(
              padding: const EdgeInsets.only(top:720, left: 35, right: 35),
              child: const Text(
                  "Save Changes",style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0)
              ),
            ),
            Container(
              padding:const EdgeInsets.only(top:710, left: 20, right: 20),
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
          ],
        ),

      ),
    bottomNavigationBar: CustomBottomNavigationBar(),
    ),);
  }
}