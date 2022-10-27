import '/models/boarderModels/boardingPlaceModel.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  final BoardingPlaceModel boardingPlace;
  const About({Key? key, required this.boardingPlace}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            boardingPlace.description,
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
          )
        ],
      ),
    );
  }
}
