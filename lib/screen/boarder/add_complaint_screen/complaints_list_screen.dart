import 'package:bodima_app/models/boarderModels/boardingPlaceModel.dart';
import 'package:bodima_app/services/globals.dart';
import 'package:flutter/material.dart';

import 'package:bodima_app/models/boarderModels/complaintModel.dart';
import 'package:bodima_app/services/complaint_db_services.dart';
import 'package:bodima_app/screen/home/widget/custom_bottom_navigation_bar.dart';

class ComplaintListScreen extends StatefulWidget {
  final int userId;
  final BoardingPlaceModel boardingPlaceModel;

  const ComplaintListScreen(
      {Key? key, required this.userId, required this.boardingPlaceModel})
      : super(key: key);

  @override
  State<ComplaintListScreen> createState() => _ComplaintListScreenState();
}

class _ComplaintListScreenState extends State<ComplaintListScreen> {
  late bool isLoading = true;
  late List<ComplaintModel> complaints;

  loadComplaints() async {
    complaints = await ComplaintDbService.getComplaints(
        widget.userId, widget.boardingPlaceModel.id);
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadComplaints();
  }

  getListTile(Size size, ComplaintModel complaintModel) {
    return Padding(
      padding: EdgeInsets.only(
        left: size.height / 40,
        right: size.height / 40,
        // horizontal: size.width / 19,
        // vertical: size.height / 40,
      ),
      child: Column(
        children: [
          ListTile(
            tileColor: Colors.grey.shade500,
            iconColor: Colors.grey.shade300,
            selectedColor: Colors.grey.shade500,
            leading: const Icon(
              Icons.warning,
              color: Colors.amber,
            ),
            title: Text(
              complaintModel.description,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            subtitle: Text("Date: ${complaintModel.date}",
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
            trailing: IconButton(
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
              ),
              onPressed: () {
                deleteComplaint(complaintModel.id);
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  void deleteComplaint(int id) {
    ComplaintModel complaintModel = ComplaintModel(
        id: id,
        boarder: widget.userId,
        boardingPlace: widget.boardingPlaceModel.id,
        description: defaultString,
        date: defaultString);
    ComplaintDbService.deleteComplaint(complaintModel);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (isLoading) {
      return loadingScreen();
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: const Text(
          "My Complaints",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        backgroundColor: Colors.grey.shade900,
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        userId: widget.userId,
      ),
      body: ListView.builder(
        itemCount: complaints.length,
        itemBuilder: (BuildContext context, int index) {
          if (isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return getListTile(size, complaints[index]);
        },
      ),
    );
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
}
