// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertisementDetailsModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvertisementDetailsModel _$AdvertisementDetailsModelFromJson(
        Map<String, dynamic> json) =>
    AdvertisementDetailsModel(
      id: json['id'] as int,
      location: json['location'] as String,
      price: json['price'] as int,
      imgUrl: json['imgUrl'] as String,
      description: json['description'] as String,
      date: json['date'] as String,
      baths: json['baths'] as int,
      beds: json['beds'] as int,
      keyMoney: json['keyMoney'] as int,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      ownerName: json['ownerName'] as String,
    );

Map<String, dynamic> _$AdvertisementDetailsModelToJson(
        AdvertisementDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'price': instance.price,
      'imgUrl': instance.imgUrl,
      'baths': instance.baths,
      'beds': instance.beds,
      'date': instance.date,
      'description': instance.description,
      'keyMoney': instance.keyMoney,
      'ownerName': instance.ownerName,
      'lat': instance.lat,
      'lon': instance.lon,
    };
