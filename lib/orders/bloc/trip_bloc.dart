import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manzil/core/domain/region_model.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';
import 'package:manzil/main/domain/location_model.dart';

import 'package:manzil/main/domain/trip_model.dart';

class TripBloc extends Cubit<TripModel> {
  TripBloc() : super(TripModel.initial()) {
    // getTrips();
  }

  void changeFromAddress(AppLatLong point, String address) {
    emit(state.copyWith(
      fromAddress: address,
      fromLatitude: point.lat.toString(),
      fromLongitude: point.long.toString(),
    ));
  }

  void changeToAddress(AppLatLong point, String address) {
    emit(state.copyWith(
      toAddress: address,
      toLatitude: point.lat.toString(),
      toLongitude: point.long.toString(),
    ));
  }

  void changeFromTime(String time) {
    emit(state.copyWith(
      fromTime: time,
    ));
  }

  void changeToTime(String time) {
    emit(state.copyWith(
      toTime: time,
    ));
  }

  void changeRegion(RegionModel region, bool isTo) {
    if (isTo) {
      emit(state.copyWith(toRegionId: region.id));
    } else {
      emit(state.copyWith(fromRegionId: region.id));
    }
  }

  void changeTripComment(String comment) {
    emit(state.copyWith(comment: comment));
  }

  void changeTripWeight(String weight) {
    emit(state.copyWith(weight: weight));
  }

  void changeTripday(DateTime date) {
    emit(state.copyWith(date: formatFromDateToString(date)));
  }

  void publishTrip() {
    emit(TripModel.initial());
  }

  // void getTrips() async {
  //   try {
  //     // emit(state.copyWith(status: TripStateStatus.loading));
  //     final response =
  //         await dio.get("/get-trips?account_id=1&owner_type=0&owner_id=1&=");
  //     final List<TripModel> trips = [];

  //     final data = response.data['trips'];
  //     for (var i in data) {
  //       trips.add(TripModel.fromJson(i));
  //     }
  //     print("trips:$trips");
  //     emit(state.copyWith(
  //         status: TripStateStatus.loadedWithSuccess, trips: trips));
  //   } on DioException catch (e) {
  //     print(e.message);
  //     emit(state.copyWith(
  //         status: TripStateStatus.loadedWithError, error: e.toString()));
  //   } catch (e) {
  //     print("error:$e");
  //     emit(state.copyWith(
  //         status: TripStateStatus.loadedWithError, error: e.toString()));
  //   }
  // }
}
