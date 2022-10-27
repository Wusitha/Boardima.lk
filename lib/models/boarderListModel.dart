import 'package:json_annotation/json_annotation.dart';
import 'package:note_via/models/boarderModel.dart';
import 'package:note_via/models/userModel.dart';

part 'boarderListModel.g.dart';


@JsonSerializable()
class BoarderListModel{
  List<BoarderModel> data;
  BoarderListModel({required this.data});

  factory BoarderListModel.fromJson( Map<String, dynamic> json)=>_$BoarderListModelFromJson(json);
  Map<String,dynamic> toJson()=>_$BoarderListModelToJson(this);




}