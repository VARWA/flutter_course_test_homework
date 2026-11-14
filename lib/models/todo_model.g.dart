// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Todo _$TodoFromJson(Map<String, dynamic> json) => _Todo(
  id: (json['id'] as num).toInt(),
  userId: (json['user_id'] as num).toInt(),
  status: (json['status'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  deadlineDate: json['deadline_date'] == null
      ? null
      : DateTime.parse(json['deadline_date'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  statusName: json['status_name'] as String,
);

Map<String, dynamic> _$TodoToJson(_Todo instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'status': instance.status,
  'title': instance.title,
  'description': instance.description,
  'created_at': instance.createdAt.toIso8601String(),
  'deadline_date': instance.deadlineDate?.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'status_name': instance.statusName,
};
