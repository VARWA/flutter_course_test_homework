import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/models/todo_model.dart';

void main() {
  test('Todo.fromJson разбирает ответ сервера', () {
    final todo = Todo.fromJson({
      'id': 1,
      'user_id': 7,
      'status': 2,
      'title': 'Проверить станок',
      'description': 'Смена 2',
      'created_at': '2026-01-01T10:00:00Z',
      'deadline_date': null,
      'updated_at': '2026-01-01T11:00:00Z',
      'status_name': 'Выполнена',
    });
    expect(todo.isDone, isTrue);
    expect(todo.deadlineDate, isNull);
    expect(todo.copyWithStatus(false).status, 0);
  });
}
