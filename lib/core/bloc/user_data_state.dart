// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:manzil/core/domain/car_model.dart';

import 'package:manzil/core/domain/car_brand_model.dart';
import 'package:manzil/core/domain/class_model.dart';
import 'package:manzil/core/domain/district_model.dart';
import 'package:manzil/core/domain/region_model.dart';

enum UserDataStatus { pure, loading, loaded,loadedWithError }

class UserDataState {
  final List<RegionModel> regions;
  final List<DistrictModel> districts;
  final List<CarBrandModel> carBrands;
  final List<CarModel> carModels;
  final List<CarClassModel> classes;
  final UserDataStatus status;
  UserDataState({
    required this.regions,
    required this.districts,
    required this.carBrands,
    required this.carModels,
    required this.classes,
    required this.status,
  });

  factory UserDataState.empty() => UserDataState(
      regions: [],
      districts: [],
      carBrands: [],
      carModels: [],
      classes: [],
      status: UserDataStatus.pure);
  @override
  bool operator ==(covariant UserDataState other) {
    if (identical(this, other)) return true;

    return listEquals(other.regions, regions) &&
        listEquals(other.districts, districts) &&
        listEquals(other.carBrands, carBrands) &&
        listEquals(other.carModels, carModels) &&
        listEquals(other.classes, classes) &&
        other.status == status;
  }

  @override
  int get hashCode {
    return regions.hashCode ^
        districts.hashCode ^
        carBrands.hashCode ^
        carModels.hashCode ^
        classes.hashCode ^
        status.hashCode;
  }

  UserDataState copyWith({
    List<RegionModel>? regions,
    List<DistrictModel>? districts,
    List<CarBrandModel>? carBrands,
    List<CarModel>? carModels,
    List<CarClassModel>? classes,
    UserDataStatus? status,
  }) {
    return UserDataState(
      regions: regions ?? this.regions,
      districts: districts ?? this.districts,
      carBrands: carBrands ?? this.carBrands,
      carModels: carModels ?? this.carModels,
      classes: classes ?? this.classes,
      status: status ?? this.status,
    );
  }
}
