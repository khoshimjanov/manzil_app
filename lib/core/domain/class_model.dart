import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'class_model.freezed.dart';
part 'class_model.g.dart';

@freezed
@HiveType(typeId: 5)
class CarClassModel with _$CarClassModel {
  const factory CarClassModel({
    @HiveField(0) @JsonKey(defaultValue: 0, name: 'id') required int id,
    @HiveField(1)
    @JsonKey(defaultValue: '', name: 'name_uz')
    required String name,
  }) = _CarClassModel;

  factory CarClassModel.fromJson(Map<String, dynamic> json) =>
      _$CarClassModelFromJson(json);
}
