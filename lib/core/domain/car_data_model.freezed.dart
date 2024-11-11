// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CarDataModel _$CarDataModelFromJson(Map<String, dynamic> json) {
  return _CarDataModel.fromJson(json);
}

/// @nodoc
mixin _$CarDataModel {
  @HiveField(0)
  CarClassModel get carClass => throw _privateConstructorUsedError;
  @HiveField(1)
  CarBrandModel get carBrand => throw _privateConstructorUsedError;
  @HiveField(2)
  CarModel get model => throw _privateConstructorUsedError;
  @HiveField(3)
  String get plateNumber => throw _privateConstructorUsedError;
  @HiveField(4)
  String get licenseNumber => throw _privateConstructorUsedError;
  @HiveField(5)
  int get carYear => throw _privateConstructorUsedError;
  @HiveField(6)
  int get driverExperience => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarDataModelCopyWith<CarDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarDataModelCopyWith<$Res> {
  factory $CarDataModelCopyWith(
          CarDataModel value, $Res Function(CarDataModel) then) =
      _$CarDataModelCopyWithImpl<$Res, CarDataModel>;
  @useResult
  $Res call(
      {@HiveField(0) CarClassModel carClass,
      @HiveField(1) CarBrandModel carBrand,
      @HiveField(2) CarModel model,
      @HiveField(3) String plateNumber,
      @HiveField(4) String licenseNumber,
      @HiveField(5) int carYear,
      @HiveField(6) int driverExperience});

  $CarClassModelCopyWith<$Res> get carClass;
  $CarBrandModelCopyWith<$Res> get carBrand;
  $CarModelCopyWith<$Res> get model;
}

/// @nodoc
class _$CarDataModelCopyWithImpl<$Res, $Val extends CarDataModel>
    implements $CarDataModelCopyWith<$Res> {
  _$CarDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carClass = null,
    Object? carBrand = null,
    Object? model = null,
    Object? plateNumber = null,
    Object? licenseNumber = null,
    Object? carYear = null,
    Object? driverExperience = null,
  }) {
    return _then(_value.copyWith(
      carClass: null == carClass
          ? _value.carClass
          : carClass // ignore: cast_nullable_to_non_nullable
              as CarClassModel,
      carBrand: null == carBrand
          ? _value.carBrand
          : carBrand // ignore: cast_nullable_to_non_nullable
              as CarBrandModel,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CarModel,
      plateNumber: null == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      licenseNumber: null == licenseNumber
          ? _value.licenseNumber
          : licenseNumber // ignore: cast_nullable_to_non_nullable
              as String,
      carYear: null == carYear
          ? _value.carYear
          : carYear // ignore: cast_nullable_to_non_nullable
              as int,
      driverExperience: null == driverExperience
          ? _value.driverExperience
          : driverExperience // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CarClassModelCopyWith<$Res> get carClass {
    return $CarClassModelCopyWith<$Res>(_value.carClass, (value) {
      return _then(_value.copyWith(carClass: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CarBrandModelCopyWith<$Res> get carBrand {
    return $CarBrandModelCopyWith<$Res>(_value.carBrand, (value) {
      return _then(_value.copyWith(carBrand: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CarModelCopyWith<$Res> get model {
    return $CarModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CarDataModelImplCopyWith<$Res>
    implements $CarDataModelCopyWith<$Res> {
  factory _$$CarDataModelImplCopyWith(
          _$CarDataModelImpl value, $Res Function(_$CarDataModelImpl) then) =
      __$$CarDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) CarClassModel carClass,
      @HiveField(1) CarBrandModel carBrand,
      @HiveField(2) CarModel model,
      @HiveField(3) String plateNumber,
      @HiveField(4) String licenseNumber,
      @HiveField(5) int carYear,
      @HiveField(6) int driverExperience});

  @override
  $CarClassModelCopyWith<$Res> get carClass;
  @override
  $CarBrandModelCopyWith<$Res> get carBrand;
  @override
  $CarModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$CarDataModelImplCopyWithImpl<$Res>
    extends _$CarDataModelCopyWithImpl<$Res, _$CarDataModelImpl>
    implements _$$CarDataModelImplCopyWith<$Res> {
  __$$CarDataModelImplCopyWithImpl(
      _$CarDataModelImpl _value, $Res Function(_$CarDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carClass = null,
    Object? carBrand = null,
    Object? model = null,
    Object? plateNumber = null,
    Object? licenseNumber = null,
    Object? carYear = null,
    Object? driverExperience = null,
  }) {
    return _then(_$CarDataModelImpl(
      carClass: null == carClass
          ? _value.carClass
          : carClass // ignore: cast_nullable_to_non_nullable
              as CarClassModel,
      carBrand: null == carBrand
          ? _value.carBrand
          : carBrand // ignore: cast_nullable_to_non_nullable
              as CarBrandModel,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CarModel,
      plateNumber: null == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      licenseNumber: null == licenseNumber
          ? _value.licenseNumber
          : licenseNumber // ignore: cast_nullable_to_non_nullable
              as String,
      carYear: null == carYear
          ? _value.carYear
          : carYear // ignore: cast_nullable_to_non_nullable
              as int,
      driverExperience: null == driverExperience
          ? _value.driverExperience
          : driverExperience // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarDataModelImpl implements _CarDataModel {
  const _$CarDataModelImpl(
      {@HiveField(0) required this.carClass,
      @HiveField(1) required this.carBrand,
      @HiveField(2) required this.model,
      @HiveField(3) required this.plateNumber,
      @HiveField(4) required this.licenseNumber,
      @HiveField(5) required this.carYear,
      @HiveField(6) required this.driverExperience});

  factory _$CarDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarDataModelImplFromJson(json);

  @override
  @HiveField(0)
  final CarClassModel carClass;
  @override
  @HiveField(1)
  final CarBrandModel carBrand;
  @override
  @HiveField(2)
  final CarModel model;
  @override
  @HiveField(3)
  final String plateNumber;
  @override
  @HiveField(4)
  final String licenseNumber;
  @override
  @HiveField(5)
  final int carYear;
  @override
  @HiveField(6)
  final int driverExperience;

  @override
  String toString() {
    return 'CarDataModel(carClass: $carClass, carBrand: $carBrand, model: $model, plateNumber: $plateNumber, licenseNumber: $licenseNumber, carYear: $carYear, driverExperience: $driverExperience)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarDataModelImpl &&
            (identical(other.carClass, carClass) ||
                other.carClass == carClass) &&
            (identical(other.carBrand, carBrand) ||
                other.carBrand == carBrand) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.plateNumber, plateNumber) ||
                other.plateNumber == plateNumber) &&
            (identical(other.licenseNumber, licenseNumber) ||
                other.licenseNumber == licenseNumber) &&
            (identical(other.carYear, carYear) || other.carYear == carYear) &&
            (identical(other.driverExperience, driverExperience) ||
                other.driverExperience == driverExperience));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, carClass, carBrand, model,
      plateNumber, licenseNumber, carYear, driverExperience);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarDataModelImplCopyWith<_$CarDataModelImpl> get copyWith =>
      __$$CarDataModelImplCopyWithImpl<_$CarDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarDataModelImplToJson(
      this,
    );
  }
}

abstract class _CarDataModel implements CarDataModel {
  const factory _CarDataModel(
      {@HiveField(0) required final CarClassModel carClass,
      @HiveField(1) required final CarBrandModel carBrand,
      @HiveField(2) required final CarModel model,
      @HiveField(3) required final String plateNumber,
      @HiveField(4) required final String licenseNumber,
      @HiveField(5) required final int carYear,
      @HiveField(6) required final int driverExperience}) = _$CarDataModelImpl;

  factory _CarDataModel.fromJson(Map<String, dynamic> json) =
      _$CarDataModelImpl.fromJson;

  @override
  @HiveField(0)
  CarClassModel get carClass;
  @override
  @HiveField(1)
  CarBrandModel get carBrand;
  @override
  @HiveField(2)
  CarModel get model;
  @override
  @HiveField(3)
  String get plateNumber;
  @override
  @HiveField(4)
  String get licenseNumber;
  @override
  @HiveField(5)
  int get carYear;
  @override
  @HiveField(6)
  int get driverExperience;
  @override
  @JsonKey(ignore: true)
  _$$CarDataModelImplCopyWith<_$CarDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
