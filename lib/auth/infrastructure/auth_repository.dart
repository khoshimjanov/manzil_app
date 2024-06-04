import 'package:dio/dio.dart';

class AuthRepository {
  final Dio dio;
  AuthRepository({required this.dio});
  Future<bool> getCode(
    String phone,) async {
    try {
      final phoneNumber="998$phone";
      final formData = FormData.fromMap({
        'phone': phoneNumber,
      });

      final response = await dio.post(
        '/send-code',
        data: formData,
      );
      print(response.data);

      if (response.statusCode == 200 && response.data?['stateCode'] == 200) {
        final responseData = response.data?.cast<String, dynamic>();
        if (responseData?['isRegistered'] == true) {
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
}
