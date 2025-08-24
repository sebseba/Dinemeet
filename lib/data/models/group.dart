import 'package:freezed_annotation/freezed_annotation.dart';

part 'group.freezed.dart';
part 'group.g.dart';

@freezed
class Group with _$Group {
  const factory Group({
    required String groupId,
    @Default('1v1') String mode, // "1v1", "2v2", "3v3"
    @Default([]) List<String> participantUids,
    @Default('pending') String status, // "pending", "confirmed", "cancelled", "completed"
    String? reservationRef,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}
