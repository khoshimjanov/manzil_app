import 'package:dio/dio.dart';
import 'package:manzil/main/domain/trip_model.dart';

class TripsRepository {
  final Dio dio;
  TripsRepository({required this.dio});
  Future<void> publishTrip(TripModel trip) async {
    try {
      final formData = FormData.fromMap({
        // 'phone': phoneNumber,
        // 'code': code,
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
}
