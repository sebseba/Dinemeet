// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Survey _$SurveyFromJson(Map<String, dynamic> json) {
  return _Survey.fromJson(json);
}

/// @nodoc
mixin _$Survey {
  String get surveyId => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  String get resId => throw _privateConstructorUsedError;
  String get respondentUid => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError; // 1-5
  int get chemistry => throw _privateConstructorUsedError; // 1-5
  bool get wouldMeetAgain => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String? get feedback => throw _privateConstructorUsedError;
  DateTime? get submittedAt => throw _privateConstructorUsedError;

  /// Serializes this Survey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Survey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurveyCopyWith<Survey> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyCopyWith<$Res> {
  factory $SurveyCopyWith(Survey value, $Res Function(Survey) then) =
      _$SurveyCopyWithImpl<$Res, Survey>;
  @useResult
  $Res call({
    String surveyId,
    String groupId,
    String resId,
    String respondentUid,
    int rating,
    int chemistry,
    bool wouldMeetAgain,
    List<String> tags,
    String? feedback,
    DateTime? submittedAt,
  });
}

/// @nodoc
class _$SurveyCopyWithImpl<$Res, $Val extends Survey>
    implements $SurveyCopyWith<$Res> {
  _$SurveyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Survey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surveyId = null,
    Object? groupId = null,
    Object? resId = null,
    Object? respondentUid = null,
    Object? rating = null,
    Object? chemistry = null,
    Object? wouldMeetAgain = null,
    Object? tags = null,
    Object? feedback = freezed,
    Object? submittedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            surveyId: null == surveyId
                ? _value.surveyId
                : surveyId // ignore: cast_nullable_to_non_nullable
                      as String,
            groupId: null == groupId
                ? _value.groupId
                : groupId // ignore: cast_nullable_to_non_nullable
                      as String,
            resId: null == resId
                ? _value.resId
                : resId // ignore: cast_nullable_to_non_nullable
                      as String,
            respondentUid: null == respondentUid
                ? _value.respondentUid
                : respondentUid // ignore: cast_nullable_to_non_nullable
                      as String,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as int,
            chemistry: null == chemistry
                ? _value.chemistry
                : chemistry // ignore: cast_nullable_to_non_nullable
                      as int,
            wouldMeetAgain: null == wouldMeetAgain
                ? _value.wouldMeetAgain
                : wouldMeetAgain // ignore: cast_nullable_to_non_nullable
                      as bool,
            tags: null == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            feedback: freezed == feedback
                ? _value.feedback
                : feedback // ignore: cast_nullable_to_non_nullable
                      as String?,
            submittedAt: freezed == submittedAt
                ? _value.submittedAt
                : submittedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SurveyImplCopyWith<$Res> implements $SurveyCopyWith<$Res> {
  factory _$$SurveyImplCopyWith(
    _$SurveyImpl value,
    $Res Function(_$SurveyImpl) then,
  ) = __$$SurveyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String surveyId,
    String groupId,
    String resId,
    String respondentUid,
    int rating,
    int chemistry,
    bool wouldMeetAgain,
    List<String> tags,
    String? feedback,
    DateTime? submittedAt,
  });
}

/// @nodoc
class __$$SurveyImplCopyWithImpl<$Res>
    extends _$SurveyCopyWithImpl<$Res, _$SurveyImpl>
    implements _$$SurveyImplCopyWith<$Res> {
  __$$SurveyImplCopyWithImpl(
    _$SurveyImpl _value,
    $Res Function(_$SurveyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Survey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surveyId = null,
    Object? groupId = null,
    Object? resId = null,
    Object? respondentUid = null,
    Object? rating = null,
    Object? chemistry = null,
    Object? wouldMeetAgain = null,
    Object? tags = null,
    Object? feedback = freezed,
    Object? submittedAt = freezed,
  }) {
    return _then(
      _$SurveyImpl(
        surveyId: null == surveyId
            ? _value.surveyId
            : surveyId // ignore: cast_nullable_to_non_nullable
                  as String,
        groupId: null == groupId
            ? _value.groupId
            : groupId // ignore: cast_nullable_to_non_nullable
                  as String,
        resId: null == resId
            ? _value.resId
            : resId // ignore: cast_nullable_to_non_nullable
                  as String,
        respondentUid: null == respondentUid
            ? _value.respondentUid
            : respondentUid // ignore: cast_nullable_to_non_nullable
                  as String,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as int,
        chemistry: null == chemistry
            ? _value.chemistry
            : chemistry // ignore: cast_nullable_to_non_nullable
                  as int,
        wouldMeetAgain: null == wouldMeetAgain
            ? _value.wouldMeetAgain
            : wouldMeetAgain // ignore: cast_nullable_to_non_nullable
                  as bool,
        tags: null == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        feedback: freezed == feedback
            ? _value.feedback
            : feedback // ignore: cast_nullable_to_non_nullable
                  as String?,
        submittedAt: freezed == submittedAt
            ? _value.submittedAt
            : submittedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SurveyImpl implements _Survey {
  const _$SurveyImpl({
    required this.surveyId,
    required this.groupId,
    required this.resId,
    required this.respondentUid,
    required this.rating,
    required this.chemistry,
    required this.wouldMeetAgain,
    final List<String> tags = const [],
    this.feedback,
    this.submittedAt,
  }) : _tags = tags;

  factory _$SurveyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurveyImplFromJson(json);

  @override
  final String surveyId;
  @override
  final String groupId;
  @override
  final String resId;
  @override
  final String respondentUid;
  @override
  final int rating;
  // 1-5
  @override
  final int chemistry;
  // 1-5
  @override
  final bool wouldMeetAgain;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String? feedback;
  @override
  final DateTime? submittedAt;

  @override
  String toString() {
    return 'Survey(surveyId: $surveyId, groupId: $groupId, resId: $resId, respondentUid: $respondentUid, rating: $rating, chemistry: $chemistry, wouldMeetAgain: $wouldMeetAgain, tags: $tags, feedback: $feedback, submittedAt: $submittedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyImpl &&
            (identical(other.surveyId, surveyId) ||
                other.surveyId == surveyId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.resId, resId) || other.resId == resId) &&
            (identical(other.respondentUid, respondentUid) ||
                other.respondentUid == respondentUid) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.chemistry, chemistry) ||
                other.chemistry == chemistry) &&
            (identical(other.wouldMeetAgain, wouldMeetAgain) ||
                other.wouldMeetAgain == wouldMeetAgain) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    surveyId,
    groupId,
    resId,
    respondentUid,
    rating,
    chemistry,
    wouldMeetAgain,
    const DeepCollectionEquality().hash(_tags),
    feedback,
    submittedAt,
  );

  /// Create a copy of Survey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyImplCopyWith<_$SurveyImpl> get copyWith =>
      __$$SurveyImplCopyWithImpl<_$SurveyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurveyImplToJson(this);
  }
}

abstract class _Survey implements Survey {
  const factory _Survey({
    required final String surveyId,
    required final String groupId,
    required final String resId,
    required final String respondentUid,
    required final int rating,
    required final int chemistry,
    required final bool wouldMeetAgain,
    final List<String> tags,
    final String? feedback,
    final DateTime? submittedAt,
  }) = _$SurveyImpl;

  factory _Survey.fromJson(Map<String, dynamic> json) = _$SurveyImpl.fromJson;

  @override
  String get surveyId;
  @override
  String get groupId;
  @override
  String get resId;
  @override
  String get respondentUid;
  @override
  int get rating; // 1-5
  @override
  int get chemistry; // 1-5
  @override
  bool get wouldMeetAgain;
  @override
  List<String> get tags;
  @override
  String? get feedback;
  @override
  DateTime? get submittedAt;

  /// Create a copy of Survey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurveyImplCopyWith<_$SurveyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
