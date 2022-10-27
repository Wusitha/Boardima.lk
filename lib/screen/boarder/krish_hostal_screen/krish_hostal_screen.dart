import 'package:bodima_app/models/boarderModels/boardingPlaceModel.dart';
import 'package:bodima_app/screen/detail/boarder_boarding_detail.dart';
import 'package:bodima_app/services/boarding_place_db_service.dart';
import 'package:bodima_app/services/globals.dart';
import 'package:flutter/material.dart';

import '../add_complaint_screen/add_complaint_screen.dart';
import '../add_complaint_screen/complaints_list_screen.dart';
import '../give_feedback/give_feedback_screen.dart';
import '../make_payment/make_payment_screen.dart';
import '../../home/widget/custom_bottom_navigation_bar.dart';

class KrishHotelScreen extends StatefulWidget {
  final int userId;

  const KrishHotelScreen({Key? key, required this.userId}) : super(key: key);

  @override
  State<KrishHotelScreen> createState() => _KrishHotelScreenState();
}

class _KrishHotelScreenState extends State<KrishHotelScreen> {
  late Future<BoardingPlaceModel> futureBoarding;
  late bool isLoafing = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureBoarding = BoardingPlaceDbService.findByUser(widget.userId);
    setState(() {
      isLoafing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    if (!isLoafing) {
      return FutureBuilder<BoardingPlaceModel>(
        future: futureBoarding,
        builder: (context, reads) {
          if (reads.hasData) {
            if (reads.data!.id != defaultNumber) {
              BoardingPlaceModel boardingPlaceModel = BoardingPlaceModel(
                  id: reads.data!.id,
                  latitude: reads.data!.latitude,
                  altitude: reads.data!.altitude,
                  name: reads.data!.name,
                  description: reads.data!.description,
                  keyMoney: reads.data!.keyMoney,
                  state: reads.data!.state,
                  rate: reads.data!.rate,
                  date: reads.data!.date,
                  type: reads.data!.type,
                  rentDay: reads.data!.rentDay,
                  rentAmo: reads.data!.rentAmo,
                  beds: reads.data!.beds,
                  baths: reads.data!.baths,
                  genderPref: reads.data!.genderPref,
                  ownerId: reads.data!.ownerId,
                  images: reads.data!.images);

              return getScreenBody(size, boardingPlaceModel);
            } else {
              //loadProfileScreen();
              return loadErrorScreen();
            }
          } else {
            return loadingScreen();
          }
        },
      );
    } else {
      return loadingScreen();
    }
  }

  loadProfileScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => KrishHotelScreen(userId: widget.userId),
      ),
    );
  }

  loadErrorScreen() {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          title: const Text("Boarding not found."),
        ),
        body: Center(
          child: BackButton(
            color: Colors.red,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => KrishHotelScreen(userId: widget.userId),
                ),
              );
            },
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          userId: widget.userId,
        ),
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

  getScreenBody(Size size, BoardingPlaceModel boardingPlaceModel) {
    String name = boardingPlaceModel.name.toString();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          actions: const [],
          title: Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "View Boarding Profile",
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 20,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return DetailPageBoarder(
                          boardingPlace: boardingPlaceModel,
                          userId: widget.userId,
                        );
                      }));
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
                    "Add Complaint",
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
                          builder: (context) => AddComplaintScreen(
                            userId: widget.userId,
                            boardingPlaceModel: boardingPlaceModel,
                          ),
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
                    "My Complaints",
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 20,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return ComplaintListScreen(
                                userId: widget.userId,
                                boardingPlaceModel: boardingPlaceModel);
                          },
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
                    "Give Feedback",
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
                          builder: (context) => GiveFeedbackScreen(
                            userId: widget.userId,
                            boardingPlaceModel: boardingPlaceModel,
                          ),
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
                    "Make Payments",
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
                          builder: (context) => MakePaymentScreen(
                            userId: widget.userId,
                          ),
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
}
