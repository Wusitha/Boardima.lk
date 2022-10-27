import '/models/boarderModels/boardingPlaceModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailAppBar extends StatefulWidget {
  final BoardingPlaceModel boardingPlace;

  const DetailAppBar({Key? key, required this.boardingPlace}) : super(key: key);

  @override
  State<DetailAppBar> createState() => _DetailAppBarState();
}

class _DetailAppBarState extends State<DetailAppBar> {
  @override
  Widget build(BuildContext context) {
    String image = widget.boardingPlace.images[0].url;
    return SizedBox(
      height: 400,
      child: Stack(
        children: [
          // Image.asset(
          //   boardingPlace.imageUrl,
          //   fit: BoxFit.cover,
          //   height: double.infinity,
          // ),
          Image.network(image),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    child: SvgPicture.asset('assets/icons/arrow.svg'),
                  ),
                ),
                Container(
                  height: 20,
                  width: 20,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.circle),
                  child: SvgPicture.asset('assets/icons/mark.svg'),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
