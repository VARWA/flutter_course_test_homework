// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creating_todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatingTodo _$CreatingTodoFromJson(Map<String, dynamic> json) =>
    _CreatingTodo(
      title: json['title'] as String,
      description: json['description'] as String,
      deadlineDate: _dateTimeFromJson(json['deadline_date'] as String?),
    );

Map<String, dynamic> _$CreatingTodoToJson(_CreatingTodo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'deadline_date': _dateTimeToJson(instance.deadlineDate),
    };
