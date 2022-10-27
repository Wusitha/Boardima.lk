import 'package:json_annotation/json_annotation.dart';

part 'advertisementModel.g.dart';


@JsonSerializable()
class AdvertisementModel{
  int id;
  String location;
  int price;
  String imgUrl;


  AdvertisementModel({required this.id,required this.location,required this.price,required this.imgUrl});

  factory AdvertisementModel.fromJson( Map<String, dynamic> json)=>_$AdvertisementModelFromJson(json);
  Map<String,dynamic> toJson()=>_$AdvertisementModelToJson(this);




}