import 'package:bodima_app/models/boarderModels/boarderModel.dart';
import 'package:bodima_app/services/boarder_db_services.dart';
import 'package:bodima_app/services/globals.dart';
import 'package:flutter/material.dart';

import '/screen/home/widget/custom_bottom_navigation_bar.dart';

//import 'package:http/http.dart' as http;
//import 'package:bodima_app/services/globals.dart';

class RegisterScreen extends StatefulWidget {
  //final BoarderModel boarderModel;
  //const RegisterScreen({Key? key, required this.boarderModel}) : super(key: key);
  final int userId;

  const RegisterScreen({Key? key, required this.userId}) : super(key: key);

  @override
  State<StatefulWidget> createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  late Future<BoarderModel> boarderFuture;
  late bool updated = false;
  late String gender = defaultString;
  late String genderName = "Not Selected";
  late BoarderModel boarder;

  //form controllers
  final _boarderUpdateFormKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController nicController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController guardianNameController = TextEditingController();
  TextEditingController guardianContactController = TextEditingController();

  // set form controller values after reading data
  void setTextControllersOfBoarderModel(BoarderModel model) {
    if (!updated) {
      if (model.firstName.toString() != defaultString) {
        firstNameController.text = model.firstName.toString();
      }
      if (model.lastName.toString() != defaultString) {
        lastNameController.text = model.lastName.toString();
      }
      if (model.nic.toString() != defaultString) {
        nicController.text = model.nic.toString();
      }
      if (model.contact.toString() != defaultString) {
        contactController.text = model.contact.toString();
      }
      if (model.guardianName.toString() != defaultString) {
        guardianNameController.text = model.guardianName.toString();
      }
      if (model.guardianContact.toString() != defaultString) {
        guardianContactController.text = model.guardianContact.toString();
      }
      if(model.gender != defaultString) {
        gender = model.gender;
        if(model.gender == "M") {
          genderName = "Male";
        } else {
          genderName = "Female";
        }
      }
      updated = true;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    boarderFuture = BoarderDBService.getBoarder(widget.userId);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          title: const Text(
            "My Profile",
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.grey.shade900,
        ),
        body: FutureBuilder<BoarderModel>(
          future: boarderFuture,
          builder: (context, reads) {
            if (reads.hasData) {
              BoarderModel boarderModel = BoarderModel(
                  id: reads.data!.id,
                  nic: reads.data!.nic,
                  firstName: reads.data!.firstName,
                  lastName: reads.data!.lastName,
                  contact: reads.data!.contact,
                  email: reads.data!.email,
                  password: reads.data!.password,
                  gender: reads.data!.gender,
                  state: reads.data!.state,
                  type: reads.data!.type,
                  guardianName: reads.data!.guardianName,
                  guardianContact: reads.data!.guardianContact,
                  profileImg: reads.data!.profileImg);

              setTextControllersOfBoarderModel(boarderModel);
              return getFromView(size, boarderModel);
            }
            return const CircularProgressIndicator();
          },
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          userId: widget.userId,
        ),
      ),
    );
  }

  getFromView(Size size, BoarderModel boarderModel) {
    return Padding(
      padding: EdgeInsets.only(
        left: size.height / 40,
        right: size.height / 40,
        top: size.height / 40,
        bottom: size.height / 40,
        // horizontal: size.width / 19,
        // vertical: size.height / 40,
      ),
      child: ListView(
        children: [
          Form(
            key: _boarderUpdateFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                //name
                const Text(
                  "FIRST NAME",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    color: Colors.grey.shade800,
                    height: 35,
                    child: TextFormField(
                      controller: firstNameController,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255)),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.manage_accounts_sharp),
                        fillColor: Color.fromARGB(70, 75, 75, 75),
                        filled: true,
                        hintText: 'Enter Your First Name',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "LAST NAME",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    color: Colors.grey.shade800,
                    height: 35,
                    child: TextFormField(
                      controller: lastNameController,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255)),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.manage_accounts_sharp),
                        fillColor: Color.fromARGB(70, 75, 75, 75),
                        filled: true,
                        hintText: 'Enter Your Last Name',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //contact
                const Text(
                  "CONTACT",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    color: Colors.grey.shade800,
                    height: 35,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: contactController,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255)),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        fillColor: Color.fromARGB(70, 75, 75, 75),
                        filled: true,
                        hintText: 'Enter Your Contact Number',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //NIC
                const Text(
                  "NIC",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    color: Colors.grey.shade800,
                    height: 35,
                    child: TextFormField(
                      controller: nicController,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255)),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.manage_search),
                        fillColor: Color.fromARGB(70, 75, 75, 75),
                        filled: true,
                        hintText: 'Enter Your NIC',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //occupation
                Text(
                  "GENDER: $genderName",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              gender = "M";
                              genderName = "Male";
                            });
                          },
                          icon: const Icon(
                            Icons.man,
                            color: Colors.lightBlue,
                          ),
                          hoverColor: Colors.white,
                          tooltip: "Male.",
                          iconSize: 50,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              gender = "F";
                              genderName = "Female";
                            });
                          },
                          icon: const Icon(
                            Icons.woman,
                            color: Colors.pinkAccent,
                          ),
                          hoverColor: Colors.white,
                          tooltip: "Female",
                          iconSize: 50,
                        )
                      ],
                    )),
                const SizedBox(
                  height: 10,
                ),
                //Address
                const Text(
                  "GUARDIAN",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    color: Colors.grey.shade800,
                    height: 35,
                    child: TextFormField(
                      controller: guardianNameController,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255)),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.manage_accounts_sharp),
                        fillColor: Color.fromARGB(70, 75, 75, 75),
                        filled: true,
                        hintText: 'Enter Your Guardian\'s Name',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //Guardian
                const Text(
                  "GUARDIAN CONTACT ",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    color: Colors.grey.shade800,
                    height: 35,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: guardianContactController,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255)),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        fillColor: Color.fromARGB(70, 75, 75, 75),
                        filled: true,
                        hintText: 'Enter Your guardian\'s Contact.',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //submit section
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     const Text(
                //       "Submit",
                //       style: TextStyle(
                //         fontSize: 24,
                //         color: Colors.white,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //     Container(
                //       height: 30,
                //       width: 30,
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(35),
                //         color: Colors.amber,
                //       ),
                //       child: const Icon(
                //         Icons.arrow_forward,
                //         color: Colors.white,
                //       ),
                //     )
                //   ],
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(),
                    Container(
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.amber.shade600,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          updateBoarder(boarderModel);
                        },
                        child: const Center(
                          child: Text(
                            "UPDATE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  updateBoarder(BoarderModel boarderModel) {
    if (gender != defaultString) {
      boarderModel = BoarderModel(
          id: boarderModel.id,
          nic: nicController.text,
          firstName: firstNameController.text,
          lastName: lastNameController.text,
          contact: contactController.text,
          email: boarderModel.email,
          password: boarderModel.password,
          gender: gender,
          state: boarderModel.state,
          type: boarderModel.type,
          guardianName: guardianNameController.text,
          guardianContact: guardianContactController.text,
          profileImg: boarderModel.profileImg);

      //check default values
      if (boarderModel.nic == defaultString) boarderModel.nic = "";
      if (boarderModel.firstName == defaultString) boarderModel.firstName = "";
      if (boarderModel.lastName == defaultString) boarderModel.lastName = "";
      if (boarderModel.contact == defaultString) boarderModel.contact = "";
      if (boarderModel.gender == defaultString) boarderModel.gender = "";
      if (boarderModel.guardianName == defaultString) {
        boarderModel.guardianName = "";
      }
      if (boarderModel.guardianContact == defaultString) {
        boarderModel.guardianContact = "";
      }
      if (boarderModel.profileImg == defaultString) {
        boarderModel.profileImg = "";
      }

      BoarderDBService.updateBoarder(boarderModel);
    }

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => RegisterScreen(userId: widget.userId),
      ),
    );

    // Map boarderModelMap = BoarderDBService.getBoarderMap(boarderModel);

    //send request to backend
  }
}
