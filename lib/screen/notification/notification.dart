import '/screen//home/widget/custom_bottom_navigation_bar.dart';
import '/services/notification_db_service.dart';
import 'package:flutter/material.dart';
import '/models/boarderModels/notification_model.dart';
import '/screen/notification//notification_tile.dart';

class NotificationScreen extends StatefulWidget {
  final int userId;

  const NotificationScreen({Key? key, required this.userId}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<NotificationModel>? futures;
  bool isLoading = true;

  void getNotifications(int id) async {
    futures = (await NotificationDBService.getNotifications(id)).cast<NotificationModel>();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNotifications(1);
  }

  Scaffold getNotificationList() {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: const Text(
          "Notifications",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        userId: widget.userId,
      ),
      body: ListView.builder(
          itemCount: futures?.length,
          itemBuilder: (BuildContext context, int index) {
            if (isLoading) {
              return const Scaffold();
            }

            return NotificationTile(
              notification: futures![index],
              userId: widget.userId,
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return getNotificationList();
    }
  }
}
