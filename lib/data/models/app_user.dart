import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String uid,
    String? displayName,
    int? age,
    DateTime? birthDate,
    String? zodiac, // "aries", "taurus", ...
    String? gender, // "male","female","nonbinary","prefer_not"
    List<String>? interests,
    String? city,
    String? district,
    List<String>? languages,
    Lifestyle? lifestyle,
    Availability? availability,
    List<String>? photos,
    String? bio,
    Ratings? ratings,
    Flags? flags,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) => _$AppUserFromJson(json);
}

@freezed
class Lifestyle with _$Lifestyle {
  const factory Lifestyle({
    @Default(false) bool smoke,
    @Default('none') String alcohol, // "none", "social", "yes"
    @Default('none') String diet, // "none", "vegan", "vegetarian", "halal"
  }) = _Lifestyle;

  factory Lifestyle.fromJson(Map<String, dynamic> json) => _$LifestyleFromJson(json);
}

@freezed
class Availability with _$Availability {
  const factory Availability({
    @Default([]) List<String> days, // ["monday", "tuesday", ...]
    @Default([]) List<String> timeSlots, // ["18:00-20:00", "20:00-22:00", ...]
  }) = _Availability;

  factory Availability.fromJson(Map<String, dynamic> json) => _$AvailabilityFromJson(json);
}

@freezed
class Ratings with _$Ratings {
  const factory Ratings({
    @Default(0.0) double avg,
    @Default(0) int count,
  }) = _Ratings;

  factory Ratings.fromJson(Map<String, dynamic> json) => _$RatingsFromJson(json);
}

@freezed
class Flags with _$Flags {
  const factory Flags({
    @Default(false) bool verified,
    @Default(false) bool banned,
  }) = _Flags;

  factory Flags.fromJson(Map<String, dynamic> json) => _$FlagsFromJson(json);
}
