import 'package:bodima_app/screen/home/widget/custom_bottom_navigation_bar_visitor.dart';
import 'package:flutter/material.dart';
import 'widget/best_offer.dart';
import 'widget/categories.dart';
import 'widget/custom_app_bar.dart';
import 'widget/filter.dart';
import 'widget/recommended_house.dart';

import 'widget/categories1.dart';
//import 'package:house_rent/screen/home/widget/search_input.dart';
//import 'package:house_rent/screen/home/widget/welcome_text.dart';

class HomePageVisitor extends StatelessWidget {
  const HomePageVisitor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // WelcomeText(),
            //  SearchInput(),
            //Categories1(),
            Categories(),
            FilterList(),
            // Categories(),
            const RecommendedHouse(),
            const BestOffer()
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBarVisitor(),
    );
  }
}
