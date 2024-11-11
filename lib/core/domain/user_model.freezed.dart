// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserModel {
  @HiveField(0)
  int get type => throw _privateConstructorUsedError;
  @HiveField(1)
  RegionModel get region => throw _privateConstructorUsedError;
  @HiveField(2)
  DistrictModel get district => throw _privateConstructorUsedError;
  @HiveField(3)
  Role get role => throw _privateConstructorUsedError;
  @HiveField(4)
  CarDataModel? get carmodel => throw _privateConstructorUsedError;
  @HiveField(5)
  Gender get gender => throw _privateConstructorUsedError;
  @HiveField(6)
  String get name => throw _privateConstructorUsedError;
  @HiveField(7)
  String get surname => throw _privateConstructorUsedError;
  @HiveField(8)
  DateTime get birthday => throw _privateConstructorUsedError;
  @HiveField(9)
  String get phoneNumber => throw _privateConstructorUsedError;
  @HiveField(10)
  String get id => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@HiveField(0) int type,
      @HiveField(1) RegionModel region,
      @HiveField(2) DistrictModel district,
      @HiveField(3) Role role,
      @HiveField(4) CarDataModel? carmodel,
      @HiveField(5) Gender gender,
      @HiveField(6) String name,
      @HiveField(7) String surname,
      @HiveField(8) DateTime birthday,
      @HiveField(9) String phoneNumber,
      @HiveField(10) String id,
      @HiveField(11) String? code});

  $RegionModelCopyWith<$Res> get region;
  $DistrictModelCopyWith<$Res> get district;
  $CarDataModelCopyWith<$Res>? get carmodel;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? region = null,
    Object? district = null,
    Object? role = null,
    Object? carmodel = freezed,
    Object? gender = null,
    Object? name = null,
    Object? surname = null,
    Object? birthday = null,
    Object? phoneNumber = null,
    Object? id = null,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as RegionModel,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as DistrictModel,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      carmodel: freezed == carmodel
          ? _value.carmodel
          : carmodel // ignore: cast_nullable_to_non_nullable
              as CarDataModel?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionModelCopyWith<$Res> get region {
    return $RegionModelCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DistrictModelCopyWith<$Res> get district {
    return $DistrictModelCopyWith<$Res>(_value.district, (value) {
      return _then(_value.copyWith(district: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CarDataModelCopyWith<$Res>? get carmodel {
    if (_value.carmodel == null) {
      return null;
    }

    return $CarDataModelCopyWith<$Res>(_value.carmodel!, (value) {
      return _then(_value.copyWith(carmodel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int type,
      @HiveField(1) RegionModel region,
      @HiveField(2) DistrictModel district,
      @HiveField(3) Role role,
      @HiveField(4) CarDataModel? carmodel,
      @HiveField(5) Gender gender,
      @HiveField(6) String name,
      @HiveField(7) String surname,
      @HiveField(8) DateTime birthday,
      @HiveField(9) String phoneNumber,
      @HiveField(10) String id,
      @HiveField(11) String? code});

  @override
  $RegionModelCopyWith<$Res> get region;
  @override
  $DistrictModelCopyWith<$Res> get district;
  @override
  $CarDataModelCopyWith<$Res>? get carmodel;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? region = null,
    Object? district = null,
    Object? role = null,
    Object? carmodel = freezed,
    Object? gender = null,
    Object? name = null,
    Object? surname = null,
    Object? birthday = null,
    Object? phoneNumber = null,
    Object? id = null,
    Object? code = freezed,
  }) {
    return _then(_$UserModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as RegionModel,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as DistrictModel,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      carmodel: freezed == carmodel
          ? _value.carmodel
          : carmodel // ignore: cast_nullable_to_non_nullable
              as CarDataModel?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {@HiveField(0) required this.type,
      @HiveField(1) required this.region,
      @HiveField(2) required this.district,
      @HiveField(3) required this.role,
      @HiveField(4) this.carmodel,
      @HiveField(5) required this.gender,
      @HiveField(6) required this.name,
      @HiveField(7) required this.surname,
      @HiveField(8) required this.birthday,
      @HiveField(9) required this.phoneNumber,
      @HiveField(10) required this.id,
      @HiveField(11) this.code});

  @override
  @HiveField(0)
  final int type;
  @override
  @HiveField(1)
  final RegionModel region;
  @override
  @HiveField(2)
  final DistrictModel district;
  @override
  @HiveField(3)
  final Role role;
  @override
  @HiveField(4)
  final CarDataModel? carmodel;
  @override
  @HiveField(5)
  final Gender gender;
  @override
  @HiveField(6)
  final String name;
  @override
  @HiveField(7)
  final String surname;
  @override
  @HiveField(8)
  final DateTime birthday;
  @override
  @HiveField(9)
  final String phoneNumber;
  @override
  @HiveField(10)
  final String id;
  @override
  @HiveField(11)
  final String? code;

  @override
  String toString() {
    return 'UserModel(type: $type, region: $region, district: $district, role: $role, carmodel: $carmodel, gender: $gender, name: $name, surname: $surname, birthday: $birthday, phoneNumber: $phoneNumber, id: $id, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.carmodel, carmodel) ||
                other.carmodel == carmodel) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, region, district, role,
      carmodel, gender, name, surname, birthday, phoneNumber, id, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@HiveField(0) required final int type,
      @HiveField(1) required final RegionModel region,
      @HiveField(2) required final DistrictModel district,
      @HiveField(3) required final Role role,
      @HiveField(4) final CarDataModel? carmodel,
      @HiveField(5) required final Gender gender,
      @HiveField(6) required final String name,
      @HiveField(7) required final String surname,
      @HiveField(8) required final DateTime birthday,
      @HiveField(9) required final String phoneNumber,
      @HiveField(10) required final String id,
      @HiveField(11) final String? code}) = _$UserModelImpl;

  @override
  @HiveField(0)
  int get type;
  @override
  @HiveField(1)
  RegionModel get region;
  @override
  @HiveField(2)
  DistrictModel get district;
  @override
  @HiveField(3)
  Role get role;
  @override
  @HiveField(4)
  CarDataModel? get carmodel;
  @override
  @HiveField(5)
  Gender get gender;
  @override
  @HiveField(6)
  String get name;
  @override
  @HiveField(7)
  String get surname;
  @override
  @HiveField(8)
  DateTime get birthday;
  @override
  @HiveField(9)
  String get phoneNumber;
  @override
  @HiveField(10)
  String get id;
  @override
  @HiveField(11)
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
