// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return _AppUser.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  String get uid => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  DateTime? get birthDate => throw _privateConstructorUsedError;
  String? get zodiac =>
      throw _privateConstructorUsedError; // "aries", "taurus", ...
  String? get gender =>
      throw _privateConstructorUsedError; // "male","female","nonbinary","prefer_not"
  List<String>? get interests => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  List<String>? get languages => throw _privateConstructorUsedError;
  Lifestyle? get lifestyle => throw _privateConstructorUsedError;
  Availability? get availability => throw _privateConstructorUsedError;
  List<String>? get photos => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  Ratings? get ratings => throw _privateConstructorUsedError;
  Flags? get flags => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AppUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call({
    String uid,
    String? displayName,
    int? age,
    DateTime? birthDate,
    String? zodiac,
    String? gender,
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
  });

  $LifestyleCopyWith<$Res>? get lifestyle;
  $AvailabilityCopyWith<$Res>? get availability;
  $RatingsCopyWith<$Res>? get ratings;
  $FlagsCopyWith<$Res>? get flags;
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? displayName = freezed,
    Object? age = freezed,
    Object? birthDate = freezed,
    Object? zodiac = freezed,
    Object? gender = freezed,
    Object? interests = freezed,
    Object? city = freezed,
    Object? district = freezed,
    Object? languages = freezed,
    Object? lifestyle = freezed,
    Object? availability = freezed,
    Object? photos = freezed,
    Object? bio = freezed,
    Object? ratings = freezed,
    Object? flags = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            uid: null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                      as String,
            displayName: freezed == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                      as String?,
            age: freezed == age
                ? _value.age
                : age // ignore: cast_nullable_to_non_nullable
                      as int?,
            birthDate: freezed == birthDate
                ? _value.birthDate
                : birthDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            zodiac: freezed == zodiac
                ? _value.zodiac
                : zodiac // ignore: cast_nullable_to_non_nullable
                      as String?,
            gender: freezed == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as String?,
            interests: freezed == interests
                ? _value.interests
                : interests // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            city: freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String?,
            district: freezed == district
                ? _value.district
                : district // ignore: cast_nullable_to_non_nullable
                      as String?,
            languages: freezed == languages
                ? _value.languages
                : languages // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            lifestyle: freezed == lifestyle
                ? _value.lifestyle
                : lifestyle // ignore: cast_nullable_to_non_nullable
                      as Lifestyle?,
            availability: freezed == availability
                ? _value.availability
                : availability // ignore: cast_nullable_to_non_nullable
                      as Availability?,
            photos: freezed == photos
                ? _value.photos
                : photos // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            bio: freezed == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                      as String?,
            ratings: freezed == ratings
                ? _value.ratings
                : ratings // ignore: cast_nullable_to_non_nullable
                      as Ratings?,
            flags: freezed == flags
                ? _value.flags
                : flags // ignore: cast_nullable_to_non_nullable
                      as Flags?,
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

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LifestyleCopyWith<$Res>? get lifestyle {
    if (_value.lifestyle == null) {
      return null;
    }

    return $LifestyleCopyWith<$Res>(_value.lifestyle!, (value) {
      return _then(_value.copyWith(lifestyle: value) as $Val);
    });
  }

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AvailabilityCopyWith<$Res>? get availability {
    if (_value.availability == null) {
      return null;
    }

    return $AvailabilityCopyWith<$Res>(_value.availability!, (value) {
      return _then(_value.copyWith(availability: value) as $Val);
    });
  }

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatingsCopyWith<$Res>? get ratings {
    if (_value.ratings == null) {
      return null;
    }

    return $RatingsCopyWith<$Res>(_value.ratings!, (value) {
      return _then(_value.copyWith(ratings: value) as $Val);
    });
  }

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlagsCopyWith<$Res>? get flags {
    if (_value.flags == null) {
      return null;
    }

    return $FlagsCopyWith<$Res>(_value.flags!, (value) {
      return _then(_value.copyWith(flags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppUserImplCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$AppUserImplCopyWith(
    _$AppUserImpl value,
    $Res Function(_$AppUserImpl) then,
  ) = __$$AppUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String uid,
    String? displayName,
    int? age,
    DateTime? birthDate,
    String? zodiac,
    String? gender,
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
  });

  @override
  $LifestyleCopyWith<$Res>? get lifestyle;
  @override
  $AvailabilityCopyWith<$Res>? get availability;
  @override
  $RatingsCopyWith<$Res>? get ratings;
  @override
  $FlagsCopyWith<$Res>? get flags;
}

/// @nodoc
class __$$AppUserImplCopyWithImpl<$Res>
    extends _$AppUserCopyWithImpl<$Res, _$AppUserImpl>
    implements _$$AppUserImplCopyWith<$Res> {
  __$$AppUserImplCopyWithImpl(
    _$AppUserImpl _value,
    $Res Function(_$AppUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? displayName = freezed,
    Object? age = freezed,
    Object? birthDate = freezed,
    Object? zodiac = freezed,
    Object? gender = freezed,
    Object? interests = freezed,
    Object? city = freezed,
    Object? district = freezed,
    Object? languages = freezed,
    Object? lifestyle = freezed,
    Object? availability = freezed,
    Object? photos = freezed,
    Object? bio = freezed,
    Object? ratings = freezed,
    Object? flags = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$AppUserImpl(
        uid: null == uid
            ? _value.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String,
        displayName: freezed == displayName
            ? _value.displayName
            : displayName // ignore: cast_nullable_to_non_nullable
                  as String?,
        age: freezed == age
            ? _value.age
            : age // ignore: cast_nullable_to_non_nullable
                  as int?,
        birthDate: freezed == birthDate
            ? _value.birthDate
            : birthDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        zodiac: freezed == zodiac
            ? _value.zodiac
            : zodiac // ignore: cast_nullable_to_non_nullable
                  as String?,
        gender: freezed == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as String?,
        interests: freezed == interests
            ? _value._interests
            : interests // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        city: freezed == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String?,
        district: freezed == district
            ? _value.district
            : district // ignore: cast_nullable_to_non_nullable
                  as String?,
        languages: freezed == languages
            ? _value._languages
            : languages // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        lifestyle: freezed == lifestyle
            ? _value.lifestyle
            : lifestyle // ignore: cast_nullable_to_non_nullable
                  as Lifestyle?,
        availability: freezed == availability
            ? _value.availability
            : availability // ignore: cast_nullable_to_non_nullable
                  as Availability?,
        photos: freezed == photos
            ? _value._photos
            : photos // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        bio: freezed == bio
            ? _value.bio
            : bio // ignore: cast_nullable_to_non_nullable
                  as String?,
        ratings: freezed == ratings
            ? _value.ratings
            : ratings // ignore: cast_nullable_to_non_nullable
                  as Ratings?,
        flags: freezed == flags
            ? _value.flags
            : flags // ignore: cast_nullable_to_non_nullable
                  as Flags?,
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
class _$AppUserImpl implements _AppUser {
  const _$AppUserImpl({
    required this.uid,
    this.displayName,
    this.age,
    this.birthDate,
    this.zodiac,
    this.gender,
    final List<String>? interests,
    this.city,
    this.district,
    final List<String>? languages,
    this.lifestyle,
    this.availability,
    final List<String>? photos,
    this.bio,
    this.ratings,
    this.flags,
    this.createdAt,
    this.updatedAt,
  }) : _interests = interests,
       _languages = languages,
       _photos = photos;

  factory _$AppUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppUserImplFromJson(json);

  @override
  final String uid;
  @override
  final String? displayName;
  @override
  final int? age;
  @override
  final DateTime? birthDate;
  @override
  final String? zodiac;
  // "aries", "taurus", ...
  @override
  final String? gender;
  // "male","female","nonbinary","prefer_not"
  final List<String>? _interests;
  // "male","female","nonbinary","prefer_not"
  @override
  List<String>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? city;
  @override
  final String? district;
  final List<String>? _languages;
  @override
  List<String>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Lifestyle? lifestyle;
  @override
  final Availability? availability;
  final List<String>? _photos;
  @override
  List<String>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? bio;
  @override
  final Ratings? ratings;
  @override
  final Flags? flags;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'AppUser(uid: $uid, displayName: $displayName, age: $age, birthDate: $birthDate, zodiac: $zodiac, gender: $gender, interests: $interests, city: $city, district: $district, languages: $languages, lifestyle: $lifestyle, availability: $availability, photos: $photos, bio: $bio, ratings: $ratings, flags: $flags, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.zodiac, zodiac) || other.zodiac == zodiac) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            const DeepCollectionEquality().equals(
              other._interests,
              _interests,
            ) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.district, district) ||
                other.district == district) &&
            const DeepCollectionEquality().equals(
              other._languages,
              _languages,
            ) &&
            (identical(other.lifestyle, lifestyle) ||
                other.lifestyle == lifestyle) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.ratings, ratings) || other.ratings == ratings) &&
            (identical(other.flags, flags) || other.flags == flags) &&
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
    displayName,
    age,
    birthDate,
    zodiac,
    gender,
    const DeepCollectionEquality().hash(_interests),
    city,
    district,
    const DeepCollectionEquality().hash(_languages),
    lifestyle,
    availability,
    const DeepCollectionEquality().hash(_photos),
    bio,
    ratings,
    flags,
    createdAt,
    updatedAt,
  );

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserImplCopyWith<_$AppUserImpl> get copyWith =>
      __$$AppUserImplCopyWithImpl<_$AppUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUserImplToJson(this);
  }
}

abstract class _AppUser implements AppUser {
  const factory _AppUser({
    required final String uid,
    final String? displayName,
    final int? age,
    final DateTime? birthDate,
    final String? zodiac,
    final String? gender,
    final List<String>? interests,
    final String? city,
    final String? district,
    final List<String>? languages,
    final Lifestyle? lifestyle,
    final Availability? availability,
    final List<String>? photos,
    final String? bio,
    final Ratings? ratings,
    final Flags? flags,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$AppUserImpl;

  factory _AppUser.fromJson(Map<String, dynamic> json) = _$AppUserImpl.fromJson;

  @override
  String get uid;
  @override
  String? get displayName;
  @override
  int? get age;
  @override
  DateTime? get birthDate;
  @override
  String? get zodiac; // "aries", "taurus", ...
  @override
  String? get gender; // "male","female","nonbinary","prefer_not"
  @override
  List<String>? get interests;
  @override
  String? get city;
  @override
  String? get district;
  @override
  List<String>? get languages;
  @override
  Lifestyle? get lifestyle;
  @override
  Availability? get availability;
  @override
  List<String>? get photos;
  @override
  String? get bio;
  @override
  Ratings? get ratings;
  @override
  Flags? get flags;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppUserImplCopyWith<_$AppUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Lifestyle _$LifestyleFromJson(Map<String, dynamic> json) {
  return _Lifestyle.fromJson(json);
}

/// @nodoc
mixin _$Lifestyle {
  bool get smoke => throw _privateConstructorUsedError;
  String get alcohol =>
      throw _privateConstructorUsedError; // "none", "social", "yes"
  String get diet => throw _privateConstructorUsedError;

  /// Serializes this Lifestyle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Lifestyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LifestyleCopyWith<Lifestyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LifestyleCopyWith<$Res> {
  factory $LifestyleCopyWith(Lifestyle value, $Res Function(Lifestyle) then) =
      _$LifestyleCopyWithImpl<$Res, Lifestyle>;
  @useResult
  $Res call({bool smoke, String alcohol, String diet});
}

/// @nodoc
class _$LifestyleCopyWithImpl<$Res, $Val extends Lifestyle>
    implements $LifestyleCopyWith<$Res> {
  _$LifestyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Lifestyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smoke = null,
    Object? alcohol = null,
    Object? diet = null,
  }) {
    return _then(
      _value.copyWith(
            smoke: null == smoke
                ? _value.smoke
                : smoke // ignore: cast_nullable_to_non_nullable
                      as bool,
            alcohol: null == alcohol
                ? _value.alcohol
                : alcohol // ignore: cast_nullable_to_non_nullable
                      as String,
            diet: null == diet
                ? _value.diet
                : diet // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LifestyleImplCopyWith<$Res>
    implements $LifestyleCopyWith<$Res> {
  factory _$$LifestyleImplCopyWith(
    _$LifestyleImpl value,
    $Res Function(_$LifestyleImpl) then,
  ) = __$$LifestyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool smoke, String alcohol, String diet});
}

/// @nodoc
class __$$LifestyleImplCopyWithImpl<$Res>
    extends _$LifestyleCopyWithImpl<$Res, _$LifestyleImpl>
    implements _$$LifestyleImplCopyWith<$Res> {
  __$$LifestyleImplCopyWithImpl(
    _$LifestyleImpl _value,
    $Res Function(_$LifestyleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Lifestyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smoke = null,
    Object? alcohol = null,
    Object? diet = null,
  }) {
    return _then(
      _$LifestyleImpl(
        smoke: null == smoke
            ? _value.smoke
            : smoke // ignore: cast_nullable_to_non_nullable
                  as bool,
        alcohol: null == alcohol
            ? _value.alcohol
            : alcohol // ignore: cast_nullable_to_non_nullable
                  as String,
        diet: null == diet
            ? _value.diet
            : diet // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LifestyleImpl implements _Lifestyle {
  const _$LifestyleImpl({
    this.smoke = false,
    this.alcohol = 'none',
    this.diet = 'none',
  });

  factory _$LifestyleImpl.fromJson(Map<String, dynamic> json) =>
      _$$LifestyleImplFromJson(json);

  @override
  @JsonKey()
  final bool smoke;
  @override
  @JsonKey()
  final String alcohol;
  // "none", "social", "yes"
  @override
  @JsonKey()
  final String diet;

  @override
  String toString() {
    return 'Lifestyle(smoke: $smoke, alcohol: $alcohol, diet: $diet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LifestyleImpl &&
            (identical(other.smoke, smoke) || other.smoke == smoke) &&
            (identical(other.alcohol, alcohol) || other.alcohol == alcohol) &&
            (identical(other.diet, diet) || other.diet == diet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, smoke, alcohol, diet);

  /// Create a copy of Lifestyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LifestyleImplCopyWith<_$LifestyleImpl> get copyWith =>
      __$$LifestyleImplCopyWithImpl<_$LifestyleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LifestyleImplToJson(this);
  }
}

abstract class _Lifestyle implements Lifestyle {
  const factory _Lifestyle({
    final bool smoke,
    final String alcohol,
    final String diet,
  }) = _$LifestyleImpl;

  factory _Lifestyle.fromJson(Map<String, dynamic> json) =
      _$LifestyleImpl.fromJson;

  @override
  bool get smoke;
  @override
  String get alcohol; // "none", "social", "yes"
  @override
  String get diet;

  /// Create a copy of Lifestyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LifestyleImplCopyWith<_$LifestyleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Availability _$AvailabilityFromJson(Map<String, dynamic> json) {
  return _Availability.fromJson(json);
}

/// @nodoc
mixin _$Availability {
  List<String> get days =>
      throw _privateConstructorUsedError; // ["monday", "tuesday", ...]
  List<String> get timeSlots => throw _privateConstructorUsedError;

  /// Serializes this Availability to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Availability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailabilityCopyWith<Availability> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityCopyWith<$Res> {
  factory $AvailabilityCopyWith(
    Availability value,
    $Res Function(Availability) then,
  ) = _$AvailabilityCopyWithImpl<$Res, Availability>;
  @useResult
  $Res call({List<String> days, List<String> timeSlots});
}

/// @nodoc
class _$AvailabilityCopyWithImpl<$Res, $Val extends Availability>
    implements $AvailabilityCopyWith<$Res> {
  _$AvailabilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Availability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? days = null, Object? timeSlots = null}) {
    return _then(
      _value.copyWith(
            days: null == days
                ? _value.days
                : days // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            timeSlots: null == timeSlots
                ? _value.timeSlots
                : timeSlots // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AvailabilityImplCopyWith<$Res>
    implements $AvailabilityCopyWith<$Res> {
  factory _$$AvailabilityImplCopyWith(
    _$AvailabilityImpl value,
    $Res Function(_$AvailabilityImpl) then,
  ) = __$$AvailabilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> days, List<String> timeSlots});
}

/// @nodoc
class __$$AvailabilityImplCopyWithImpl<$Res>
    extends _$AvailabilityCopyWithImpl<$Res, _$AvailabilityImpl>
    implements _$$AvailabilityImplCopyWith<$Res> {
  __$$AvailabilityImplCopyWithImpl(
    _$AvailabilityImpl _value,
    $Res Function(_$AvailabilityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Availability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? days = null, Object? timeSlots = null}) {
    return _then(
      _$AvailabilityImpl(
        days: null == days
            ? _value._days
            : days // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        timeSlots: null == timeSlots
            ? _value._timeSlots
            : timeSlots // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityImpl implements _Availability {
  const _$AvailabilityImpl({
    final List<String> days = const [],
    final List<String> timeSlots = const [],
  }) : _days = days,
       _timeSlots = timeSlots;

  factory _$AvailabilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabilityImplFromJson(json);

  final List<String> _days;
  @override
  @JsonKey()
  List<String> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  // ["monday", "tuesday", ...]
  final List<String> _timeSlots;
  // ["monday", "tuesday", ...]
  @override
  @JsonKey()
  List<String> get timeSlots {
    if (_timeSlots is EqualUnmodifiableListView) return _timeSlots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeSlots);
  }

  @override
  String toString() {
    return 'Availability(days: $days, timeSlots: $timeSlots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityImpl &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            const DeepCollectionEquality().equals(
              other._timeSlots,
              _timeSlots,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_days),
    const DeepCollectionEquality().hash(_timeSlots),
  );

  /// Create a copy of Availability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityImplCopyWith<_$AvailabilityImpl> get copyWith =>
      __$$AvailabilityImplCopyWithImpl<_$AvailabilityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityImplToJson(this);
  }
}

abstract class _Availability implements Availability {
  const factory _Availability({
    final List<String> days,
    final List<String> timeSlots,
  }) = _$AvailabilityImpl;

  factory _Availability.fromJson(Map<String, dynamic> json) =
      _$AvailabilityImpl.fromJson;

  @override
  List<String> get days; // ["monday", "tuesday", ...]
  @override
  List<String> get timeSlots;

  /// Create a copy of Availability
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailabilityImplCopyWith<_$AvailabilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ratings _$RatingsFromJson(Map<String, dynamic> json) {
  return _Ratings.fromJson(json);
}

/// @nodoc
mixin _$Ratings {
  double get avg => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this Ratings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ratings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatingsCopyWith<Ratings> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingsCopyWith<$Res> {
  factory $RatingsCopyWith(Ratings value, $Res Function(Ratings) then) =
      _$RatingsCopyWithImpl<$Res, Ratings>;
  @useResult
  $Res call({double avg, int count});
}

/// @nodoc
class _$RatingsCopyWithImpl<$Res, $Val extends Ratings>
    implements $RatingsCopyWith<$Res> {
  _$RatingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ratings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? avg = null, Object? count = null}) {
    return _then(
      _value.copyWith(
            avg: null == avg
                ? _value.avg
                : avg // ignore: cast_nullable_to_non_nullable
                      as double,
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RatingsImplCopyWith<$Res> implements $RatingsCopyWith<$Res> {
  factory _$$RatingsImplCopyWith(
    _$RatingsImpl value,
    $Res Function(_$RatingsImpl) then,
  ) = __$$RatingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double avg, int count});
}

/// @nodoc
class __$$RatingsImplCopyWithImpl<$Res>
    extends _$RatingsCopyWithImpl<$Res, _$RatingsImpl>
    implements _$$RatingsImplCopyWith<$Res> {
  __$$RatingsImplCopyWithImpl(
    _$RatingsImpl _value,
    $Res Function(_$RatingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Ratings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? avg = null, Object? count = null}) {
    return _then(
      _$RatingsImpl(
        avg: null == avg
            ? _value.avg
            : avg // ignore: cast_nullable_to_non_nullable
                  as double,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingsImpl implements _Ratings {
  const _$RatingsImpl({this.avg = 0.0, this.count = 0});

  factory _$RatingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingsImplFromJson(json);

  @override
  @JsonKey()
  final double avg;
  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'Ratings(avg: $avg, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingsImpl &&
            (identical(other.avg, avg) || other.avg == avg) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, avg, count);

  /// Create a copy of Ratings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingsImplCopyWith<_$RatingsImpl> get copyWith =>
      __$$RatingsImplCopyWithImpl<_$RatingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingsImplToJson(this);
  }
}

abstract class _Ratings implements Ratings {
  const factory _Ratings({final double avg, final int count}) = _$RatingsImpl;

  factory _Ratings.fromJson(Map<String, dynamic> json) = _$RatingsImpl.fromJson;

  @override
  double get avg;
  @override
  int get count;

  /// Create a copy of Ratings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatingsImplCopyWith<_$RatingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Flags _$FlagsFromJson(Map<String, dynamic> json) {
  return _Flags.fromJson(json);
}

/// @nodoc
mixin _$Flags {
  bool get verified => throw _privateConstructorUsedError;
  bool get banned => throw _privateConstructorUsedError;

  /// Serializes this Flags to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Flags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlagsCopyWith<Flags> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlagsCopyWith<$Res> {
  factory $FlagsCopyWith(Flags value, $Res Function(Flags) then) =
      _$FlagsCopyWithImpl<$Res, Flags>;
  @useResult
  $Res call({bool verified, bool banned});
}

/// @nodoc
class _$FlagsCopyWithImpl<$Res, $Val extends Flags>
    implements $FlagsCopyWith<$Res> {
  _$FlagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Flags
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? verified = null, Object? banned = null}) {
    return _then(
      _value.copyWith(
            verified: null == verified
                ? _value.verified
                : verified // ignore: cast_nullable_to_non_nullable
                      as bool,
            banned: null == banned
                ? _value.banned
                : banned // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FlagsImplCopyWith<$Res> implements $FlagsCopyWith<$Res> {
  factory _$$FlagsImplCopyWith(
    _$FlagsImpl value,
    $Res Function(_$FlagsImpl) then,
  ) = __$$FlagsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool verified, bool banned});
}

/// @nodoc
class __$$FlagsImplCopyWithImpl<$Res>
    extends _$FlagsCopyWithImpl<$Res, _$FlagsImpl>
    implements _$$FlagsImplCopyWith<$Res> {
  __$$FlagsImplCopyWithImpl(
    _$FlagsImpl _value,
    $Res Function(_$FlagsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Flags
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? verified = null, Object? banned = null}) {
    return _then(
      _$FlagsImpl(
        verified: null == verified
            ? _value.verified
            : verified // ignore: cast_nullable_to_non_nullable
                  as bool,
        banned: null == banned
            ? _value.banned
            : banned // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FlagsImpl implements _Flags {
  const _$FlagsImpl({this.verified = false, this.banned = false});

  factory _$FlagsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlagsImplFromJson(json);

  @override
  @JsonKey()
  final bool verified;
  @override
  @JsonKey()
  final bool banned;

  @override
  String toString() {
    return 'Flags(verified: $verified, banned: $banned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlagsImpl &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.banned, banned) || other.banned == banned));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, verified, banned);

  /// Create a copy of Flags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlagsImplCopyWith<_$FlagsImpl> get copyWith =>
      __$$FlagsImplCopyWithImpl<_$FlagsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlagsImplToJson(this);
  }
}

abstract class _Flags implements Flags {
  const factory _Flags({final bool verified, final bool banned}) = _$FlagsImpl;

  factory _Flags.fromJson(Map<String, dynamic> json) = _$FlagsImpl.fromJson;

  @override
  bool get verified;
  @override
  bool get banned;

  /// Create a copy of Flags
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlagsImplCopyWith<_$FlagsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
