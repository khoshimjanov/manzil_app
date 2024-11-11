// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_brand_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CarBrandModelAdapter extends TypeAdapter<CarBrandModel> {
  @override
  final int typeId = 6;

  @override
  CarBrandModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CarBrandModel(
      id: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CarBrandModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CarBrandModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarBrandModelImpl _$$CarBrandModelImplFromJson(Map<String, dynamic> json) =>
    _$CarBrandModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name_uz'] as String? ?? '',
    );

Map<String, dynamic> _$$CarBrandModelImplToJson(_$CarBrandModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_uz': instance.name,
    };
