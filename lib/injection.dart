// ignore_for_file: avoid_dynamic_calls

// import 'dart:convert';
// import 'dart:developer';
// import 'package:dio/dio.dart';
// import 'package:flutter/services.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manzil/auth/infrastructure/db_helper.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// import '/core/domain/app_config.dart';

import 'package:shared_preferences/shared_preferences.dart';
// import '/core/infrastructure/constants.dart';
// import '/core/infrastructure/device_details.dart';
// import '/core/infrastructure/hive_datastore.dart';

part 'injection.freezed.dart';

@freezed
class AppInjections with _$AppInjections {
  const AppInjections._();

  const factory AppInjections({
    // required AppConfig appConfig,
    // required DeviceDetails? details,
    // required HiveDataStore dataStore,
    required SharedPreferences sharedPrefs,
    required Dio dio,
  }) = _AppInjections;
}

class Injection {
  Future<AppInjections> setUpInjection() async {
      await DbHelper.initialize();
  await DbHelper.openBoxes();
    // final configFile = await rootBundle.loadString('assets/config/main.json');
    // final configData = jsonDecode(configFile);
    // final appConfig = AppConfig(
    //   apiKey: configData['API_KEY'] as String,
    //   baseApiUrl: configData['BASE_API_URL'] as String,
    // );
    // final details = DeviceInfoDetails();
    // final detailsInfo = await details.getDeviceDetails();
    // final dataStore = HiveDataStore();
    // await dataStore.init();
    final sharedPrefs = await SharedPreferences.getInstance();

    final dioBaseOptions = BaseOptions(
      baseUrl: "https://manzil.exord.uz/v1/api",
      headers: {
        'Token': 'APA91bHEPwq4s0YX6ZuFyH5V9ESAgh9XzuLJ4QnEajStg4KWtpdCDD'
      },
      followRedirects: false,
      sendTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
      connectTimeout: const Duration(seconds: 20),
    );

    final dio = Dio(dioBaseOptions);

    // if (!kIsProd) {
    //   dio.interceptors.add(
    //     PrettyDioLogger(
    //       requestBody: true,
    //       logPrint: (object) => log(object.toString()),
    //       maxWidth: 120,
    //     ),
    //   );
    // }a

    return AppInjections(
      // appConfig: appConfig,
      // details: detailsInfo,
      // dataStore: dataStore,
      dio: dio,
      sharedPrefs: sharedPrefs,
    );
  }
}

