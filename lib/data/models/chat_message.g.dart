// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      messageId: json['messageId'] as String,
      senderUid: json['senderUid'] as String,
      text: json['text'] as String,
      type: json['type'] as String? ?? 'text',
      sentAt: json['sentAt'] == null
          ? null
          : DateTime.parse(json['sentAt'] as String),
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'senderUid': instance.senderUid,
      'text': instance.text,
      'type': instance.type,
      'sentAt': instance.sentAt?.toIso8601String(),
    };
