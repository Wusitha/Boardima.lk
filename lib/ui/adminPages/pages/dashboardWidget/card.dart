import 'package:flutter/material.dart';

class AdminCard extends StatelessWidget {
  double width;
  double height;
  Widget mywid;
  AdminCard({required this.width,required this.height, required this.mywid});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      color: Colors.grey[750],
      child: mywid,
    );
  }
}
