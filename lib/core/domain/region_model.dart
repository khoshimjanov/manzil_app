import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'region_model.freezed.dart';
part 'region_model.g.dart';

@freezed
@HiveType(typeId: 1)
class RegionModel with _$RegionModel {
  const factory RegionModel({
    @HiveField(0) @JsonKey(defaultValue: 0, name: 'id') required int id,
    @HiveField(1) @JsonKey(defaultValue: '', name: 'name_uz')
    required String name,
  }) = _RegionModel;
  factory RegionModel.fromJson(Map<String, dynamic> json) =>
      _$RegionModelFromJson(json);
}
