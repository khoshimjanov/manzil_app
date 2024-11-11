// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trips_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TripsState {
  List<TripModel> get trips => throw _privateConstructorUsedError;
  TripStateStatus get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  List<TripModel> get historyTrips => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripsStateCopyWith<TripsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripsStateCopyWith<$Res> {
  factory $TripsStateCopyWith(
          TripsState value, $Res Function(TripsState) then) =
      _$TripsStateCopyWithImpl<$Res, TripsState>;
  @useResult
  $Res call(
      {List<TripModel> trips,
      TripStateStatus status,
      String? error,
      List<TripModel> historyTrips});
}

/// @nodoc
class _$TripsStateCopyWithImpl<$Res, $Val extends TripsState>
    implements $TripsStateCopyWith<$Res> {
  _$TripsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trips = null,
    Object? status = null,
    Object? error = freezed,
    Object? historyTrips = null,
  }) {
    return _then(_value.copyWith(
      trips: null == trips
          ? _value.trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<TripModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TripStateStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      historyTrips: null == historyTrips
          ? _value.historyTrips
          : historyTrips // ignore: cast_nullable_to_non_nullable
              as List<TripModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripsStateImplCopyWith<$Res>
    implements $TripsStateCopyWith<$Res> {
  factory _$$TripsStateImplCopyWith(
          _$TripsStateImpl value, $Res Function(_$TripsStateImpl) then) =
      __$$TripsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TripModel> trips,
      TripStateStatus status,
      String? error,
      List<TripModel> historyTrips});
}

/// @nodoc
class __$$TripsStateImplCopyWithImpl<$Res>
    extends _$TripsStateCopyWithImpl<$Res, _$TripsStateImpl>
    implements _$$TripsStateImplCopyWith<$Res> {
  __$$TripsStateImplCopyWithImpl(
      _$TripsStateImpl _value, $Res Function(_$TripsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trips = null,
    Object? status = null,
    Object? error = freezed,
    Object? historyTrips = null,
  }) {
    return _then(_$TripsStateImpl(
      trips: null == trips
          ? _value._trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<TripModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TripStateStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      historyTrips: null == historyTrips
          ? _value._historyTrips
          : historyTrips // ignore: cast_nullable_to_non_nullable
              as List<TripModel>,
    ));
  }
}

/// @nodoc

class _$TripsStateImpl implements _TripsState {
  const _$TripsStateImpl(
      {required final List<TripModel> trips,
      required this.status,
      this.error,
      final List<TripModel> historyTrips = const []})
      : _trips = trips,
        _historyTrips = historyTrips;

  final List<TripModel> _trips;
  @override
  List<TripModel> get trips {
    if (_trips is EqualUnmodifiableListView) return _trips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trips);
  }

  @override
  final TripStateStatus status;
  @override
  final String? error;
  final List<TripModel> _historyTrips;
  @override
  @JsonKey()
  List<TripModel> get historyTrips {
    if (_historyTrips is EqualUnmodifiableListView) return _historyTrips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historyTrips);
  }

  @override
  String toString() {
    return 'TripsState(trips: $trips, status: $status, error: $error, historyTrips: $historyTrips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripsStateImpl &&
            const DeepCollectionEquality().equals(other._trips, _trips) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._historyTrips, _historyTrips));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_trips),
      status,
      error,
      const DeepCollectionEquality().hash(_historyTrips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripsStateImplCopyWith<_$TripsStateImpl> get copyWith =>
      __$$TripsStateImplCopyWithImpl<_$TripsStateImpl>(this, _$identity);
}

abstract class _TripsState implements TripsState {
  const factory _TripsState(
      {required final List<TripModel> trips,
      required final TripStateStatus status,
      final String? error,
      final List<TripModel> historyTrips}) = _$TripsStateImpl;

  @override
  List<TripModel> get trips;
  @override
  TripStateStatus get status;
  @override
  String? get error;
  @override
  List<TripModel> get historyTrips;
  @override
  @JsonKey(ignore: true)
  _$$TripsStateImplCopyWith<_$TripsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
