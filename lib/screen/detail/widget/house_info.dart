import '/models/boarderModels/boardingPlaceModel.dart';
import '/services/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HouseInfo extends StatefulWidget {
  final BoardingPlaceModel boardingPlace;

  const HouseInfo({Key? key, required this.boardingPlace}) : super(key: key);

  @override
  State<HouseInfo> createState() => _HouseInfoState();
}

class _HouseInfoState extends State<HouseInfo> {
  @override
  Widget build(BuildContext context) {
    BoardingPlaceModel model = widget.boardingPlace;
    String genderPref;
    String boardingType;

    if (model.genderPref == "M") {
      genderPref = "Male";
    } else {
      genderPref = "Female";
    }

    if (model.type == 1) {
      boardingType = boardingType1;
    } else {
      boardingType = boardingType2;
    }
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              MenuInfo(
                  imageUrl: 'assets/icons/bedroom.svg',
                  content: 'Beds\n${model.beds}Bedrooms'),
              MenuInfo(
                  imageUrl: 'assets/icons/bathroom.svg',
                  content: 'Baths\n${model.baths} Bathrooms'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              MenuInfo(
                  imageUrl: 'assets/icons/kitchen.svg',
                  content: 'Gender Preference\n$genderPref'),
              MenuInfo(
                  imageUrl: 'assets/icons/parking.svg',
                  content: 'Property type\n$boardingType'),
            ],
          )
        ],
      ),
    );
  }
}

class MenuInfo extends StatelessWidget {
  final String imageUrl;
  final String content;

  const MenuInfo({Key? key, required this.imageUrl, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Row(
          children: [
            SvgPicture.asset(imageUrl),
            SizedBox(width: 20),
            Text(
              content,
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
