// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addPostModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddPostModel _$AddPostModelFromJson(Map<String, dynamic> json) => AddPostModel(
      location: json['location'] as String,
      description: json['description'] as String,
      keyMoney: json['keyMoney'] as String,
      state: json['state'] as String,
      rentAmount: json['rentAmount'] as String,
      rentDate: json['rentDate'] as String,
      beds: json['beds'] as String,
      baths: json['baths'] as String,
      type: json['type'] as String,
      imgUrl: json['imgUrl'] as String,
    );

Map<String, dynamic> _$AddPostModelToJson(AddPostModel instance) =>
    <String, dynamic>{
      'location': instance.location,
      'description': instance.description,
      'keyMoney': instance.keyMoney,
      'state': instance.state,
      'rentDate': instance.rentDate,
      'rentAmount': instance.rentAmount,
      'beds': instance.beds,
      'baths': instance.baths,
      'type': instance.type,
      'imgUrl': instance.imgUrl,
    };
