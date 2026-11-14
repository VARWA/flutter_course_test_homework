import 'dart:convert';

import 'package:dio/dio.dart';

import '../models/creating_todo_model.dart';
import '../models/todo_model.dart';
import 'auth_repository.dart';

class TodoRepository {
  final AuthRepository _authRepository;
  final Dio _dio;

  TodoRepository(this._authRepository, this._dio);

  Future<List<Todo>> fetchTodos({
    required int limit,
    required int offset,
  }) async {
    final token = await _authRepository.getToken();
    final response = await _dio.get(
      '/task/',
      queryParameters: {'token': token, 'limit': limit, 'offset': offset},
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.data)['task_list'];
      return data.map((json) => Todo.fromJson(json)).toList();
    }
    throw Exception('Список задач не найден');
  }

  Future<bool> changeTodoStatus(int id, bool isDone) async {
    final token = await _authRepository.getToken();
    final response = await _dio.post(
      '/task/$id/status',
      queryParameters: {'token': token},
      data: {'new_status': isDone ? 2 : 0},
    );

    return response.statusCode == 200;
  }

  Future<void> addTodo(CreatingTodo todo) async {
    final token = await _authRepository.getToken();
    final response = await _dio.post(
      '/task/',
      queryParameters: {'token': token},
      data: todo.toJson(),
    );

    if (response.statusCode == 200) return;
    throw Exception('Не удалось добавить задачу');
  }
}
