// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportImpl _$$ReportImplFromJson(Map<String, dynamic> json) => _$ReportImpl(
  reportId: json['reportId'] as String,
  reportedUid: json['reportedUid'] as String,
  reporterUid: json['reporterUid'] as String,
  groupId: json['groupId'] as String?,
  reason: json['reason'] as String,
  details: json['details'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$ReportImplToJson(_$ReportImpl instance) =>
    <String, dynamic>{
      'reportId': instance.reportId,
      'reportedUid': instance.reportedUid,
      'reporterUid': instance.reporterUid,
      'groupId': instance.groupId,
      'reason': instance.reason,
      'details': instance.details,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
