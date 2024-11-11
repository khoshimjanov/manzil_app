import 'package:dio/dio.dart';
import 'package:manzil/core/bloc/user_data_state.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';

class UserDataRepository {

static  Future<UserDataState> getData(Dio dio) async {
    try {
      final response = await dio.get('/get-data'); 
      final data = response.data;
      print("data:${data}");
      final regions = getRegions(data['regions']);
      final districts = getDistricts(data['districts']);
      final carbrands = getCarBrands(data['makes']);
      final autoModels = getAutoModels(data['models']);
      final carclasses = getClasses(data['classes']);
      final userData = UserDataState(
        regions: regions,
        districts: districts,
        carBrands: carbrands,
        carModels: autoModels,
        classes: carclasses,
        status: UserDataStatus.loaded,
      );
      print("success");
return userData;
    } on DioException catch (e) {
      print("getData err: ${e.message}");
      rethrow;
     
    }
  }
}
