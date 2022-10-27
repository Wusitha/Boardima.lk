import 'package:json_annotation/json_annotation.dart';
import 'package:note_via/models/advertisementModel.dart';


part 'advertisementListModel.g.dart';


@JsonSerializable()
class AdvertisementListModel{
  List<AdvertisementModel> data;
  AdvertisementListModel({required this.data});

  factory AdvertisementListModel.fromJson( Map<String, dynamic> json)=>_$AdvertisementListModelFromJson(json);
  Map<String,dynamic> toJson()=>_$AdvertisementListModelToJson(this);




}