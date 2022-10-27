import 'package:json_annotation/json_annotation.dart';

part 'userModel.g.dart';


@JsonSerializable()
class UserModel{
  String firstName;
  String lastName;
  String state;
  String type;
  UserModel({required this.firstName,required this.lastName,required this.state,required this.type});

  factory UserModel.fromJson( Map<String, dynamic> json)=>_$UserModelFromJson(json);
  Map<String,dynamic> toJson()=>_$UserModelToJson(this);




}