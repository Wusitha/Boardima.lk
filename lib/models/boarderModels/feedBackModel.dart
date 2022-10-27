import 'package:bodima_app/services/globals.dart';

class ComplaintModel {
  int id;
  int boarder;
  int boardingPlace;
  String description;
  String date;

  ComplaintModel(
      {required this.id,
        required this.boarder,
        required this.boardingPlace,
        required this.description,
        required this.date});

  factory ComplaintModel.fromJson(Map map) {
    //null check
    if (map['id'] == null) map['id'] = defaultNumber;
    if (map['boarder'] == null) map['boarder'] = defaultNumber;
    if (map['boardingPlace'] == null) map['boardingPlace'] = defaultNumber;
    if (map['description'] == null) map['description'] = defaultString;
    if (map['date'] == null) map['date'] = defaultString;

    return ComplaintModel(
        id: map['id'],
        boarder: map['boarder'],
        boardingPlace: map['boardingPlace'],
        description: map['description'],
        date: map['date']);
  }
}
