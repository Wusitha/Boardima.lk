
import 'package:json_annotation/json_annotation.dart';

part 'registrationModel.g.dart';

@JsonSerializable()
class RegistrationModel{
  String email;
  String firstName;
  String lastName;
  String password;
  String type;
  RegistrationModel({required this.email,required this.password,required this.type,required this.firstName,required this.lastName});

  factory RegistrationModel.fromJson( Map<String, dynamic> json)=>_$RegistrationModelFromJson(json);
  Map<String,dynamic> toJson()=>_$RegistrationModelToJson(this);

}