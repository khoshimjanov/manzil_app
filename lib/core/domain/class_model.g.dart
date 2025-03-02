// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CarClassModelAdapter extends TypeAdapter<CarClassModel> {
  @override
  final int typeId = 5;

  @override
  CarClassModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CarClassModel(
      id: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CarClassModel obj) {
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
      other is CarClassModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarClassModelImpl _$$CarClassModelImplFromJson(Map<String, dynamic> json) =>
    _$CarClassModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name_uz'] as String? ?? '',
    );

Map<String, dynamic> _$$CarClassModelImplToJson(_$CarClassModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_uz': instance.name,
    };
