import 'package:bodima_app/services/globals.dart';

class NotificationModel {
  int id;
  String date;
  String message;
  String state;


  NotificationModel({required this.id, required this.date, required this.message, required this.state});

  factory NotificationModel.fromJson(Map map) {
    //null check
    if(map['date'] == null) map['date'] = defaultString;
    if(map['message'] == null) map['message'] = defaultString;
    if(map['state'] == null) map['state'] = defaultString;

    return NotificationModel(
        id: map['id'],
        date: map['date'],
        message: map['message'],
        state: map['state']
    );
  }
}