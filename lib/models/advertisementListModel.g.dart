// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertisementListModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvertisementListModel _$AdvertisementListModelFromJson(
        Map<String, dynamic> json) =>
    AdvertisementListModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => AdvertisementModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdvertisementListModelToJson(
        AdvertisementListModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
