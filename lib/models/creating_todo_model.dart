import 'package:freezed_annotation/freezed_annotation.dart';

part 'creating_todo_model.freezed.dart';

part 'creating_todo_model.g.dart';

@freezed
abstract class CreatingTodo with _$CreatingTodo {
  const factory CreatingTodo({
    required String title,
    required String description,
    @JsonKey(
      name: 'deadline_date',
      fromJson: _dateTimeFromJson,
      toJson: _dateTimeToJson,
    )
    DateTime? deadlineDate,
  }) = _CreatingTodo;

  factory CreatingTodo.fromJson(Map<String, dynamic> json) =>
      _$CreatingTodoFromJson(json);
}

DateTime? _dateTimeFromJson(String? date) =>
    date == null ? null : DateTime.parse(date);

String _dateTimeToJson(DateTime? date) =>
    (date ?? DateTime.now()).toUtc().toIso8601String();
