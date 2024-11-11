import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manzil/core/bloc/user_data_state.dart';

import 'package:manzil/core/infrastructure/user_data_repo.dart';

class UserDataBloc extends Cubit<UserDataState> {
  final Dio dio;

  UserDataBloc(this.dio) : super(UserDataState.empty()) {
    getData();
  }

  Future<void> getData() async {
    emit(state.copyWith(status: UserDataStatus.loading));

    try {

      final userData = await UserDataRepository.getData(dio);
      emit(userData.copyWith(status: UserDataStatus.loaded));
      //   // print(response.data)
    } on DioException catch (e) {
      print(e.message);
      //   // return false;
    }

  }
}
