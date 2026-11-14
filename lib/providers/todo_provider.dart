import 'dart:developer';

import 'package:flutter/foundation.dart';
import '../models/creating_todo_model.dart';
import '../models/todo_model.dart';
import '../repositories/todo_repository.dart';

class TodoProvider with ChangeNotifier {
  List<Todo> _todos = [];
  final TodoRepository _todoRepository;
  int _offset = 0;
  final int _limit = 10;
  bool _hasMore = true;

  List<Todo> get todos => _todos;

  bool get hasMore => _hasMore;

  TodoProvider(this._todoRepository);

  Future<void> fetchTodos({bool loadMore = false}) async {
    if (loadMore && !_hasMore) return;

    try {
      final newTodos = await _todoRepository.fetchTodos(
        limit: _limit,
        offset: loadMore ? _offset : 0,
      );
      if (loadMore) {
        _todos.addAll(newTodos);
        _offset += newTodos.length;
      } else {
        _todos = newTodos;
        _offset = newTodos.length;
      }
      _hasMore = newTodos.length == _limit;
      notifyListeners();
    } catch (e, stackTrace) {
      log('Ошибка при загрузке задач: $e', stackTrace: stackTrace);
      _hasMore = false;
      notifyListeners();
    }
  }

  Future<void> changeTodoStatus(int id, bool isDone) async {
    try {
      final success = await _todoRepository.changeTodoStatus(id, isDone);
      if (success) {
        final index = _todos.indexWhere((todo) => todo.id == id);
        if (index != -1) {
          _todos[index] = _todos[index].copyWithStatus(isDone);
          notifyListeners();
        }
      }
    } catch (e, stackTrace) {
      log('Ошибка при обновлении статуса задачи: $e', stackTrace: stackTrace);
    }
  }

  Future<void> addTodo(CreatingTodo todo) async {
    try {
      await _todoRepository.addTodo(todo);
      await fetchTodos(); // Обновляем список после добавления
      notifyListeners();
    } catch (e, stackTrace) {
      log('Ошибка при добавлении задачи: $e', stackTrace: stackTrace);
    }
  }
}
