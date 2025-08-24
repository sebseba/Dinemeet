// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurveyImpl _$$SurveyImplFromJson(Map<String, dynamic> json) => _$SurveyImpl(
  surveyId: json['surveyId'] as String,
  groupId: json['groupId'] as String,
  resId: json['resId'] as String,
  respondentUid: json['respondentUid'] as String,
  rating: (json['rating'] as num).toInt(),
  chemistry: (json['chemistry'] as num).toInt(),
  wouldMeetAgain: json['wouldMeetAgain'] as bool,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  feedback: json['feedback'] as String?,
  submittedAt: json['submittedAt'] == null
      ? null
      : DateTime.parse(json['submittedAt'] as String),
);

Map<String, dynamic> _$$SurveyImplToJson(_$SurveyImpl instance) =>
    <String, dynamic>{
      'surveyId': instance.surveyId,
      'groupId': instance.groupId,
      'resId': instance.resId,
      'respondentUid': instance.respondentUid,
      'rating': instance.rating,
      'chemistry': instance.chemistry,
      'wouldMeetAgain': instance.wouldMeetAgain,
      'tags': instance.tags,
      'feedback': instance.feedback,
      'submittedAt': instance.submittedAt?.toIso8601String(),
    };
