
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:manzil/core/domain/car_brand_model.dart';
import 'package:manzil/core/domain/car_model.dart';
import 'package:manzil/core/domain/class_model.dart';

part 'car_data_model.freezed.dart';
part 'car_data_model.g.dart';

@freezed
@HiveType(typeId: 8)
class CarDataModel with _$CarDataModel {
  const factory CarDataModel({
    @HiveField(0) required CarClassModel carClass,
    @HiveField(1) required CarBrandModel carBrand,
    @HiveField(2) required CarModel model,
    @HiveField(3) required String plateNumber,
    @HiveField(4) required String licenseNumber,
    @HiveField(5) required int carYear,
    @HiveField(6) required int driverExperience,
  }) = _CarDataModel;
  factory CarDataModel.fromJson(Map<String, dynamic> json) =>
      _$CarDataModelFromJson(json);
}
