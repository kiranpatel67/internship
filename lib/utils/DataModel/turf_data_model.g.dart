// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'turf_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TurfDataModel _$TurfDataModelFromJson(Map<String, dynamic> json) =>
    TurfDataModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      success: json['success'] as bool,
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$TurfDataModelToJson(TurfDataModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'success': instance.success,
      'status': instance.status,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      cover: json['cover'] as String,
      extraField: json['extra_field'],
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cover': instance.cover,
      'extra_field': instance.extraField,
      'status': instance.status,
    };
