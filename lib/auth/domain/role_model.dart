import 'package:hive/hive.dart';
part 'role_model.g.dart';
@HiveType(typeId: 3)
enum Role {
  @HiveField(0)
  passenger,
  @HiveField(1)
  driver
}
