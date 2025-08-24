import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_preferences.freezed.dart';
part 'match_preferences.g.dart';

@freezed
class MatchPreferences with _$MatchPreferences {
  const factory MatchPreferences({
    required String uid,
    @Default('1v1') String mode, // "1v1", "2v2", "3v3"
    int? ageRangeMin,
    int? ageRangeMax,
    @Default('any') String genderPreference, // "any", "mixed", "female", "male"
    @Default([]) List<String> mustHaveInterests,
    String? city,
    @Default(10) int cityRadiusKm,
    @Default(0.5) double strictness, // 0.0 - 1.0
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _MatchPreferences;

  factory MatchPreferences.fromJson(Map<String, dynamic> json) => _$MatchPreferencesFromJson(json);
}
