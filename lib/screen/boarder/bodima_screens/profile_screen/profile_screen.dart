import 'package:bodima_app/models/boarderModels/boarderModel.dart';
import 'package:bodima_app/screen/boarder/krish_hostal_screen/boarder_boarding_list.dart';
import 'package:bodima_app/screen/home/visitor.dart';
import 'package:bodima_app/services/boarder_db_services.dart';
import 'package:bodima_app/services/globals.dart';
import 'package:flutter/material.dart';

import '../../krish_hostal_screen/krish_hostal_screen.dart';
import '../../../home/widget/custom_bottom_navigation_bar.dart';
import '../registration_screen/registration_screen.dart';

class ProfileScreen extends StatefulWidget {
  final int userId;

  const ProfileScreen({Key? key, required this.userId}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late Future<BoarderModel> boarderModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    boarderModel = BoarderDBService.getBoarder(widget.userId);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
            backgroundColor: Colors.grey.shade900,
            actions: const [
              // SizedBox(
              //   width: 60,
              //   child: Image(
              //     image: AssetImage(
              //       "assets/img1.png",
              //     ),
              //     fit: BoxFit.cover,
              //   ),
              // ),
            ],
            title: appBarHeader(boarderModel)),
        body: Padding(
          padding: EdgeInsets.only(
            left: size.height / 40,
            right: size.height / 40,
            top: size.height / 40,
            bottom: size.height / 40,
            // horizontal: size.width / 19,
            // vertical: size.height / 40,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Edit My Profile",
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 20,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              RegisterScreen(userId: widget.userId),
                        ),
                      );
                      //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RegisterScreen(boarderModel: ,)));
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: const Color(0xFFFFB526),
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "View My Boarding",
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 20,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              KrishHotelScreen(userId: widget.userId),
                        ),
                      );
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: const Color(0xFFFFB526),
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Logout",
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 20,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Visitor(),
                        ),
                      );
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: const Color(0xFFFFB526),
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          userId: widget.userId,
        ),
      ),
    );
  }

  appBarHeader(Future<BoarderModel> boarderModel) {
    return FutureBuilder<BoarderModel>(
        future: boarderModel,
        builder: (context, data) {
          if (data.hasData) {
            BoarderModel boarder = BoarderModel(
                id: data.data!.id,
                nic: data.data!.nic,
                firstName: data.data!.firstName,
                lastName: data.data!.lastName,
                contact: data.data!.contact,
                email: data.data!.email,
                password: data.data!.password,
                gender: data.data!.gender,
                state: data.data!.state,
                type: data.data!.type,
                guardianName: data.data!.guardianName,
                guardianContact: data.data!.guardianContact,
                profileImg: data.data!.profileImg);

            return Column(
              children: const [
                Text(
                  "My Account",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                // Text(
                //   boarder.email,
                //   style: const TextStyle(
                //     color: Colors.white,
                //     fontSize: 20,
                //   ),
                // ),
              ],
            );
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
