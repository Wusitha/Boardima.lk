import 'package:flutter/material.dart';
import '../../home/widget/custom_bottom_navigation_bar.dart';
import 'package:bodima_app/models/boarderModels/boardingPlaceModel.dart';
import 'package:bodima_app/models/boarderModels/complaintModel.dart';
import 'package:bodima_app/screen/boarder/add_complaint_screen/complaints_list_screen.dart';
import 'package:bodima_app/services/complaint_db_services.dart';
import 'package:bodima_app/services/globals.dart';

import '../alert.dart';

class GiveFeedbackScreen extends StatefulWidget {
  final int userId;
  final BoardingPlaceModel boardingPlaceModel;

  const GiveFeedbackScreen(
      {Key? key, required this.userId, required this.boardingPlaceModel})
      : super(key: key);

  @override
  State<GiveFeedbackScreen> createState() => _GiveFeedbackScreenState();
}

class _GiveFeedbackScreenState extends State<GiveFeedbackScreen> {
  final _addComplaintFormKey = GlobalKey<FormState>();
  TextEditingController complaintController = TextEditingController();

  void addFeedback() async {
    ComplaintModel complaintModel = ComplaintModel(
        id: defaultNumber,
        boarder: widget.userId,
        boardingPlace: widget.boardingPlaceModel.id,
        description: complaintController.text,
        date: defaultString);

    ComplaintDbService.addComplaint(complaintModel);

    showAlertDialog;
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ComplaintListScreen(
            userId: widget.userId,
            boardingPlaceModel: widget.boardingPlaceModel,
          ),
        ),
      );
    });
  }

  loadingScreen() {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          title: const Text("Loading..."),
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          userId: widget.userId,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: const Text(
          "Give Feedback",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              "Your Feedback",
              style: TextStyle(color: Colors.grey.shade400, fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
            Form(
              key: _addComplaintFormKey,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      color: Colors.grey.shade800,
                      height: 55,
                      child: TextFormField(
                        controller: complaintController,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.feedback,
                          ),
                          fillColor: Color.fromARGB(70, 75, 75, 75),
                          filled: true,
                          hintText: 'Enter Your feedback.',
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
                  ElevatedButton(
                    onPressed: () {
                      addFeedback();
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFFFB526)),
                    child: const Text(
                      "Submit",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        userId: widget.userId,
      ),
    );
  }
}
