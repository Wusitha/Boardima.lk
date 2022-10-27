import 'package:flutter/material.dart';

class BoardingPlaceList extends StatefulWidget {
  final int userId;

  const BoardingPlaceList({Key? key, required this.userId}) : super(key: key);

  @override
  State<BoardingPlaceList> createState() => _BoardingPlaceListState();
}

class _BoardingPlaceListState extends State<BoardingPlaceList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          backgroundColor: const Color(0xFF676767),
          title: const Text("My Boarding Places"),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            left: size.height / 40,
            right: size.height / 40,
            top: size.height / 40,
            bottom: size.height / 40,
          ),
          child: ListView(),
        ),
      ),
    );
  }
}
