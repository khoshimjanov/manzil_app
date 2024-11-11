import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manzil/main/domain/trip_model.dart';

part 'trips_state.freezed.dart';

@freezed
class TripsState with _$TripsState {
  const factory TripsState({
    required List<TripModel> trips,
    required TripStateStatus status,
    String? error,
    @Default([]) List<TripModel> historyTrips,
  }) = _TripsState;
  factory TripsState.initial() =>
      const TripsState(status: TripStateStatus.pure, trips: []);
}

enum TripStateStatus { loading, loadedWithSuccess, loadedWithError, pure}
