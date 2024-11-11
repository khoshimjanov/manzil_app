import 'package:hive/hive.dart';
part   'gender_model.g.dart';

@HiveType(typeId: 4)
enum Gender {
  @HiveField(0)
  male,
  @HiveField(1)
  female
}
