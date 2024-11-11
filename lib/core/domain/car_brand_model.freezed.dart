// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_brand_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CarBrandModel _$CarBrandModelFromJson(Map<String, dynamic> json) {
  return _CarBrandModel.fromJson(json);
}

/// @nodoc
mixin _$CarBrandModel {
  @HiveField(0)
  @JsonKey(defaultValue: 0, name: 'id')
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(defaultValue: '', name: 'name_uz')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarBrandModelCopyWith<CarBrandModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarBrandModelCopyWith<$Res> {
  factory $CarBrandModelCopyWith(
          CarBrandModel value, $Res Function(CarBrandModel) then) =
      _$CarBrandModelCopyWithImpl<$Res, CarBrandModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(defaultValue: 0, name: 'id') int id,
      @HiveField(1) @JsonKey(defaultValue: '', name: 'name_uz') String name});
}

/// @nodoc
class _$CarBrandModelCopyWithImpl<$Res, $Val extends CarBrandModel>
    implements $CarBrandModelCopyWith<$Res> {
  _$CarBrandModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarBrandModelImplCopyWith<$Res>
    implements $CarBrandModelCopyWith<$Res> {
  factory _$$CarBrandModelImplCopyWith(
          _$CarBrandModelImpl value, $Res Function(_$CarBrandModelImpl) then) =
      __$$CarBrandModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(defaultValue: 0, name: 'id') int id,
      @HiveField(1) @JsonKey(defaultValue: '', name: 'name_uz') String name});
}

/// @nodoc
class __$$CarBrandModelImplCopyWithImpl<$Res>
    extends _$CarBrandModelCopyWithImpl<$Res, _$CarBrandModelImpl>
    implements _$$CarBrandModelImplCopyWith<$Res> {
  __$$CarBrandModelImplCopyWithImpl(
      _$CarBrandModelImpl _value, $Res Function(_$CarBrandModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CarBrandModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarBrandModelImpl implements _CarBrandModel {
  const _$CarBrandModelImpl(
      {@HiveField(0) @JsonKey(defaultValue: 0, name: 'id') required this.id,
      @HiveField(1)
      @JsonKey(defaultValue: '', name: 'name_uz')
      required this.name});

  factory _$CarBrandModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarBrandModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(defaultValue: 0, name: 'id')
  final int id;
  @override
  @HiveField(1)
  @JsonKey(defaultValue: '', name: 'name_uz')
  final String name;

  @override
  String toString() {
    return 'CarBrandModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarBrandModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarBrandModelImplCopyWith<_$CarBrandModelImpl> get copyWith =>
      __$$CarBrandModelImplCopyWithImpl<_$CarBrandModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarBrandModelImplToJson(
      this,
    );
  }
}

abstract class _CarBrandModel implements CarBrandModel {
  const factory _CarBrandModel(
      {@HiveField(0)
      @JsonKey(defaultValue: 0, name: 'id')
      required final int id,
      @HiveField(1)
      @JsonKey(defaultValue: '', name: 'name_uz')
      required final String name}) = _$CarBrandModelImpl;

  factory _CarBrandModel.fromJson(Map<String, dynamic> json) =
      _$CarBrandModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(defaultValue: 0, name: 'id')
  int get id;
  @override
  @HiveField(1)
  @JsonKey(defaultValue: '', name: 'name_uz')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CarBrandModelImplCopyWith<_$CarBrandModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
