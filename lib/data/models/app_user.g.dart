// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUserImpl _$$AppUserImplFromJson(Map<String, dynamic> json) =>
    _$AppUserImpl(
      uid: json['uid'] as String,
      displayName: json['displayName'] as String?,
      age: (json['age'] as num?)?.toInt(),
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      zodiac: json['zodiac'] as String?,
      gender: json['gender'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      city: json['city'] as String?,
      district: json['district'] as String?,
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lifestyle: json['lifestyle'] == null
          ? null
          : Lifestyle.fromJson(json['lifestyle'] as Map<String, dynamic>),
      availability: json['availability'] == null
          ? null
          : Availability.fromJson(json['availability'] as Map<String, dynamic>),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      bio: json['bio'] as String?,
      ratings: json['ratings'] == null
          ? null
          : Ratings.fromJson(json['ratings'] as Map<String, dynamic>),
      flags: json['flags'] == null
          ? null
          : Flags.fromJson(json['flags'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$AppUserImplToJson(_$AppUserImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'displayName': instance.displayName,
      'age': instance.age,
      'birthDate': instance.birthDate?.toIso8601String(),
      'zodiac': instance.zodiac,
      'gender': instance.gender,
      'interests': instance.interests,
      'city': instance.city,
      'district': instance.district,
      'languages': instance.languages,
      'lifestyle': instance.lifestyle,
      'availability': instance.availability,
      'photos': instance.photos,
      'bio': instance.bio,
      'ratings': instance.ratings,
      'flags': instance.flags,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$LifestyleImpl _$$LifestyleImplFromJson(Map<String, dynamic> json) =>
    _$LifestyleImpl(
      smoke: json['smoke'] as bool? ?? false,
      alcohol: json['alcohol'] as String? ?? 'none',
      diet: json['diet'] as String? ?? 'none',
    );

Map<String, dynamic> _$$LifestyleImplToJson(_$LifestyleImpl instance) =>
    <String, dynamic>{
      'smoke': instance.smoke,
      'alcohol': instance.alcohol,
      'diet': instance.diet,
    };

_$AvailabilityImpl _$$AvailabilityImplFromJson(Map<String, dynamic> json) =>
    _$AvailabilityImpl(
      days:
          (json['days'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      timeSlots:
          (json['timeSlots'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AvailabilityImplToJson(_$AvailabilityImpl instance) =>
    <String, dynamic>{'days': instance.days, 'timeSlots': instance.timeSlots};

_$RatingsImpl _$$RatingsImplFromJson(Map<String, dynamic> json) =>
    _$RatingsImpl(
      avg: (json['avg'] as num?)?.toDouble() ?? 0.0,
      count: (json['count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$RatingsImplToJson(_$RatingsImpl instance) =>
    <String, dynamic>{'avg': instance.avg, 'count': instance.count};

_$FlagsImpl _$$FlagsImplFromJson(Map<String, dynamic> json) => _$FlagsImpl(
  verified: json['verified'] as bool? ?? false,
  banned: json['banned'] as bool? ?? false,
);

Map<String, dynamic> _$$FlagsImplToJson(_$FlagsImpl instance) =>
    <String, dynamic>{'verified': instance.verified, 'banned': instance.banned};
