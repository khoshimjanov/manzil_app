// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CarDataModelAdapter extends TypeAdapter<CarDataModel> {
  @override
  final int typeId = 8;

  @override
  CarDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CarDataModel(
      carClass: fields[0] as CarClassModel,
      carBrand: fields[1] as CarBrandModel,
      model: fields[2] as CarModel,
      plateNumber: fields[3] as String,
      licenseNumber: fields[4] as String,
      carYear: fields[5] as int,
      driverExperience: fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CarDataModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.carClass)
      ..writeByte(1)
      ..write(obj.carBrand)
      ..writeByte(2)
      ..write(obj.model)
      ..writeByte(3)
      ..write(obj.plateNumber)
      ..writeByte(4)
      ..write(obj.licenseNumber)
      ..writeByte(5)
      ..write(obj.carYear)
      ..writeByte(6)
      ..write(obj.driverExperience);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CarDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarDataModelImpl _$$CarDataModelImplFromJson(Map<String, dynamic> json) =>
    _$CarDataModelImpl(
      carClass:
          CarClassModel.fromJson(json['carClass'] as Map<String, dynamic>),
      carBrand:
          CarBrandModel.fromJson(json['carBrand'] as Map<String, dynamic>),
      model: CarModel.fromJson(json['model'] as Map<String, dynamic>),
      plateNumber: json['plateNumber'] as String,
      licenseNumber: json['licenseNumber'] as String,
      carYear: (json['carYear'] as num).toInt(),
      driverExperience: (json['driverExperience'] as num).toInt(),
    );

Map<String, dynamic> _$$CarDataModelImplToJson(_$CarDataModelImpl instance) =>
    <String, dynamic>{
      'carClass': instance.carClass,
      'carBrand': instance.carBrand,
      'model': instance.model,
      'plateNumber': instance.plateNumber,
      'licenseNumber': instance.licenseNumber,
      'carYear': instance.carYear,
      'driverExperience': instance.driverExperience,
    };
