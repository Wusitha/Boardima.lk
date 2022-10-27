// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boarderModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoarderModel _$BoarderModelFromJson(Map<String, dynamic> json) => BoarderModel(
      id: json['id'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      contact: json['contact'] as String,
      dob: json['dob'] as String,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$BoarderModelToJson(BoarderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'contact': instance.contact,
      'dob': instance.dob,
      'gender': instance.gender,
    };
