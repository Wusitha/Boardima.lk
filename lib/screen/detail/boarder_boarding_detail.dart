import '../../models/boarderModels/boardingPlaceModel.dart';
import '/screen/home/widget/custom_bottom_navigation_bar_visitor.dart';
import 'package:flutter/material.dart';
import '/screen/detail/widget/about.dart';
import '/screen/detail/widget/content_intro.dart';
import '/screen/detail/widget/detail_app_bar.dart';
import '/screen/detail/widget/house_info.dart';

class DetailPageBoarder extends StatelessWidget {
  final BoardingPlaceModel boardingPlace;
  final int userId;

  const DetailPageBoarder({Key? key, required this.boardingPlace, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String button = "Board";
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBarVisitor(),
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(boardingPlace: boardingPlace),
            const SizedBox(height: 20),
            ContentIntro(
              boardingPlace: boardingPlace,
            ),
            const SizedBox(height: 20),
            HouseInfo(
              boardingPlace: boardingPlace,
            ),
            const SizedBox(height: 20),
            About(boardingPlace: boardingPlace,),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  button = "Requested";
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => DetailPageBoarder(boardingPlace: boardingPlace, userId: userId)),
                  // );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  primary: Theme.of(context).primaryColor,
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: const Text(
                    'Leave',
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
      ),
    );
  }
}

