// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TripModel _$TripModelFromJson(Map<String, dynamic> json) {
  return _TripModel.fromJson(json);
}

/// @nodoc
mixin _$TripModel {
  @JsonKey(defaultValue: 0, name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'owner_id')
  int get ownerId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'owner_type')
  int get ownerType => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'type')
  int get type => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'car_id')
  int? get carId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'car_class_id')
  int? get carClassId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'car_type_id')
  int? get carTypeId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'driver_experience')
  int? get experience => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'from_country_id')
  int get fromCountryId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'from_region_id')
  int get fromRegionId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'from_district_id')
  int get fromDistrictId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', name: 'from_address')
  String? get fromAddress => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', name: 'from_latitude')
  String? get fromLatitude => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', name: 'from_longitude')
  String? get fromLongitude => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'to_country_id')
  int get toCountryId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'to_region_id')
  int get toRegionId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'to_district_id')
  int get toDistrictId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', name: 'to_address')
  String? get toAddress => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', name: 'to_latitude')
  String? get toLatitude => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', name: 'to_longitude')
  String? get toLongitude => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', name: 'weight')
  String? get weight => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', name: 'date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', name: 'from_time')
  String get fromTime => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', name: 'to_time')
  String get toTime => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'seats')
  int? get seats => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', name: 'comment')
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'requests')
  int get requests => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', name: 'last_name')
  String get surname => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'phone')
  int get phone => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', name: 'number')
  String? get number => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'rating')
  int? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripModelCopyWith<TripModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripModelCopyWith<$Res> {
  factory $TripModelCopyWith(TripModel value, $Res Function(TripModel) then) =
      _$TripModelCopyWithImpl<$Res, TripModel>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0, name: 'id') int id,
      @JsonKey(defaultValue: 0, name: 'owner_id') int ownerId,
      @JsonKey(defaultValue: 0, name: 'owner_type') int ownerType,
      @JsonKey(defaultValue: 0, name: 'type') int type,
      @JsonKey(defaultValue: 0, name: 'car_id') int? carId,
      @JsonKey(defaultValue: 0, name: 'car_class_id') int? carClassId,
      @JsonKey(defaultValue: 0, name: 'car_type_id') int? carTypeId,
      @JsonKey(defaultValue: 0, name: 'driver_experience') int? experience,
      @JsonKey(defaultValue: 0, name: 'from_country_id') int fromCountryId,
      @JsonKey(defaultValue: 0, name: 'from_region_id') int fromRegionId,
      @JsonKey(defaultValue: 0, name: 'from_district_id') int fromDistrictId,
      @JsonKey(defaultValue: '', name: 'from_address') String? fromAddress,
      @JsonKey(defaultValue: '', name: 'from_latitude') String? fromLatitude,
      @JsonKey(defaultValue: '', name: 'from_longitude') String? fromLongitude,
      @JsonKey(defaultValue: 0, name: 'to_country_id') int toCountryId,
      @JsonKey(defaultValue: 0, name: 'to_region_id') int toRegionId,
      @JsonKey(defaultValue: 0, name: 'to_district_id') int toDistrictId,
      @JsonKey(defaultValue: '', name: 'to_address') String? toAddress,
      @JsonKey(defaultValue: '', name: 'to_latitude') String? toLatitude,
      @JsonKey(defaultValue: '', name: 'to_longitude') String? toLongitude,
      @JsonKey(defaultValue: '', name: 'weight') String? weight,
      @JsonKey(defaultValue: '', name: 'date') String date,
      @JsonKey(defaultValue: '', name: 'from_time') String fromTime,
      @JsonKey(defaultValue: '', name: 'to_time') String toTime,
      @JsonKey(defaultValue: 0, name: 'seats') int? seats,
      @JsonKey(defaultValue: '', name: 'comment') String comment,
      @JsonKey(defaultValue: 0, name: 'status') int status,
      @JsonKey(defaultValue: 0, name: 'requests') int requests,
      @JsonKey(defaultValue: '', name: 'name') String name,
      @JsonKey(defaultValue: '', name: 'last_name') String surname,
      @JsonKey(defaultValue: 0, name: 'phone') int phone,
      @JsonKey(defaultValue: '', name: 'number') String? number,
      @JsonKey(defaultValue: 0, name: 'rating') int? rating});
}

/// @nodoc
class _$TripModelCopyWithImpl<$Res, $Val extends TripModel>
    implements $TripModelCopyWith<$Res> {
  _$TripModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? ownerType = null,
    Object? type = null,
    Object? carId = freezed,
    Object? carClassId = freezed,
    Object? carTypeId = freezed,
    Object? experience = freezed,
    Object? fromCountryId = null,
    Object? fromRegionId = null,
    Object? fromDistrictId = null,
    Object? fromAddress = freezed,
    Object? fromLatitude = freezed,
    Object? fromLongitude = freezed,
    Object? toCountryId = null,
    Object? toRegionId = null,
    Object? toDistrictId = null,
    Object? toAddress = freezed,
    Object? toLatitude = freezed,
    Object? toLongitude = freezed,
    Object? weight = freezed,
    Object? date = null,
    Object? fromTime = null,
    Object? toTime = null,
    Object? seats = freezed,
    Object? comment = null,
    Object? status = null,
    Object? requests = null,
    Object? name = null,
    Object? surname = null,
    Object? phone = null,
    Object? number = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      ownerType: null == ownerType
          ? _value.ownerType
          : ownerType // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      carId: freezed == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int?,
      carClassId: freezed == carClassId
          ? _value.carClassId
          : carClassId // ignore: cast_nullable_to_non_nullable
              as int?,
      carTypeId: freezed == carTypeId
          ? _value.carTypeId
          : carTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as int?,
      fromCountryId: null == fromCountryId
          ? _value.fromCountryId
          : fromCountryId // ignore: cast_nullable_to_non_nullable
              as int,
      fromRegionId: null == fromRegionId
          ? _value.fromRegionId
          : fromRegionId // ignore: cast_nullable_to_non_nullable
              as int,
      fromDistrictId: null == fromDistrictId
          ? _value.fromDistrictId
          : fromDistrictId // ignore: cast_nullable_to_non_nullable
              as int,
      fromAddress: freezed == fromAddress
          ? _value.fromAddress
          : fromAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      fromLatitude: freezed == fromLatitude
          ? _value.fromLatitude
          : fromLatitude // ignore: cast_nullable_to_non_nullable
              as String?,
      fromLongitude: freezed == fromLongitude
          ? _value.fromLongitude
          : fromLongitude // ignore: cast_nullable_to_non_nullable
              as String?,
      toCountryId: null == toCountryId
          ? _value.toCountryId
          : toCountryId // ignore: cast_nullable_to_non_nullable
              as int,
      toRegionId: null == toRegionId
          ? _value.toRegionId
          : toRegionId // ignore: cast_nullable_to_non_nullable
              as int,
      toDistrictId: null == toDistrictId
          ? _value.toDistrictId
          : toDistrictId // ignore: cast_nullable_to_non_nullable
              as int,
      toAddress: freezed == toAddress
          ? _value.toAddress
          : toAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      toLatitude: freezed == toLatitude
          ? _value.toLatitude
          : toLatitude // ignore: cast_nullable_to_non_nullable
              as String?,
      toLongitude: freezed == toLongitude
          ? _value.toLongitude
          : toLongitude // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      fromTime: null == fromTime
          ? _value.fromTime
          : fromTime // ignore: cast_nullable_to_non_nullable
              as String,
      toTime: null == toTime
          ? _value.toTime
          : toTime // ignore: cast_nullable_to_non_nullable
              as String,
      seats: freezed == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      requests: null == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripModelImplCopyWith<$Res>
    implements $TripModelCopyWith<$Res> {
  factory _$$TripModelImplCopyWith(
          _$TripModelImpl value, $Res Function(_$TripModelImpl) then) =
      __$$TripModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0, name: 'id') int id,
      @JsonKey(defaultValue: 0, name: 'owner_id') int ownerId,
      @JsonKey(defaultValue: 0, name: 'owner_type') int ownerType,
      @JsonKey(defaultValue: 0, name: 'type') int type,
      @JsonKey(defaultValue: 0, name: 'car_id') int? carId,
      @JsonKey(defaultValue: 0, name: 'car_class_id') int? carClassId,
      @JsonKey(defaultValue: 0, name: 'car_type_id') int? carTypeId,
      @JsonKey(defaultValue: 0, name: 'driver_experience') int? experience,
      @JsonKey(defaultValue: 0, name: 'from_country_id') int fromCountryId,
      @JsonKey(defaultValue: 0, name: 'from_region_id') int fromRegionId,
      @JsonKey(defaultValue: 0, name: 'from_district_id') int fromDistrictId,
      @JsonKey(defaultValue: '', name: 'from_address') String? fromAddress,
      @JsonKey(defaultValue: '', name: 'from_latitude') String? fromLatitude,
      @JsonKey(defaultValue: '', name: 'from_longitude') String? fromLongitude,
      @JsonKey(defaultValue: 0, name: 'to_country_id') int toCountryId,
      @JsonKey(defaultValue: 0, name: 'to_region_id') int toRegionId,
      @JsonKey(defaultValue: 0, name: 'to_district_id') int toDistrictId,
      @JsonKey(defaultValue: '', name: 'to_address') String? toAddress,
      @JsonKey(defaultValue: '', name: 'to_latitude') String? toLatitude,
      @JsonKey(defaultValue: '', name: 'to_longitude') String? toLongitude,
      @JsonKey(defaultValue: '', name: 'weight') String? weight,
      @JsonKey(defaultValue: '', name: 'date') String date,
      @JsonKey(defaultValue: '', name: 'from_time') String fromTime,
      @JsonKey(defaultValue: '', name: 'to_time') String toTime,
      @JsonKey(defaultValue: 0, name: 'seats') int? seats,
      @JsonKey(defaultValue: '', name: 'comment') String comment,
      @JsonKey(defaultValue: 0, name: 'status') int status,
      @JsonKey(defaultValue: 0, name: 'requests') int requests,
      @JsonKey(defaultValue: '', name: 'name') String name,
      @JsonKey(defaultValue: '', name: 'last_name') String surname,
      @JsonKey(defaultValue: 0, name: 'phone') int phone,
      @JsonKey(defaultValue: '', name: 'number') String? number,
      @JsonKey(defaultValue: 0, name: 'rating') int? rating});
}

/// @nodoc
class __$$TripModelImplCopyWithImpl<$Res>
    extends _$TripModelCopyWithImpl<$Res, _$TripModelImpl>
    implements _$$TripModelImplCopyWith<$Res> {
  __$$TripModelImplCopyWithImpl(
      _$TripModelImpl _value, $Res Function(_$TripModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? ownerType = null,
    Object? type = null,
    Object? carId = freezed,
    Object? carClassId = freezed,
    Object? carTypeId = freezed,
    Object? experience = freezed,
    Object? fromCountryId = null,
    Object? fromRegionId = null,
    Object? fromDistrictId = null,
    Object? fromAddress = freezed,
    Object? fromLatitude = freezed,
    Object? fromLongitude = freezed,
    Object? toCountryId = null,
    Object? toRegionId = null,
    Object? toDistrictId = null,
    Object? toAddress = freezed,
    Object? toLatitude = freezed,
    Object? toLongitude = freezed,
    Object? weight = freezed,
    Object? date = null,
    Object? fromTime = null,
    Object? toTime = null,
    Object? seats = freezed,
    Object? comment = null,
    Object? status = null,
    Object? requests = null,
    Object? name = null,
    Object? surname = null,
    Object? phone = null,
    Object? number = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$TripModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      ownerType: null == ownerType
          ? _value.ownerType
          : ownerType // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      carId: freezed == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int?,
      carClassId: freezed == carClassId
          ? _value.carClassId
          : carClassId // ignore: cast_nullable_to_non_nullable
              as int?,
      carTypeId: freezed == carTypeId
          ? _value.carTypeId
          : carTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as int?,
      fromCountryId: null == fromCountryId
          ? _value.fromCountryId
          : fromCountryId // ignore: cast_nullable_to_non_nullable
              as int,
      fromRegionId: null == fromRegionId
          ? _value.fromRegionId
          : fromRegionId // ignore: cast_nullable_to_non_nullable
              as int,
      fromDistrictId: null == fromDistrictId
          ? _value.fromDistrictId
          : fromDistrictId // ignore: cast_nullable_to_non_nullable
              as int,
      fromAddress: freezed == fromAddress
          ? _value.fromAddress
          : fromAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      fromLatitude: freezed == fromLatitude
          ? _value.fromLatitude
          : fromLatitude // ignore: cast_nullable_to_non_nullable
              as String?,
      fromLongitude: freezed == fromLongitude
          ? _value.fromLongitude
          : fromLongitude // ignore: cast_nullable_to_non_nullable
              as String?,
      toCountryId: null == toCountryId
          ? _value.toCountryId
          : toCountryId // ignore: cast_nullable_to_non_nullable
              as int,
      toRegionId: null == toRegionId
          ? _value.toRegionId
          : toRegionId // ignore: cast_nullable_to_non_nullable
              as int,
      toDistrictId: null == toDistrictId
          ? _value.toDistrictId
          : toDistrictId // ignore: cast_nullable_to_non_nullable
              as int,
      toAddress: freezed == toAddress
          ? _value.toAddress
          : toAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      toLatitude: freezed == toLatitude
          ? _value.toLatitude
          : toLatitude // ignore: cast_nullable_to_non_nullable
              as String?,
      toLongitude: freezed == toLongitude
          ? _value.toLongitude
          : toLongitude // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      fromTime: null == fromTime
          ? _value.fromTime
          : fromTime // ignore: cast_nullable_to_non_nullable
              as String,
      toTime: null == toTime
          ? _value.toTime
          : toTime // ignore: cast_nullable_to_non_nullable
              as String,
      seats: freezed == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      requests: null == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripModelImpl implements _TripModel {
  const _$TripModelImpl(
      {@JsonKey(defaultValue: 0, name: 'id') required this.id,
      @JsonKey(defaultValue: 0, name: 'owner_id') required this.ownerId,
      @JsonKey(defaultValue: 0, name: 'owner_type') required this.ownerType,
      @JsonKey(defaultValue: 0, name: 'type') required this.type,
      @JsonKey(defaultValue: 0, name: 'car_id') this.carId,
      @JsonKey(defaultValue: 0, name: 'car_class_id') this.carClassId,
      @JsonKey(defaultValue: 0, name: 'car_type_id') this.carTypeId,
      @JsonKey(defaultValue: 0, name: 'driver_experience') this.experience,
      @JsonKey(defaultValue: 0, name: 'from_country_id')
      required this.fromCountryId,
      @JsonKey(defaultValue: 0, name: 'from_region_id')
      required this.fromRegionId,
      @JsonKey(defaultValue: 0, name: 'from_district_id')
      required this.fromDistrictId,
      @JsonKey(defaultValue: '', name: 'from_address') this.fromAddress,
      @JsonKey(defaultValue: '', name: 'from_latitude') this.fromLatitude,
      @JsonKey(defaultValue: '', name: 'from_longitude') this.fromLongitude,
      @JsonKey(defaultValue: 0, name: 'to_country_id')
      required this.toCountryId,
      @JsonKey(defaultValue: 0, name: 'to_region_id') required this.toRegionId,
      @JsonKey(defaultValue: 0, name: 'to_district_id')
      required this.toDistrictId,
      @JsonKey(defaultValue: '', name: 'to_address') this.toAddress,
      @JsonKey(defaultValue: '', name: 'to_latitude') this.toLatitude,
      @JsonKey(defaultValue: '', name: 'to_longitude') this.toLongitude,
      @JsonKey(defaultValue: '', name: 'weight') this.weight,
      @JsonKey(defaultValue: '', name: 'date') required this.date,
      @JsonKey(defaultValue: '', name: 'from_time') required this.fromTime,
      @JsonKey(defaultValue: '', name: 'to_time') required this.toTime,
      @JsonKey(defaultValue: 0, name: 'seats') this.seats,
      @JsonKey(defaultValue: '', name: 'comment') required this.comment,
      @JsonKey(defaultValue: 0, name: 'status') required this.status,
      @JsonKey(defaultValue: 0, name: 'requests') required this.requests,
      @JsonKey(defaultValue: '', name: 'name') required this.name,
      @JsonKey(defaultValue: '', name: 'last_name') required this.surname,
      @JsonKey(defaultValue: 0, name: 'phone') required this.phone,
      @JsonKey(defaultValue: '', name: 'number') this.number,
      @JsonKey(defaultValue: 0, name: 'rating') this.rating});

  factory _$TripModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripModelImplFromJson(json);

  @override
  @JsonKey(defaultValue: 0, name: 'id')
  final int id;
  @override
  @JsonKey(defaultValue: 0, name: 'owner_id')
  final int ownerId;
  @override
  @JsonKey(defaultValue: 0, name: 'owner_type')
  final int ownerType;
  @override
  @JsonKey(defaultValue: 0, name: 'type')
  final int type;
  @override
  @JsonKey(defaultValue: 0, name: 'car_id')
  final int? carId;
  @override
  @JsonKey(defaultValue: 0, name: 'car_class_id')
  final int? carClassId;
  @override
  @JsonKey(defaultValue: 0, name: 'car_type_id')
  final int? carTypeId;
  @override
  @JsonKey(defaultValue: 0, name: 'driver_experience')
  final int? experience;
  @override
  @JsonKey(defaultValue: 0, name: 'from_country_id')
  final int fromCountryId;
  @override
  @JsonKey(defaultValue: 0, name: 'from_region_id')
  final int fromRegionId;
  @override
  @JsonKey(defaultValue: 0, name: 'from_district_id')
  final int fromDistrictId;
  @override
  @JsonKey(defaultValue: '', name: 'from_address')
  final String? fromAddress;
  @override
  @JsonKey(defaultValue: '', name: 'from_latitude')
  final String? fromLatitude;
  @override
  @JsonKey(defaultValue: '', name: 'from_longitude')
  final String? fromLongitude;
  @override
  @JsonKey(defaultValue: 0, name: 'to_country_id')
  final int toCountryId;
  @override
  @JsonKey(defaultValue: 0, name: 'to_region_id')
  final int toRegionId;
  @override
  @JsonKey(defaultValue: 0, name: 'to_district_id')
  final int toDistrictId;
  @override
  @JsonKey(defaultValue: '', name: 'to_address')
  final String? toAddress;
  @override
  @JsonKey(defaultValue: '', name: 'to_latitude')
  final String? toLatitude;
  @override
  @JsonKey(defaultValue: '', name: 'to_longitude')
  final String? toLongitude;
  @override
  @JsonKey(defaultValue: '', name: 'weight')
  final String? weight;
  @override
  @JsonKey(defaultValue: '', name: 'date')
  final String date;
  @override
  @JsonKey(defaultValue: '', name: 'from_time')
  final String fromTime;
  @override
  @JsonKey(defaultValue: '', name: 'to_time')
  final String toTime;
  @override
  @JsonKey(defaultValue: 0, name: 'seats')
  final int? seats;
  @override
  @JsonKey(defaultValue: '', name: 'comment')
  final String comment;
  @override
  @JsonKey(defaultValue: 0, name: 'status')
  final int status;
  @override
  @JsonKey(defaultValue: 0, name: 'requests')
  final int requests;
  @override
  @JsonKey(defaultValue: '', name: 'name')
  final String name;
  @override
  @JsonKey(defaultValue: '', name: 'last_name')
  final String surname;
  @override
  @JsonKey(defaultValue: 0, name: 'phone')
  final int phone;
  @override
  @JsonKey(defaultValue: '', name: 'number')
  final String? number;
  @override
  @JsonKey(defaultValue: 0, name: 'rating')
  final int? rating;

  @override
  String toString() {
    return 'TripModel(id: $id, ownerId: $ownerId, ownerType: $ownerType, type: $type, carId: $carId, carClassId: $carClassId, carTypeId: $carTypeId, experience: $experience, fromCountryId: $fromCountryId, fromRegionId: $fromRegionId, fromDistrictId: $fromDistrictId, fromAddress: $fromAddress, fromLatitude: $fromLatitude, fromLongitude: $fromLongitude, toCountryId: $toCountryId, toRegionId: $toRegionId, toDistrictId: $toDistrictId, toAddress: $toAddress, toLatitude: $toLatitude, toLongitude: $toLongitude, weight: $weight, date: $date, fromTime: $fromTime, toTime: $toTime, seats: $seats, comment: $comment, status: $status, requests: $requests, name: $name, surname: $surname, phone: $phone, number: $number, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.ownerType, ownerType) ||
                other.ownerType == ownerType) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.carId, carId) || other.carId == carId) &&
            (identical(other.carClassId, carClassId) ||
                other.carClassId == carClassId) &&
            (identical(other.carTypeId, carTypeId) ||
                other.carTypeId == carTypeId) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.fromCountryId, fromCountryId) ||
                other.fromCountryId == fromCountryId) &&
            (identical(other.fromRegionId, fromRegionId) ||
                other.fromRegionId == fromRegionId) &&
            (identical(other.fromDistrictId, fromDistrictId) ||
                other.fromDistrictId == fromDistrictId) &&
            (identical(other.fromAddress, fromAddress) ||
                other.fromAddress == fromAddress) &&
            (identical(other.fromLatitude, fromLatitude) ||
                other.fromLatitude == fromLatitude) &&
            (identical(other.fromLongitude, fromLongitude) ||
                other.fromLongitude == fromLongitude) &&
            (identical(other.toCountryId, toCountryId) ||
                other.toCountryId == toCountryId) &&
            (identical(other.toRegionId, toRegionId) ||
                other.toRegionId == toRegionId) &&
            (identical(other.toDistrictId, toDistrictId) ||
                other.toDistrictId == toDistrictId) &&
            (identical(other.toAddress, toAddress) ||
                other.toAddress == toAddress) &&
            (identical(other.toLatitude, toLatitude) ||
                other.toLatitude == toLatitude) &&
            (identical(other.toLongitude, toLongitude) ||
                other.toLongitude == toLongitude) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.fromTime, fromTime) ||
                other.fromTime == fromTime) &&
            (identical(other.toTime, toTime) || other.toTime == toTime) &&
            (identical(other.seats, seats) || other.seats == seats) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.requests, requests) ||
                other.requests == requests) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        ownerId,
        ownerType,
        type,
        carId,
        carClassId,
        carTypeId,
        experience,
        fromCountryId,
        fromRegionId,
        fromDistrictId,
        fromAddress,
        fromLatitude,
        fromLongitude,
        toCountryId,
        toRegionId,
        toDistrictId,
        toAddress,
        toLatitude,
        toLongitude,
        weight,
        date,
        fromTime,
        toTime,
        seats,
        comment,
        status,
        requests,
        name,
        surname,
        phone,
        number,
        rating
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripModelImplCopyWith<_$TripModelImpl> get copyWith =>
      __$$TripModelImplCopyWithImpl<_$TripModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripModelImplToJson(
      this,
    );
  }
}

abstract class _TripModel implements TripModel {
  const factory _TripModel(
      {@JsonKey(defaultValue: 0, name: 'id') required final int id,
      @JsonKey(defaultValue: 0, name: 'owner_id') required final int ownerId,
      @JsonKey(defaultValue: 0, name: 'owner_type')
      required final int ownerType,
      @JsonKey(defaultValue: 0, name: 'type') required final int type,
      @JsonKey(defaultValue: 0, name: 'car_id') final int? carId,
      @JsonKey(defaultValue: 0, name: 'car_class_id') final int? carClassId,
      @JsonKey(defaultValue: 0, name: 'car_type_id') final int? carTypeId,
      @JsonKey(defaultValue: 0, name: 'driver_experience')
      final int? experience,
      @JsonKey(defaultValue: 0, name: 'from_country_id')
      required final int fromCountryId,
      @JsonKey(defaultValue: 0, name: 'from_region_id')
      required final int fromRegionId,
      @JsonKey(defaultValue: 0, name: 'from_district_id')
      required final int fromDistrictId,
      @JsonKey(defaultValue: '', name: 'from_address')
      final String? fromAddress,
      @JsonKey(defaultValue: '', name: 'from_latitude')
      final String? fromLatitude,
      @JsonKey(defaultValue: '', name: 'from_longitude')
      final String? fromLongitude,
      @JsonKey(defaultValue: 0, name: 'to_country_id')
      required final int toCountryId,
      @JsonKey(defaultValue: 0, name: 'to_region_id')
      required final int toRegionId,
      @JsonKey(defaultValue: 0, name: 'to_district_id')
      required final int toDistrictId,
      @JsonKey(defaultValue: '', name: 'to_address') final String? toAddress,
      @JsonKey(defaultValue: '', name: 'to_latitude') final String? toLatitude,
      @JsonKey(defaultValue: '', name: 'to_longitude')
      final String? toLongitude,
      @JsonKey(defaultValue: '', name: 'weight') final String? weight,
      @JsonKey(defaultValue: '', name: 'date') required final String date,
      @JsonKey(defaultValue: '', name: 'from_time')
      required final String fromTime,
      @JsonKey(defaultValue: '', name: 'to_time') required final String toTime,
      @JsonKey(defaultValue: 0, name: 'seats') final int? seats,
      @JsonKey(defaultValue: '', name: 'comment') required final String comment,
      @JsonKey(defaultValue: 0, name: 'status') required final int status,
      @JsonKey(defaultValue: 0, name: 'requests') required final int requests,
      @JsonKey(defaultValue: '', name: 'name') required final String name,
      @JsonKey(defaultValue: '', name: 'last_name')
      required final String surname,
      @JsonKey(defaultValue: 0, name: 'phone') required final int phone,
      @JsonKey(defaultValue: '', name: 'number') final String? number,
      @JsonKey(defaultValue: 0, name: 'rating')
      final int? rating}) = _$TripModelImpl;

  factory _TripModel.fromJson(Map<String, dynamic> json) =
      _$TripModelImpl.fromJson;

  @override
  @JsonKey(defaultValue: 0, name: 'id')
  int get id;
  @override
  @JsonKey(defaultValue: 0, name: 'owner_id')
  int get ownerId;
  @override
  @JsonKey(defaultValue: 0, name: 'owner_type')
  int get ownerType;
  @override
  @JsonKey(defaultValue: 0, name: 'type')
  int get type;
  @override
  @JsonKey(defaultValue: 0, name: 'car_id')
  int? get carId;
  @override
  @JsonKey(defaultValue: 0, name: 'car_class_id')
  int? get carClassId;
  @override
  @JsonKey(defaultValue: 0, name: 'car_type_id')
  int? get carTypeId;
  @override
  @JsonKey(defaultValue: 0, name: 'driver_experience')
  int? get experience;
  @override
  @JsonKey(defaultValue: 0, name: 'from_country_id')
  int get fromCountryId;
  @override
  @JsonKey(defaultValue: 0, name: 'from_region_id')
  int get fromRegionId;
  @override
  @JsonKey(defaultValue: 0, name: 'from_district_id')
  int get fromDistrictId;
  @override
  @JsonKey(defaultValue: '', name: 'from_address')
  String? get fromAddress;
  @override
  @JsonKey(defaultValue: '', name: 'from_latitude')
  String? get fromLatitude;
  @override
  @JsonKey(defaultValue: '', name: 'from_longitude')
  String? get fromLongitude;
  @override
  @JsonKey(defaultValue: 0, name: 'to_country_id')
  int get toCountryId;
  @override
  @JsonKey(defaultValue: 0, name: 'to_region_id')
  int get toRegionId;
  @override
  @JsonKey(defaultValue: 0, name: 'to_district_id')
  int get toDistrictId;
  @override
  @JsonKey(defaultValue: '', name: 'to_address')
  String? get toAddress;
  @override
  @JsonKey(defaultValue: '', name: 'to_latitude')
  String? get toLatitude;
  @override
  @JsonKey(defaultValue: '', name: 'to_longitude')
  String? get toLongitude;
  @override
  @JsonKey(defaultValue: '', name: 'weight')
  String? get weight;
  @override
  @JsonKey(defaultValue: '', name: 'date')
  String get date;
  @override
  @JsonKey(defaultValue: '', name: 'from_time')
  String get fromTime;
  @override
  @JsonKey(defaultValue: '', name: 'to_time')
  String get toTime;
  @override
  @JsonKey(defaultValue: 0, name: 'seats')
  int? get seats;
  @override
  @JsonKey(defaultValue: '', name: 'comment')
  String get comment;
  @override
  @JsonKey(defaultValue: 0, name: 'status')
  int get status;
  @override
  @JsonKey(defaultValue: 0, name: 'requests')
  int get requests;
  @override
  @JsonKey(defaultValue: '', name: 'name')
  String get name;
  @override
  @JsonKey(defaultValue: '', name: 'last_name')
  String get surname;
  @override
  @JsonKey(defaultValue: 0, name: 'phone')
  int get phone;
  @override
  @JsonKey(defaultValue: '', name: 'number')
  String? get number;
  @override
  @JsonKey(defaultValue: 0, name: 'rating')
  int? get rating;
  @override
  @JsonKey(ignore: true)
  _$$TripModelImplCopyWith<_$TripModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
