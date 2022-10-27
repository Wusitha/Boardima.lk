import 'package:bodima_app/models/boarderModels/imageModel.dart';
import 'package:bodima_app/services/globals.dart';
import 'package:bodima_app/services/image_db_service.dart';

class BoardingPlaceModel {
  int id;
  double latitude;
  double altitude;
  String name;
  String description;
  int keyMoney;
  String state;
  double rate;
  String date;
  int rentDay;
  double rentAmo;
  int beds;
  int baths;
  String genderPref;
  int type;
  int ownerId;
  List<ImageModel> images;

  BoardingPlaceModel(
      {required this.id,
      required this.latitude,
      required this.altitude,
      required this.name,
      required this.description,
      required this.keyMoney,
      required this.state,
      required this.rate,
      required this.date,
      required this.type,
      required this.rentDay,
      required this.rentAmo,
      required this.beds,
      required this.baths,
      required this.genderPref,
      required this.ownerId,
      required this.images});

  factory BoardingPlaceModel.fromJson(Map<dynamic, dynamic> json) {
    List<ImageModel> imageModels = [];
    //check nulls
    if (json['id'] == null) json['id'] = defaultNumber;
    if (json['latitude'] == null) json['latitude'] = defaultNumber;
    if (json['altitude'] == null) json['altitude'] = defaultNumber;
    if (json['name'] == null) json['name'] = defaultString;
    if (json['description'] == null) json['description'] = defaultString;
    if (json['keyMoney'] == null) json['keyMoney'] = defaultNumber;
    if (json['state'] == null) json['state'] = defaultString;
    if (json['rate'] == null) json['rate'] = defaultNumber;
    if (json['date'] == null) json['date'] = defaultString;
    if (json['rentDay'] == null) json['rentDay'] = defaultNumber;
    if (json['rentAmo'] == null) json['rentAmo'] = defaultNumber;
    if (json['baths'] == null) json['baths'] = defaultNumber;
    if (json['beds'] == null) json['beds'] = defaultNumber;
    if (json['genderPref'] == null) json['genderPref'] = defaultString;
    if (json['type'] == null) json['type'] = defaultNumber;
    if (json['ownerId'] == null) json['ownerId'] = defaultNumber;

    //set images
    imageModels = ImageDbService.getImages(json['imageDTOS']);

    return BoardingPlaceModel(
        id: json['id'],
        latitude: json['latitude'],
        altitude: json['altitude'],
        name: json['name'],
        description: json['description'],
        keyMoney: json['keyMoney'],
        state: json['state'],
        rate: json['rate'],
        date: json['date'],
        rentDay: json['rentDay'],
        rentAmo: json['rentAmo'],
        baths: json['baths'],
        beds: json['beds'],
        genderPref: json['genderPref'],
        type: json['type'],
        ownerId: json['ownerId'],
        images: imageModels);
  }
}
