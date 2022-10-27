import 'package:json_annotation/json_annotation.dart';

part 'advertisementDetailsModel.g.dart';


@JsonSerializable()
class AdvertisementDetailsModel{
  int id;
  String location;
  int price;
  String imgUrl;
  int baths;
  int beds;
  String date;
  String description;
  int keyMoney;
  String ownerName;
  double lat;
  double lon;


  AdvertisementDetailsModel({required this.id,required this.location,required this.price,required this.imgUrl,required this.description, required this.date, required this.baths
  ,required this.beds, required this.keyMoney, required this.lat, required this.lon, required this.ownerName});

  factory AdvertisementDetailsModel.fromJson( Map<String, dynamic> json)=>_$AdvertisementDetailsModelFromJson(json);
  Map<String,dynamic> toJson()=>_$AdvertisementDetailsModelToJson(this);




}