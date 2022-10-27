import '/screen/home/widget/custom_bottom_navigation_bar_visitor.dart';
import 'package:flutter/material.dart';
import '/screen/home/widget/best_offer.dart';
import '/screen/home/widget/categories.dart';
import '/screen/home/widget/custom_app_bar.dart';
import '/screen/home/widget/custom_bottom_navigation_bar.dart';
import '/screen/home/widget/filter.dart';
import '/screen/home/widget/recommended_new.dart';

import 'widget/categories1.dart';
//import 'package:house_rent/screen/home/widget/search_input.dart';
//import 'package:house_rent/screen/home/widget/welcome_text.dart';

class HomePage2 extends StatelessWidget {
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
            RecommendedHouse1(),
            BestOffer()
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBarVisitor(),
    );
  }
}
