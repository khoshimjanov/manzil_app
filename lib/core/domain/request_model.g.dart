// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestModelImpl _$$RequestModelImplFromJson(Map<String, dynamic> json) =>
    _$RequestModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      surname: json['last_name'] as String? ?? '',
      phone: (json['phone'] as num?)?.toInt() ?? 0,
      rating: (json['rating'] as num?)?.toInt() ?? 0,
      cancelled: json['cancelled_at'] as String?,
      accepted: json['accepted_at'] as String?,
    );

Map<String, dynamic> _$$RequestModelImplToJson(_$RequestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'last_name': instance.surname,
      'phone': instance.phone,
      'rating': instance.rating,
      'cancelled_at': instance.cancelled,
      'accepted_at': instance.accepted,
    };
