// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boarderListModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoarderListModel _$BoarderListModelFromJson(Map<String, dynamic> json) =>
    BoarderListModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => BoarderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BoarderListModelToJson(BoarderListModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
