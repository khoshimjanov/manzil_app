// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CarClassModel _$CarClassModelFromJson(Map<String, dynamic> json) {
  return _CarClassModel.fromJson(json);
}

/// @nodoc
mixin _$CarClassModel {
  @HiveField(0)
  @JsonKey(defaultValue: 0, name: 'id')
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(defaultValue: '', name: 'name_uz')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarClassModelCopyWith<CarClassModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarClassModelCopyWith<$Res> {
  factory $CarClassModelCopyWith(
          CarClassModel value, $Res Function(CarClassModel) then) =
      _$CarClassModelCopyWithImpl<$Res, CarClassModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(defaultValue: 0, name: 'id') int id,
      @HiveField(1) @JsonKey(defaultValue: '', name: 'name_uz') String name});
}

/// @nodoc
class _$CarClassModelCopyWithImpl<$Res, $Val extends CarClassModel>
    implements $CarClassModelCopyWith<$Res> {
  _$CarClassModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CarClassModelImplCopyWith<$Res>
    implements $CarClassModelCopyWith<$Res> {
  factory _$$CarClassModelImplCopyWith(
          _$CarClassModelImpl value, $Res Function(_$CarClassModelImpl) then) =
      __$$CarClassModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(defaultValue: 0, name: 'id') int id,
      @HiveField(1) @JsonKey(defaultValue: '', name: 'name_uz') String name});
}

/// @nodoc
class __$$CarClassModelImplCopyWithImpl<$Res>
    extends _$CarClassModelCopyWithImpl<$Res, _$CarClassModelImpl>
    implements _$$CarClassModelImplCopyWith<$Res> {
  __$$CarClassModelImplCopyWithImpl(
      _$CarClassModelImpl _value, $Res Function(_$CarClassModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CarClassModelImpl(
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
class _$CarClassModelImpl implements _CarClassModel {
  const _$CarClassModelImpl(
      {@HiveField(0) @JsonKey(defaultValue: 0, name: 'id') required this.id,
      @HiveField(1)
      @JsonKey(defaultValue: '', name: 'name_uz')
      required this.name});

  factory _$CarClassModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarClassModelImplFromJson(json);

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
    return 'CarClassModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarClassModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarClassModelImplCopyWith<_$CarClassModelImpl> get copyWith =>
      __$$CarClassModelImplCopyWithImpl<_$CarClassModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarClassModelImplToJson(
      this,
    );
  }
}

abstract class _CarClassModel implements CarClassModel {
  const factory _CarClassModel(
      {@HiveField(0)
      @JsonKey(defaultValue: 0, name: 'id')
      required final int id,
      @HiveField(1)
      @JsonKey(defaultValue: '', name: 'name_uz')
      required final String name}) = _$CarClassModelImpl;

  factory _CarClassModel.fromJson(Map<String, dynamic> json) =
      _$CarClassModelImpl.fromJson;

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
  _$$CarClassModelImplCopyWith<_$CarClassModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
