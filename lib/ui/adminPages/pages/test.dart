import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestPage  extends StatelessWidget {
  int id;
  TestPage({required this.id});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(id.toString()),
    );
  }
}
