// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final int typeId = 0;

  @override
  UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModel(
      type: fields[0] as int,
      region: fields[1] as RegionModel,
      district: fields[2] as DistrictModel,
      role: fields[3] as Role,
      carmodel: fields[4] as CarDataModel?,
      gender: fields[5] as Gender,
      name: fields[6] as String,
      surname: fields[7] as String,
      birthday: fields[8] as DateTime,
      phoneNumber: fields[9] as String,
      id: fields[10] as String,
      code: fields[11] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.region)
      ..writeByte(2)
      ..write(obj.district)
      ..writeByte(3)
      ..write(obj.role)
      ..writeByte(4)
      ..write(obj.carmodel)
      ..writeByte(5)
      ..write(obj.gender)
      ..writeByte(6)
      ..write(obj.name)
      ..writeByte(7)
      ..write(obj.surname)
      ..writeByte(8)
      ..write(obj.birthday)
      ..writeByte(9)
      ..write(obj.phoneNumber)
      ..writeByte(10)
      ..write(obj.id)
      ..writeByte(11)
      ..write(obj.code);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
