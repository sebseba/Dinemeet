import 'package:freezed_annotation/freezed_annotation.dart';

part 'survey.freezed.dart';
part 'survey.g.dart';

@freezed
class Survey with _$Survey {
  const factory Survey({
    required String surveyId,
    required String groupId,
    required String resId,
    required String respondentUid,
    required int rating, // 1-5
    required int chemistry, // 1-5
    required bool wouldMeetAgain,
    @Default([]) List<String> tags,
    String? feedback,
    DateTime? submittedAt,
  }) = _Survey;

  factory Survey.fromJson(Map<String, dynamic> json) => _$SurveyFromJson(json);
}
