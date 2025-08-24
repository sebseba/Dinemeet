// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchPreferencesImpl _$$MatchPreferencesImplFromJson(
  Map<String, dynamic> json,
) => _$MatchPreferencesImpl(
  uid: json['uid'] as String,
  mode: json['mode'] as String? ?? '1v1',
  ageRangeMin: (json['ageRangeMin'] as num?)?.toInt(),
  ageRangeMax: (json['ageRangeMax'] as num?)?.toInt(),
  genderPreference: json['genderPreference'] as String? ?? 'any',
  mustHaveInterests:
      (json['mustHaveInterests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  city: json['city'] as String?,
  cityRadiusKm: (json['cityRadiusKm'] as num?)?.toInt() ?? 10,
  strictness: (json['strictness'] as num?)?.toDouble() ?? 0.5,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$MatchPreferencesImplToJson(
  _$MatchPreferencesImpl instance,
) => <String, dynamic>{
  'uid': instance.uid,
  'mode': instance.mode,
  'ageRangeMin': instance.ageRangeMin,
  'ageRangeMax': instance.ageRangeMax,
  'genderPreference': instance.genderPreference,
  'mustHaveInterests': instance.mustHaveInterests,
  'city': instance.city,
  'cityRadiusKm': instance.cityRadiusKm,
  'strictness': instance.strictness,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
