import 'package:bodima_app/services/globals.dart';

class FeedbackModel {
  int id;
  int boarder;
  int boardingPlace;
  int rate;
  String description;
  String date;

  FeedbackModel(
      {required this.id,
      required this.boarder,
      required this.boardingPlace,
      required this.rate,
      required this.description,
      required this.date});

  factory FeedbackModel.fromJson(Map map) {
    //null check
    if (map['id'] == null) map['id'] = defaultNumber;
    if (map['boarder'] == null) map['boarder'] = defaultNumber;
    if (map['rate'] == null) map['rate'] = defaultNumber;
    if (map['boardingPlace'] == null) map['boardingPlace'] = defaultNumber;
    if (map['description'] == null) map['description'] = defaultString;
    if (map['date'] == null) map['date'] = defaultString;

    return FeedbackModel(
        id: map['id'],
        boarder: map['boarder'],
        boardingPlace: map['boardingPlace'],
        rate: map['rate'],
        description: map['description'],
        date: map['date']);
  }
}
