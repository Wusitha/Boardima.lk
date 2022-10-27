import 'package:json_annotation/json_annotation.dart';

part 'boarderModel.g.dart';


@JsonSerializable()
class BoarderModel{
  int id;
  String firstName;
  String lastName;
  String contact;
  String dob;
  String gender;
  BoarderModel({required this.id,required this.firstName,required this.lastName,required this.contact,required this.dob,required this.gender});

  factory BoarderModel.fromJson( Map<String, dynamic> json)=>_$BoarderModelFromJson(json);
  Map<String,dynamic> toJson()=>_$BoarderModelToJson(this);




}