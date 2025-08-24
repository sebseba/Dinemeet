// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReservationImpl _$$ReservationImplFromJson(Map<String, dynamic> json) =>
    _$ReservationImpl(
      resId: json['resId'] as String,
      venueName: json['venueName'] as String,
      venueArea: json['venueArea'] as String,
      date: DateTime.parse(json['date'] as String),
      time: json['time'] as String,
      groupId: json['groupId'] as String,
      notes: json['notes'] as String?,
      status: json['status'] as String? ?? 'proposed',
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ReservationImplToJson(_$ReservationImpl instance) =>
    <String, dynamic>{
      'resId': instance.resId,
      'venueName': instance.venueName,
      'venueArea': instance.venueArea,
      'date': instance.date.toIso8601String(),
      'time': instance.time,
      'groupId': instance.groupId,
      'notes': instance.notes,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
