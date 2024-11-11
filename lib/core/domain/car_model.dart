import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'car_model.freezed.dart';
part 'car_model.g.dart';

@freezed
@HiveType(typeId: 7)
class CarModel with _$CarModel {
  const factory CarModel({
    @HiveField(0) @JsonKey(defaultValue: 0, name: 'id') required int id,
    @HiveField(1)
    @JsonKey(defaultValue: '', name: 'name_uz')
    required String name,
  }) = _CarModel;

  factory CarModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelFromJson(json);
}
