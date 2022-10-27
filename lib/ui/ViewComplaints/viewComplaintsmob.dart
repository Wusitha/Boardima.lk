import 'package:flutter/material.dart';
import 'package:note_via/ui/ViewComplaints/viewComplaints.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Bordima.lk',
      home: Complaints(),
    );
  }
}