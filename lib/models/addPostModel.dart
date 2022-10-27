
import 'package:json_annotation/json_annotation.dart';

part 'addPostModel.g.dart';

@JsonSerializable()
class AddPostModel{
  String location;
  String description;
  String keyMoney;
  String state;
  String rentDate;
  String rentAmount;
  String beds;
  String baths;
  String type;
  String imgUrl;


  AddPostModel({required this.location,required this.description,required this.keyMoney,required this.state,required this.rentAmount,required this.rentDate,required
   this.beds,required this.baths,required this.type,required this.imgUrl});

  factory AddPostModel.fromJson( Map<String, dynamic> json)=>_$AddPostModelFromJson(json);
  Map<String,dynamic> toJson()=>_$AddPostModelToJson(this);

}