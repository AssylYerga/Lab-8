// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
  userId: (json['userId'] as num).toInt(),
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  body: json['body'] as String,
);

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
  'userId': instance.userId,
  'id': instance.id,
  'title': instance.title,
  'body': instance.body,
};
