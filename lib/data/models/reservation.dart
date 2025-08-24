import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation.freezed.dart';
part 'reservation.g.dart';

@freezed
class Reservation with _$Reservation {
  const factory Reservation({
    required String resId,
    required String venueName,
    required String venueArea,
    required DateTime date,
    required String time,
    required String groupId,
    String? notes,
    @Default('proposed') String status, // "proposed", "locked", "cancelled"
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Reservation;

  factory Reservation.fromJson(Map<String, dynamic> json) => _$ReservationFromJson(json);
}
