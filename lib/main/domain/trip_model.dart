import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_model.freezed.dart';
part 'trip_model.g.dart';

@freezed
class TripModel with _$TripModel {
  const factory TripModel(
      {@JsonKey(defaultValue: 0, name: 'id',) required int id,

      @JsonKey(defaultValue: 0, name: 'owner_id') required int ownerId,
      @JsonKey(defaultValue: 0, name: 'owner_type') required int ownerType,
      @JsonKey(defaultValue: 0, name: 'type') required int type,
      @JsonKey(defaultValue: 0, name: 'car_id') int? carId,
      @JsonKey(defaultValue: 0, name: 'car_class_id') int? carClassId,
      @JsonKey(defaultValue: 0, name: 'car_type_id') int? carTypeId,
      @JsonKey(defaultValue: 0, name: 'driver_experience') int? experience,
      @JsonKey(defaultValue: 0, name: 'from_country_id')
      required int fromCountryId,
      @JsonKey(defaultValue: 0, name: 'from_region_id')
      required int fromRegionId,
      @JsonKey(defaultValue: 0, name: 'from_district_id')
      required int fromDistrictId,
      @JsonKey(defaultValue: '', name: 'from_address') String? fromAddress,
      @JsonKey(defaultValue: '', name: 'from_latitude') String? fromLatitude,
      @JsonKey(defaultValue: '', name: 'from_longitude') String? fromLongitude,
      @JsonKey(defaultValue: 0, name: 'to_country_id')
      required int toCountryId,
      @JsonKey(defaultValue: 0, name: 'to_region_id')
      required int toRegionId,
      @JsonKey(defaultValue:0, name: 'to_district_id')
      required int toDistrictId,
      @JsonKey(defaultValue: '', name: 'to_address') String? toAddress,
      @JsonKey(defaultValue: '', name: 'to_latitude') String? toLatitude,
      @JsonKey(defaultValue: '', name: 'to_longitude') String? toLongitude,
      @JsonKey(defaultValue: '', name: 'weight') String? weight,
      @JsonKey(defaultValue: '', name: 'date') required String date,
      @JsonKey(defaultValue: '', name: 'from_time') required String fromTime,
      @JsonKey(defaultValue: '', name: 'to_time') required String toTime,
      @JsonKey(defaultValue: 0, name: 'seats') int? seats,
      @JsonKey(defaultValue: '', name: 'comment') required String comment,
      @JsonKey(defaultValue:0, name: 'status') required int status,
      @JsonKey(defaultValue: 0, name: 'requests') required int requests,
      @JsonKey(defaultValue: '', name: 'name') required String name,
      @JsonKey(defaultValue: '', name: 'last_name') required String surname,
      @JsonKey(defaultValue: 0, name: 'phone') required int phone,
      @JsonKey(defaultValue: '', name: 'number') String? number,
      @JsonKey(defaultValue: 0, name: 'rating') int? rating}) = _TripModel;

  factory TripModel.fromJson(Map<String, dynamic> json) =>
      _$TripModelFromJson(json);
  factory TripModel.initial() => const TripModel(
        id: 0,
        ownerId: 0,
        ownerType: 0,
        type: 0,
        fromCountryId: 0,
        fromRegionId: 0,
        fromDistrictId: 0,
        toCountryId: 0,
        toRegionId: 0,
        toDistrictId: 0,
        date: "",
        fromTime: "",
        toTime: "",
        comment: "",
        status: 0,
        requests: 0,
        name: "",
        surname: "",
        phone: 0,
      );
}
