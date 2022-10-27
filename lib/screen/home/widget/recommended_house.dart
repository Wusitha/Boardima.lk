import '/services/boarding_place_db_service.dart';
import '/services/globals.dart';
import 'package:flutter/material.dart';
import '/models/boarderModels/boardingPlaceModel.dart';
import '/screen/detail/detail.dart';
import '/widget/circle_icon_button.dart';

class RecommendedHouse extends StatefulWidget {
  const RecommendedHouse({Key? key}) : super(key: key);

  @override
  State<RecommendedHouse> createState() => _RecommendedHouseState();
}

class _RecommendedHouseState extends State<RecommendedHouse> {
  late List<BoardingPlaceModel> futureAds = [];
  late bool isLoading = true;

  getads() async {
    futureAds = await BoardingPlaceDbService.getLatestAds();
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
      padding: const EdgeInsets.all(15),
      height: 340,
      child: getListViewHorizontal(futureAds),
    );
  }

  getListViewHorizontal(List<BoardingPlaceModel> boardingPlaceModel) {
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: futureAds.length,
        itemBuilder: (BuildContext context, int index) {
          if (isLoading) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

          return getListTile(futureAds[index]);
        }, separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 12,);
      },
      );
    }
  }

  getListTile(BoardingPlaceModel boardingPlaceModel) {
    String image = boardingPlaceModel.images[0].url;
    // String url = imgUrlLead+image+imgUrlTail;
    // print("$url\n\n\n");
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return DetailPage(boardingPlace: boardingPlaceModel, userId: defaultNumber,);
          }));
        },
        child: Container(
          width: 230,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Stack(
            children: [
              Image.network(
                image,
                fit: BoxFit.cover,
              ),
              Positioned(
                right: 15,
                top: 15,
                child: CircleIconButton(
                    iconUrl: 'assets/icons/mark.svg',
                    color: Theme.of(context).primaryColor),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.white54,
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(boardingPlaceModel.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'RS.${boardingPlaceModel.rentAmo}/ Per Month',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        CircleIconButton(
                            iconUrl: 'assets/icons/mark.svg',
                            color: Theme.of(context).primaryColor)
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}
