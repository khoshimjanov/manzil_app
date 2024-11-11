// import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manzil/auth/domain/role_model.dart';
import 'package:manzil/auth/infrastructure/db_helper.dart';

import 'package:manzil/core/domain/car_data_model.dart';
import 'package:manzil/core/domain/gender_model.dart';
import 'package:manzil/core/domain/region_model.dart';
import 'package:manzil/core/domain/user_model.dart';

class UserBloc extends Cubit<UserModel> {
  UserBloc() : super(UserModel.initial()) {
    // DbHelper.removHiveBox();
    getData();
  }

  void getData() {
    try {
      final data = DbHelper.getUserData();
      if (data == null) {
        print("it is empty");
      } else {
        emit(data);

        print("user:$data");
      }
    } on DioException catch (e) {
      print(e.message);
    }
  }

  void signUp(String name) async {
    emit(state.copyWith(name: name));
  }

  void changeName(String name) async {
    emit(state.copyWith(name: name));
  }

  void changeSurname(String surname) async {
    emit(state.copyWith(surname: surname));
  }

  void changeGender(Gender gender) async {
    emit(state.copyWith(gender: gender));
  }

  void changeRole(Role role) async {
    emit(state.copyWith(role: role));
  }

  void changePhoneNumber(String phoneNumber) async {
    emit(state.copyWith(phoneNumber: phoneNumber));
  }

  void changeRegion(RegionModel region) async {
    emit(state.copyWith(region: region));
  }

  void changeState({
    DateTime? date,
    String? phoneNumber,
    RegionModel? region,
  }) {
    emit(state.copyWith(
      phoneNumber: phoneNumber ?? state.phoneNumber
    ));
  }

  void changeBirthday(DateTime date) async {
    emit(state.copyWith(birthday: date));
  }

  void addCarInfo(CarDataModel carmodel) {
    emit(state.copyWith(carmodel: carmodel));
  }

  void addUserInfo(int id) {
    emit(state.copyWith(id: id.toString()));
    DbHelper.addUserData(state);
  }

  void addUserCode(String code) {
    emit(state.copyWith(code: code));
  }

  void login(UserModel userdata) {
    DbHelper.addUserData(userdata);
    emit(userdata);
  }

  void changeUserInfo() {
    DbHelper.changeUserData(state);
  }

  void logOut() {
    DbHelper.logOut();
    emit(UserModel.initial());
  }
}
