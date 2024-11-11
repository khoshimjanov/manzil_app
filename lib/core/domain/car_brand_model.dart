import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'car_brand_model.freezed.dart';
part 'car_brand_model.g.dart';

@freezed
@HiveType(typeId: 6)
class CarBrandModel with _$CarBrandModel {
  const factory CarBrandModel({
    @HiveField(0) @JsonKey(defaultValue: 0, name: 'id') required int id,
    @HiveField(1) @JsonKey(defaultValue: '', name: 'name_uz')
    required String name,
  }) = _CarBrandModel;

  factory CarBrandModel.fromJson(Map<String, dynamic> json) =>
      _$CarBrandModelFromJson(json);
}
