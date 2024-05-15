import 'package:json_annotation/json_annotation.dart';
part 'turf_data_model.g.dart';

@JsonSerializable()
class TurfDataModel {
  List<Datum> data;
  bool success;
  int status;

  TurfDataModel({
    required this.data,
    required this.success,
    required this.status,
  });
  factory TurfDataModel.fromJson(Map<String, dynamic> json) => _$TurfDataModelFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$TurfDataModelToJson(this);


}

@JsonSerializable()
class Datum {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'cover')
  String cover;
  @JsonKey(name: 'extra_field')
  dynamic extraField;
  @JsonKey(name: 'status')
  int status;

  Datum({
    required this.id,
    required this.name,
    required this.cover,
    required this.extraField,
    required this.status,
  });
  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$DatumToJson(this);

}
