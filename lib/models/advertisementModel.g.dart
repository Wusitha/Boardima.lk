// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertisementModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvertisementModel _$AdvertisementModelFromJson(Map<String, dynamic> json) =>
    AdvertisementModel(
      id: json['id'] as int,
      location: json['location'] as String,
      price: json['price'] as int,
      imgUrl: json['imgUrl'] as String,
    );

Map<String, dynamic> _$AdvertisementModelToJson(AdvertisementModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'price': instance.price,
      'imgUrl': instance.imgUrl,
    };
