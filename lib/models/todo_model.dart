import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.freezed.dart';

part 'todo_model.g.dart';

@freezed
abstract class Todo with _$Todo {
  const factory Todo({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    required int status,
    required String title,
    required String description,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'deadline_date') DateTime? deadlineDate,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'status_name') required String statusName,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}

extension TodoExt on Todo {
  bool get isDone => status == 2;

  Todo copyWithStatus(bool isDone) {
    return copyWith(status: isDone ? 2 : 0);
  }
}
