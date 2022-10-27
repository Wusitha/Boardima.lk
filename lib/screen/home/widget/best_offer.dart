import '/models/boarderModels/boardingPlaceModel.dart';
import 'package:flutter/material.dart';
import '/services/boarding_place_db_service.dart';
import '/widget/circle_icon_button.dart';

class BestOffer extends StatefulWidget {
  const BestOffer({Key? key}) : super(key: key);

  @override
  State<BestOffer> createState() => _BestOfferState();
}

class _BestOfferState extends State<BestOffer> {
  late List<BoardingPlaceModel> listOfOffer = [];
  late bool isLoading = false;

  getads() async {
    listOfOffer = await BoardingPlaceDbService.bestOffers();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getads();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Best Offer',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                'See All',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ...listOfOffer
              .map((el) => Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 150,
                              height: 80,
                              child: Image.network(
                                el.images[0].url,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              children: [
                                Text(
                                  el.name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "RS.${el.rentAmo} Per Month",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(fontSize: 12),
                                )
                              ],
                            ),
                          ],
                        ),
                        const Positioned(
                          right: 0,
                          child: CircleIconButton(
                            iconUrl: 'assets/icons/mark.svg',
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ))
              .toList()
        ],
      ),
    );
  }
}
