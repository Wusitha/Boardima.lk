import 'dart:convert';

import 'package:bodima_app/models/boarderModels/notification_model.dart';
import 'package:http/http.dart' as http;

import 'globals.dart';

class NotificationDBService {
  static Future<List<NotificationModel>> getNotifications(int id) async {
    var url = Uri.parse("$baseUrl/notification/get/$id");
    http.Response response = await http.get(
      url,
      headers: headers,
    );

    if (response.statusCode == 200) {
      List responseList = jsonDecode(response.body);
      List<NotificationModel> notifications = [];
      for (Map map in responseList) {
        NotificationModel notification = NotificationModel.fromJson(map);
        notifications.add(notification);
      }

      //refer: https://stackoverflow.com/questions/56050165/creating-a-list-from-json-in-flutter
      return notifications;
    } else {
      throw Exception("Failed to load notifications.");
    }
  }

  static deleteNotificationById(int id) async {
    var url = Uri.parse("$baseUrl/notification/delete/one/$id");
    http.Response response = await http.delete(
      url,
      headers: headers,
    );
  }
}
