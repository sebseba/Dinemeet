// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MatchPreferences _$MatchPreferencesFromJson(Map<String, dynamic> json) {
  return _MatchPreferences.fromJson(json);
}

/// @nodoc
mixin _$MatchPreferences {
  String get uid => throw _privateConstructorUsedError;
  String get mode => throw _privateConstructorUsedError; // "1v1", "2v2", "3v3"
  int? get ageRangeMin => throw _privateConstructorUsedError;
  int? get ageRangeMax => throw _privateConstructorUsedError;
  String get genderPreference =>
      throw _privateConstructorUsedError; // "any", "mixed", "female", "male"
  List<String> get mustHaveInterests => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  int get cityRadiusKm => throw _privateConstructorUsedError;
  double get strictness => throw _privateConstructorUsedError; // 0.0 - 1.0
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this MatchPreferences to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MatchPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchPreferencesCopyWith<MatchPreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchPreferencesCopyWith<$Res> {
  factory $MatchPreferencesCopyWith(
    MatchPreferences value,
    $Res Function(MatchPreferences) then,
  ) = _$MatchPreferencesCopyWithImpl<$Res, MatchPreferences>;
  @useResult
  $Res call({
    String uid,
    String mode,
    int? ageRangeMin,
    int? ageRangeMax,
    String genderPreference,
    List<String> mustHaveInterests,
    String? city,
    int cityRadiusKm,
    double strictness,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$MatchPreferencesCopyWithImpl<$Res, $Val extends MatchPreferences>
    implements $MatchPreferencesCopyWith<$Res> {
  _$MatchPreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? mode = null,
    Object? ageRangeMin = freezed,
    Object? ageRangeMax = freezed,
    Object? genderPreference = null,
    Object? mustHaveInterests = null,
    Object? city = freezed,
    Object? cityRadiusKm = null,
    Object? strictness = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            uid: null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                      as String,
            mode: null == mode
                ? _value.mode
                : mode // ignore: cast_nullable_to_non_nullable
                      as String,
            ageRangeMin: freezed == ageRangeMin
                ? _value.ageRangeMin
                : ageRangeMin // ignore: cast_nullable_to_non_nullable
                      as int?,
            ageRangeMax: freezed == ageRangeMax
                ? _value.ageRangeMax
                : ageRangeMax // ignore: cast_nullable_to_non_nullable
                      as int?,
            genderPreference: null == genderPreference
                ? _value.genderPreference
                : genderPreference // ignore: cast_nullable_to_non_nullable
                      as String,
            mustHaveInterests: null == mustHaveInterests
                ? _value.mustHaveInterests
                : mustHaveInterests // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            city: freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String?,
            cityRadiusKm: null == cityRadiusKm
                ? _value.cityRadiusKm
                : cityRadiusKm // ignore: cast_nullable_to_non_nullable
                      as int,
            strictness: null == strictness
                ? _value.strictness
                : strictness // ignore: cast_nullable_to_non_nullable
                      as double,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MatchPreferencesImplCopyWith<$Res>
    implements $MatchPreferencesCopyWith<$Res> {
  factory _$$MatchPreferencesImplCopyWith(
    _$MatchPreferencesImpl value,
    $Res Function(_$MatchPreferencesImpl) then,
  ) = __$$MatchPreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String uid,
    String mode,
    int? ageRangeMin,
    int? ageRangeMax,
    String genderPreference,
    List<String> mustHaveInterests,
    String? city,
    int cityRadiusKm,
    double strictness,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$MatchPreferencesImplCopyWithImpl<$Res>
    extends _$MatchPreferencesCopyWithImpl<$Res, _$MatchPreferencesImpl>
    implements _$$MatchPreferencesImplCopyWith<$Res> {
  __$$MatchPreferencesImplCopyWithImpl(
    _$MatchPreferencesImpl _value,
    $Res Function(_$MatchPreferencesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MatchPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? mode = null,
    Object? ageRangeMin = freezed,
    Object? ageRangeMax = freezed,
    Object? genderPreference = null,
    Object? mustHaveInterests = null,
    Object? city = freezed,
    Object? cityRadiusKm = null,
    Object? strictness = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$MatchPreferencesImpl(
        uid: null == uid
            ? _value.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String,
        mode: null == mode
            ? _value.mode
            : mode // ignore: cast_nullable_to_non_nullable
                  as String,
        ageRangeMin: freezed == ageRangeMin
            ? _value.ageRangeMin
            : ageRangeMin // ignore: cast_nullable_to_non_nullable
                  as int?,
        ageRangeMax: freezed == ageRangeMax
            ? _value.ageRangeMax
            : ageRangeMax // ignore: cast_nullable_to_non_nullable
                  as int?,
        genderPreference: null == genderPreference
            ? _value.genderPreference
            : genderPreference // ignore: cast_nullable_to_non_nullable
                  as String,
        mustHaveInterests: null == mustHaveInterests
            ? _value._mustHaveInterests
            : mustHaveInterests // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        city: freezed == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String?,
        cityRadiusKm: null == cityRadiusKm
            ? _value.cityRadiusKm
            : cityRadiusKm // ignore: cast_nullable_to_non_nullable
                  as int,
        strictness: null == strictness
            ? _value.strictness
            : strictness // ignore: cast_nullable_to_non_nullable
                  as double,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchPreferencesImpl implements _MatchPreferences {
  const _$MatchPreferencesImpl({
    required this.uid,
    this.mode = '1v1',
    this.ageRangeMin,
    this.ageRangeMax,
    this.genderPreference = 'any',
    final List<String> mustHaveInterests = const [],
    this.city,
    this.cityRadiusKm = 10,
    this.strictness = 0.5,
    this.createdAt,
    this.updatedAt,
  }) : _mustHaveInterests = mustHaveInterests;

  factory _$MatchPreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchPreferencesImplFromJson(json);

  @override
  final String uid;
  @override
  @JsonKey()
  final String mode;
  // "1v1", "2v2", "3v3"
  @override
  final int? ageRangeMin;
  @override
  final int? ageRangeMax;
  @override
  @JsonKey()
  final String genderPreference;
  // "any", "mixed", "female", "male"
  final List<String> _mustHaveInterests;
  // "any", "mixed", "female", "male"
  @override
  @JsonKey()
  List<String> get mustHaveInterests {
    if (_mustHaveInterests is EqualUnmodifiableListView)
      return _mustHaveInterests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mustHaveInterests);
  }

  @override
  final String? city;
  @override
  @JsonKey()
  final int cityRadiusKm;
  @override
  @JsonKey()
  final double strictness;
  // 0.0 - 1.0
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'MatchPreferences(uid: $uid, mode: $mode, ageRangeMin: $ageRangeMin, ageRangeMax: $ageRangeMax, genderPreference: $genderPreference, mustHaveInterests: $mustHaveInterests, city: $city, cityRadiusKm: $cityRadiusKm, strictness: $strictness, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchPreferencesImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.ageRangeMin, ageRangeMin) ||
                other.ageRangeMin == ageRangeMin) &&
            (identical(other.ageRangeMax, ageRangeMax) ||
                other.ageRangeMax == ageRangeMax) &&
            (identical(other.genderPreference, genderPreference) ||
                other.genderPreference == genderPreference) &&
            const DeepCollectionEquality().equals(
              other._mustHaveInterests,
              _mustHaveInterests,
            ) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.cityRadiusKm, cityRadiusKm) ||
                other.cityRadiusKm == cityRadiusKm) &&
            (identical(other.strictness, strictness) ||
                other.strictness == strictness) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    uid,
    mode,
    ageRangeMin,
    ageRangeMax,
    genderPreference,
    const DeepCollectionEquality().hash(_mustHaveInterests),
    city,
    cityRadiusKm,
    strictness,
    createdAt,
    updatedAt,
  );

  /// Create a copy of MatchPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchPreferencesImplCopyWith<_$MatchPreferencesImpl> get copyWith =>
      __$$MatchPreferencesImplCopyWithImpl<_$MatchPreferencesImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchPreferencesImplToJson(this);
  }
}

abstract class _MatchPreferences implements MatchPreferences {
  const factory _MatchPreferences({
    required final String uid,
    final String mode,
    final int? ageRangeMin,
    final int? ageRangeMax,
    final String genderPreference,
    final List<String> mustHaveInterests,
    final String? city,
    final int cityRadiusKm,
    final double strictness,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$MatchPreferencesImpl;

  factory _MatchPreferences.fromJson(Map<String, dynamic> json) =
      _$MatchPreferencesImpl.fromJson;

  @override
  String get uid;
  @override
  String get mode; // "1v1", "2v2", "3v3"
  @override
  int? get ageRangeMin;
  @override
  int? get ageRangeMax;
  @override
  String get genderPreference; // "any", "mixed", "female", "male"
  @override
  List<String> get mustHaveInterests;
  @override
  String? get city;
  @override
  int get cityRadiusKm;
  @override
  double get strictness; // 0.0 - 1.0
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of MatchPreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchPreferencesImplCopyWith<_$MatchPreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
