import 'package:dio/dio.dart';
import 'package:manzil/auth/domain/role_model.dart';
import 'package:manzil/core/domain/car_brand_model.dart';
import 'package:manzil/core/domain/car_data_model.dart';
import 'package:manzil/core/domain/car_model.dart';
import 'package:manzil/core/domain/class_model.dart';
import 'package:manzil/core/domain/district_model.dart';
import 'package:manzil/core/domain/gender_model.dart';
import 'package:manzil/core/domain/region_model.dart';
import 'package:manzil/core/domain/user_model.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';

class AuthRepository {
  final Dio dio;
  AuthRepository({required this.dio});
  Future<List> getCode(
    String phone,
  ) async {
    try {
      final phoneNumber = "998$phone";
      final formData = FormData.fromMap({'phone': phoneNumber});

      final response = await dio.post('/send-code', data: formData);
      print(response.data);

      if (response.statusCode == 200 && response.data?['stateCode'] == 200) {
        final responseData = response.data?.cast<String, dynamic>();
        if (responseData?['isRegistered'] == true) {
          final l = responseData?['type'];
          return [true, l];
        }
        return [false];
      } else {
        print("error any");
        return [false];
      }
    } on DioException catch (e) {
      print(e.message);
      return [false];
    }
  }

  Future<bool> checkCode(String phone, String code) async {
    try {
      final phoneNumber = "998$phone";
      // const phoneNumber = "998999784346";
      final formData = FormData.fromMap({
        'phone': phoneNumber,
        'code': code,
      });

      final response = await dio.post(
        '/check-code',
        data: formData,
      );
      final data = response.data;
      if (data["isRegistered"] == true) {
        print("authorize");
      }
      print(data);

      print(data["data"]);

      if (response.statusCode == 200 && response.data?['stateCode'] == 200) {
        final responseData = response.data?.cast<String, dynamic>();
        if (responseData?['state'] == 'OK') {
          return true;
        }

        return false;
      } else {
        print("error any");
        return false;
      }
    } on DioException catch (e) {
      print(e.message);
      return false;
    }
  }

  Future<UserModel> getUserData(
    String phone,
    String code,
    int type,
  ) async {
    try {
      UserModel user = UserModel.initial();
      final phoneNumber = "998$phone";
      print("ph $phoneNumber, $code");
      final formData = FormData.fromMap({
        'phone': phoneNumber,
        'code': code,
        'type': type,
        'deviceId': "1200",
      });

      final response = await dio.post(
        '/auth',
        data: formData,
      );

      if (response.statusCode == 200 && response.data?['stateCode'] == 200) {
        final data = response.data;
        print(data);

        final userData = data['data'];
        CarDataModel? car;
        print(userData);
        if (type == 1 && data['car'] != null) {
          final carData = data['car'];

          car = CarDataModel(
              carClass: CarClassModel(id: carData['class_id'], name: ""),
              carBrand: CarBrandModel(id: carData['make_id'], name: ""),
              model: CarModel(id: carData['model_id'], name: ""),
              plateNumber: carData['number'],
              licenseNumber: carData['license'],
              carYear: carData['year'],
              driverExperience: carData['experience']);
        }

        user = UserModel(
          carmodel: car,
          type: type,
          region: RegionModel(id: userData['region_id'], name: ''),
          district: const DistrictModel(id: 0, name: ""),
          role: type == 0 ? Role.passenger : Role.driver,
          gender: userData['gender'] == 0 ? Gender.female : Gender.male,
          name: userData['name'],
          surname: userData['last_name'],
          birthday: formatFromStringToDate(userData['birthday']),
          phoneNumber: phoneNumber,
          id: userData['id'].toString(),
        );

        print("authorize:$user");

        return user;
      }
      return user;
    } on DioException catch (e) {
      print(e.message);
      rethrow;
    }
  }

  Future<int> register(UserModel user, int code) async {
    try {
      late FormData formData;
      if (user.role == Role.driver) {
        final car = user.carmodel;
        print("car info: $car");
        formData = FormData.fromMap({
          'type': 1,
          'region_id': user.region.id,
          'user_type': user.type.toString(),
          'name': user.name,
          'last_name': user.surname,
          'birthdate': formatFromDateToString(user.birthday),
          'language': "uz",
          'gender': user.gender == Gender.male ? 1 : 0,
          'phone': int.parse(user.phoneNumber),
          'code': code,
          'deviceId': "1200",
          'class_id': car!.carClass.id,
          'make_id': car.carBrand.id,
          'model_id': car.model.id,
          'number': car.plateNumber,
          'year': car.plateNumber,
          'license': car.licenseNumber,
          'experience': car.driverExperience,
          'insurance': 1,
          'proxy': 1,
          'gas': 0,
          'aircondition': 1,
          'taxi': 1,
          'driver_service': 0,
          'delivery': 0,
          'tow_truck': 0,
        });
      } else {
        formData = FormData.fromMap({
          'type': 0,
          'region_id': user.region.id,
          'user_type': user.type.toString(),
          'name': user.name,
          'last_name': user.surname,
          'birthdate': formatFromDateToString(user.birthday),
          'language': "uz",
          'gender': user.gender == Gender.male ? 1 : 0,
          'phone': int.parse(user.phoneNumber),
          'code': code,
          'deviceId': "",
        });
      }

      print("data sent:${formData.fields}");
      final response = await dio.post(
        '/register',
        data: formData,
      );
      if (response.statusCode == 200) {
        final data = response.data;

        print("date got: $data");
        final userData = data['data'];
        return userData["id"];
      }
      return 0;
    } on DioException catch (e) {
      print("error:$e");
      return 0;
    }
  }
}
