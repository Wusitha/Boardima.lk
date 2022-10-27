import '/models/boarderModels/notification_model.dart';
import '/screen/notification/notification.dart';
import '/services/notification_db_service.dart';
import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  final NotificationModel notification;
  final int userId;

  const NotificationTile({Key? key, required this.notification, required this.userId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      child: ListTile(
        leading: const Icon(
          Icons.notifications,
          color: Colors.black,
          size: 24,
        ),
        contentPadding: const EdgeInsets.all(5),
        title: Text(
          notification.message,
          style:
          const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          notification.date,
          style: const TextStyle(color: Colors.white),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            NotificationDBService.deleteNotificationById(notification.id);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    NotificationScreen(userId: userId),
              ),
            );
          },
        ),
        tileColor: Colors.grey.shade500,
        textColor: Colors.white,
        hoverColor: Colors.amber,
      ),
    );
    // return Card(
    //   color: Colors.grey,
    //   child: Padding(
    //     padding: const EdgeInsets.all(15),
    //     child: Text(
    //       notification.message,
    //       style: const TextStyle(color: Colors.white, fontSize: 20),
    //     ),
    //   ),
    // );
  }
}
