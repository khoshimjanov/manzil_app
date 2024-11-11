import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:manzil/auth/domain/role_model.dart';
import 'package:manzil/core/domain/car_data_model.dart';
import 'package:manzil/core/domain/district_model.dart';
import 'package:manzil/core/domain/gender_model.dart';
import 'package:manzil/core/domain/region_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
@HiveType(typeId: 0)
class UserModel with _$UserModel  {
  const factory UserModel({
    @HiveField(0) required int type,
    @HiveField(1) required RegionModel region,
    @HiveField(2) required DistrictModel district,
    @HiveField(3) required Role role,
    @HiveField(4) CarDataModel? carmodel,
    @HiveField(5) required Gender gender,
    @HiveField(6) required String name,
    @HiveField(7) required String surname,
    @HiveField(8) required DateTime birthday,
    @HiveField(9) required String phoneNumber,
    @HiveField(10) required String id,
    @HiveField(11)  String? code,
  }) = _UserModel;
  factory UserModel.initial() => UserModel(
        district: const DistrictModel(id: 0, name: ''),
        region: const RegionModel(id: 0, name: ''),
        birthday: DateTime(0),
        role: Role.passenger,
        name: '',
        surname: '',
        phoneNumber: '',
        gender: Gender.male,
        type: 0,
        id: '5',
        
      );
}
