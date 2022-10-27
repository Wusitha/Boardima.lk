import 'package:json_annotation/json_annotation.dart';
import 'package:note_via/models/userModel.dart';

part 'userListModel.g.dart';


@JsonSerializable()
class UserListModel{
  List<UserModel> data;
  UserListModel({required this.data});

  factory UserListModel.fromJson( Map<String, dynamic> json)=>_$UserListModelFromJson(json);
  Map<String,dynamic> toJson()=>_$UserListModelToJson(this);




}