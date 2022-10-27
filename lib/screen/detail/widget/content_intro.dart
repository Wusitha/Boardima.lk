import '/models/boarderModels/boardingPlaceModel.dart';
import 'package:flutter/material.dart';
import '../../../models/house.dart';

class ContentIntro extends StatefulWidget {
  final BoardingPlaceModel boardingPlace;
  const ContentIntro({Key? key, required this.boardingPlace}) : super(key: key);

  @override
  State<ContentIntro> createState() => _ContentIntroState();
}

class _ContentIntroState extends State<ContentIntro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.boardingPlace.name,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.boardingPlace.name, //TODO: add address if u can
            style:
            Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
          ),
          const SizedBox(height: 10),
          Text(
            'Rent date ${widget.boardingPlace.rentDay}',
            style:
            Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
          ),
          const SizedBox(
            height: 5,
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: 'RS.${widget.boardingPlace.rentAmo}',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.bold)),
              TextSpan(
                text: 'Per Month',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 14),
              )
            ]),
          )
        ],
      ),
    );
  }
}
