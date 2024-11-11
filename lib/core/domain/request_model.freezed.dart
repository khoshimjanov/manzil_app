// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestModel _$RequestModelFromJson(Map<String, dynamic> json) {
  return _RequestModel.fromJson(json);
}

/// @nodoc
mixin _$RequestModel {
  @JsonKey(defaultValue: 0, name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', name: 'last_name')
  String get surname => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'phone')
  int get phone => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'rating')
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: null, name: 'cancelled_at')
  String? get cancelled => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: null, name: 'accepted_at')
  String? get accepted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestModelCopyWith<RequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestModelCopyWith<$Res> {
  factory $RequestModelCopyWith(
          RequestModel value, $Res Function(RequestModel) then) =
      _$RequestModelCopyWithImpl<$Res, RequestModel>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0, name: 'id') int id,
      @JsonKey(defaultValue: '', name: 'name') String name,
      @JsonKey(defaultValue: '', name: 'last_name') String surname,
      @JsonKey(defaultValue: 0, name: 'phone') int phone,
      @JsonKey(defaultValue: 0, name: 'rating') int rating,
      @JsonKey(defaultValue: null, name: 'cancelled_at') String? cancelled,
      @JsonKey(defaultValue: null, name: 'accepted_at') String? accepted});
}

/// @nodoc
class _$RequestModelCopyWithImpl<$Res, $Val extends RequestModel>
    implements $RequestModelCopyWith<$Res> {
  _$RequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? surname = null,
    Object? phone = null,
    Object? rating = null,
    Object? cancelled = freezed,
    Object? accepted = freezed,
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
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      cancelled: freezed == cancelled
          ? _value.cancelled
          : cancelled // ignore: cast_nullable_to_non_nullable
              as String?,
      accepted: freezed == accepted
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestModelImplCopyWith<$Res>
    implements $RequestModelCopyWith<$Res> {
  factory _$$RequestModelImplCopyWith(
          _$RequestModelImpl value, $Res Function(_$RequestModelImpl) then) =
      __$$RequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0, name: 'id') int id,
      @JsonKey(defaultValue: '', name: 'name') String name,
      @JsonKey(defaultValue: '', name: 'last_name') String surname,
      @JsonKey(defaultValue: 0, name: 'phone') int phone,
      @JsonKey(defaultValue: 0, name: 'rating') int rating,
      @JsonKey(defaultValue: null, name: 'cancelled_at') String? cancelled,
      @JsonKey(defaultValue: null, name: 'accepted_at') String? accepted});
}

/// @nodoc
class __$$RequestModelImplCopyWithImpl<$Res>
    extends _$RequestModelCopyWithImpl<$Res, _$RequestModelImpl>
    implements _$$RequestModelImplCopyWith<$Res> {
  __$$RequestModelImplCopyWithImpl(
      _$RequestModelImpl _value, $Res Function(_$RequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? surname = null,
    Object? phone = null,
    Object? rating = null,
    Object? cancelled = freezed,
    Object? accepted = freezed,
  }) {
    return _then(_$RequestModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      cancelled: freezed == cancelled
          ? _value.cancelled
          : cancelled // ignore: cast_nullable_to_non_nullable
              as String?,
      accepted: freezed == accepted
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestModelImpl implements _RequestModel {
  const _$RequestModelImpl(
      {@JsonKey(defaultValue: 0, name: 'id') required this.id,
      @JsonKey(defaultValue: '', name: 'name') required this.name,
      @JsonKey(defaultValue: '', name: 'last_name') required this.surname,
      @JsonKey(defaultValue: 0, name: 'phone') required this.phone,
      @JsonKey(defaultValue: 0, name: 'rating') required this.rating,
      @JsonKey(defaultValue: null, name: 'cancelled_at') this.cancelled,
      @JsonKey(defaultValue: null, name: 'accepted_at') this.accepted});

  factory _$RequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestModelImplFromJson(json);

  @override
  @JsonKey(defaultValue: 0, name: 'id')
  final int id;
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
  @JsonKey(defaultValue: 0, name: 'rating')
  final int rating;
  @override
  @JsonKey(defaultValue: null, name: 'cancelled_at')
  final String? cancelled;
  @override
  @JsonKey(defaultValue: null, name: 'accepted_at')
  final String? accepted;

  @override
  String toString() {
    return 'RequestModel(id: $id, name: $name, surname: $surname, phone: $phone, rating: $rating, cancelled: $cancelled, accepted: $accepted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.cancelled, cancelled) ||
                other.cancelled == cancelled) &&
            (identical(other.accepted, accepted) ||
                other.accepted == accepted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, surname, phone, rating, cancelled, accepted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestModelImplCopyWith<_$RequestModelImpl> get copyWith =>
      __$$RequestModelImplCopyWithImpl<_$RequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestModelImplToJson(
      this,
    );
  }
}

abstract class _RequestModel implements RequestModel {
  const factory _RequestModel(
      {@JsonKey(defaultValue: 0, name: 'id') required final int id,
      @JsonKey(defaultValue: '', name: 'name') required final String name,
      @JsonKey(defaultValue: '', name: 'last_name')
      required final String surname,
      @JsonKey(defaultValue: 0, name: 'phone') required final int phone,
      @JsonKey(defaultValue: 0, name: 'rating') required final int rating,
      @JsonKey(defaultValue: null, name: 'cancelled_at')
      final String? cancelled,
      @JsonKey(defaultValue: null, name: 'accepted_at')
      final String? accepted}) = _$RequestModelImpl;

  factory _RequestModel.fromJson(Map<String, dynamic> json) =
      _$RequestModelImpl.fromJson;

  @override
  @JsonKey(defaultValue: 0, name: 'id')
  int get id;
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
  @JsonKey(defaultValue: 0, name: 'rating')
  int get rating;
  @override
  @JsonKey(defaultValue: null, name: 'cancelled_at')
  String? get cancelled;
  @override
  @JsonKey(defaultValue: null, name: 'accepted_at')
  String? get accepted;
  @override
  @JsonKey(ignore: true)
  _$$RequestModelImplCopyWith<_$RequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
