import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manzil/auth/domain/role_model.dart';
import 'package:manzil/core/domain/request_model.dart';
import 'package:manzil/core/domain/user_model.dart';
import 'package:manzil/core/infrastructure/functions/api_urls.dart';

import 'package:manzil/main/domain/trip_model.dart';
import 'package:manzil/orders/bloc/trips_state.dart';

class TripsBloc extends Cubit<TripsState> {
  final Dio dio;
  TripsBloc(this.dio) : super(TripsState.initial()) {
    getTrips();
  }
  void getTrips() async {
    try {
      emit(state.copyWith(status: TripStateStatus.loading));
      final response = await dio.get(ApiUrls.getTrips(0, 5));
      final List<TripModel> trips = [];

      final data = response.data['trips'];
      for (var i in data) {
        final trip = TripModel.fromJson(i);
        // if(trip.ownerId);
        trips.add(trip);
      }
      print("trips:$trips");
      emit(state.copyWith(
          status: TripStateStatus.loadedWithSuccess, trips: trips));
    } on DioException catch (e) {
      print(e.message);
      emit(state.copyWith(
          status: TripStateStatus.loadedWithError, error: e.toString()));
    } catch (e) {
      log("error:$e");
      emit(state.copyWith(
          status: TripStateStatus.loadedWithError, error: e.toString()));
    }
  }

  Future<void> getTripsHistory(
      // BuildContext context
      UserModel user) async {
    try {
      emit(state.copyWith(status: TripStateStatus.loading));
      // final user=context.watch<UserBloc>().state;
      final response =
          await dio.get(ApiUrls.getTripsHistory(user.type, user.id));
      // final response = await dio.get(ApiUrls.getTripsHistory(1,"1"));
      final List<TripModel> trips = [];

      final data = response.data['trips'];
      print("trips:$data");
      for (var i in data) {
        trips.add(TripModel.fromJson(i));
      }
      emit(state.copyWith(
          status: TripStateStatus.loadedWithSuccess, historyTrips: trips));

      // return trips;
    } on DioException catch (e) {
      print("error:$e");
      emit(state.copyWith(
          status: TripStateStatus.loadedWithError, error: e.toString()));
    }
  }

  Future<(TripModel, List<RequestModel>)> getTrip(
    int id,
  ) async {
    try {
      // final user=context.watch<UserBloc>().state;
      final response = await dio.get(ApiUrls.getTrip(id));
      // final response = await dio.get(ApiUrls.getTripsHistory(1,"1"));
      // final List<TripModel> trips = [];

      final data = response.data;

      final List<RequestModel> requests = [];
      if (data['requests'] != null) {
        for (var i in data['requests']) {
          requests.add(RequestModel.fromJson(i));
        }
      }

      return (TripModel.fromJson(data['trip']), requests);

      // return trips;
    } on DioException catch (e) {
      log(e.message.toString());
      rethrow;
    }
  }

  void addTrip(TripModel trip, UserModel user) async {
    try {
      print("id:${user.id}");
      // emit(state.copyWith(trips: [...state.trips, trip]));
      final car = user.carmodel;
      late FormData formData;
      if (user.role == Role.driver) {
        formData = FormData.fromMap({
          'id': user.id,
          'system': "iOS",
          'type': user.type.toString(),
          'car_class_id': car!.carClass.id,
          'driver_experience': car.driverExperience.toString(),
          'from_country_id': '1',
          'from_region_id': user.region.id,
          'from_district_id': user.district.id,
          'to_country_id': '1',
          'to_region_id': user.region.id,
          'to_district_id': user.district.id,
          'user_type': user.type.toString(),
          'from_address': trip.fromAddress,
          'from_latitude': trip.fromLatitude,
          'from_longitude': trip.fromLongitude,
          'to_address': trip.toAddress,
          'to_latitude': trip.toLatitude,
          'to_longitude': trip.toLongitude,
          'date': trip.date,
          'from_time': trip.fromTime,
          'to_time': trip.toTime,
          'comment': trip.comment,
          'payment': "CASH",
          'weight': trip.weight,
          'cargo_type': "",
          'cargo_image': "",
          'receiver_phone': user.phoneNumber,
        });
      } else {
        formData = FormData.fromMap({
          'id': user.id,
          'system': "iOS",
          'type': user.type.toString(),
          'from_country_id': '1',
          'from_region_id': user.region.id,
          'from_district_id': user.district.id,
          'to_country_id': '1',
          'to_region_id': user.region.id,
          'to_district_id': user.district.id,
          'user_type': user.type.toString(),
          'from_address': trip.fromAddress,
          'from_latitude': trip.fromLatitude,
          'from_longitude': trip.fromLongitude,
          'to_address': trip.toAddress,
          'to_latitude': trip.toLatitude,
          'to_longitude': trip.toLongitude,
          'date': trip.date,
          'from_time': trip.fromTime,
          'to_time': trip.toTime,
          'comment': trip.comment,
          'payment': "CASH",
          'weight': trip.weight,
          'cargo_type': "",
          'cargo_image': "",
          'receiver_phone': user.phoneNumber,
        });
      }
      print("data sent:${formData.fields}");
      final response = await dio.post(
        '/create-trip',
        data: formData,
      );
      if (response.statusCode == 200) {
        log("date got: ${response.data}");
      }
    } on DioException catch (e) {
      log("error:$e");
      emit(state.copyWith(
          status: TripStateStatus.loadedWithError, error: e.toString()));
    }
  }

  Future<void> publishTrip(TripModel trip, UserModel user) async {
    try {
      final car = user.carmodel!;
      final formData = FormData.fromMap({
        'id': "100005",
        'system': "iOS",
        'type': "1",
        'car_class_id': car.carClass.id,
        'driver_experience': car.driverExperience.toString(),
        'from_country_id': '1',
        'from_region_id': user.region.id,
        'from_district_id': user.district.id,
        'to_country_id': '1',
        'to_region_id': user.region.id,
        'to_district_id': user.district.id,
        'user_type': user.type.toString(),
        'from_address': trip.fromAddress,
        'from_latitude': trip.fromLatitude,
        'from_longitude': trip.fromLongitude,
        'to_address': trip.toAddress,
        'to_latitude': trip.toLatitude,
        'to_longitude': trip.toLongitude,
        'date': trip.date,
        'from_time': trip.fromTime,
        'to_time': trip.fromTime,
        'comment': trip.comment,
        'payment': "PayMe",
        'weight': '0',
        'cargo_type': "0",
        'cargo_image': "",
        'receiver_phone': user.phoneNumber,
      });

      final response = await dio.post(
        '/create-trip',
        data: formData,
      );
      print(response.data);

      if (response.statusCode == 200 && response.data?['stateCode'] == 200) {
        final responseData = response.data?.cast<String, dynamic>();
        if (responseData?['state'] == 'OK') {}
      } else {
        print("error any");
      }
    } on DioException catch (e) {
      print(e.message);
    }
  }

  Future<void> sendRequest(TripModel trip, UserModel user) async {
    try {
      final formData = FormData.fromMap({
        'trip_id': trip.id,
        'system': "iOS",
        'account_id': user.id,
        'account_type': user.type.toString(),
      });

      final response = await dio.post(
        '/send-request',
        data: formData,
      );
      print(response.data);

      if (response.statusCode == 200 && response.data?['stateCode'] == 200) {
        final responseData = response.data?.cast<String, dynamic>();
        if (responseData?['state'] == 'OK') {}
      } else {
        print("error any");
      }
    } on DioException catch (e) {
      print(e.message);
    }
  }

  Future<bool> acceptRequest(int requestId) async {
    try {
      final formData = FormData.fromMap({
        'request_id': requestId,
        // 'system': "iOS",
      });

      final response = await dio.post(
        '/accept-request',
        data: formData,
      );
      print(response.data);

      if (response.statusCode == 200 && response.data?['stateCode'] == 200) {
        final responseData = response.data?.cast<String, dynamic>();
        if (responseData?['state'] == 'OK') {
          print("request accepted");
          return true;
        }
      } else {
        print("error any");
        return false;
      }
      return false;
    } on DioException catch (e) {
      print(e.message);
      return false;
    }
  }

  Future<bool> denyRequest(int requestId) async {
    try {
      final formData = FormData.fromMap({
        'request_id': requestId,
        // 'system': "iOS",
      });

      final response = await dio.post(
        '/cancel-request',
        data: formData,
      );
      print(response.data);

      if (response.statusCode == 200 && response.data?['stateCode'] == 200) {
        final responseData = response.data?.cast<String, dynamic>();
        if (responseData?['state'] == 'OK') {
          print("request denied");
          return true;
        }
      } else {
        print("error any");
        return false;
      }
      return false;
    } on DioException catch (e) {
      print(e.message);
      return false;
    }
  }
}
