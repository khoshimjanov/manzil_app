import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'district_model.freezed.dart';
part 'district_model.g.dart';

@freezed
@HiveType(typeId: 2)
class DistrictModel with _$DistrictModel {
  const factory DistrictModel({
    @HiveField(0) @JsonKey(defaultValue: 0, name: 'id') required int id,
    @HiveField(1) @JsonKey(defaultValue: '', name: 'name_uz')
    required String name,
  }) = _DistrictModel;
  factory DistrictModel.fromJson(Map<String, dynamic> json) =>
      _$DistrictModelFromJson(json);
}
