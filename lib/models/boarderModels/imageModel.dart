import 'package:bodima_app/services/globals.dart';

class ImageModel {
  int id;
  String url;
  int boardingPlace;

  ImageModel(
      {required this.id, required this.url, required this.boardingPlace});

  factory ImageModel.fromJson(Map json) {
    //null check
    if (json['id'] == null) json['id'] = defaultNumber;
    if (json['url'] == null) json['url'] = defaultString;
    if (json['boardingPlace'] == null) json['boardingPlace'] = defaultNumber;

    return ImageModel(
        id: json['id'], url: json['url'], boardingPlace: json['boardingPlace']);
  }
}
