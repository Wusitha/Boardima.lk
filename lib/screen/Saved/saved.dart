import 'package:flutter/material.dart';

import '../home/widget/custom_bottom_navigation_bar.dart';
import '../home/widget/wishlist.dart';
import 'widget/CustomAppBarS.dart';

class saved extends StatelessWidget {
  final int userId;
  const saved({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(backgroundColor: Colors.grey.shade900, title: const Text("Saved Homes"),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // WelcomeText(),
            //  SearchInput(),
            WishList(),
            //Categories(),
            //FilterList(),
            // Categories(),
            //RecommendedHouse(),
            //BestOffer()
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(userId: userId,),
    );
  }
}
