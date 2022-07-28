import 'package:flutter/material.dart';
import 'widget/best_offer.dart';
import 'widget/categories.dart';
import 'widget/custom_bottom_navigation_bar.dart';
import 'widget/filter.dart';
import 'widget/recommended_house.dart';

import 'widget/search_input.dart';
import 'widget/welcome_text.dart';

//import 'package:house_rent/screen/home/widget/search_input.dart';
//import 'package:house_rent/screen/home/widget/welcome_text.dart';

class HomePage1 extends StatelessWidget {
  final int userId;

  const HomePage1({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      //appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeText(),
            SearchInput(),
            Categories(),
            FilterList(),
            // Categories(),
            const RecommendedHouse(),
            const BestOffer()
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        userId: userId,
      ),
    );
  }
}
