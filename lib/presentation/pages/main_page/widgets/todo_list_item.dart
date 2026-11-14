import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/providers/todo_provider.dart';

import '../../../../models/todo_model.dart';

class TodoListItem extends StatelessWidget {
  final Todo todo;

  const TodoListItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(todo.title),
      subtitle: Text(todo.description),
      value: todo.isDone,
      onChanged: (bool? value) {
        if (value == null) return;
        context.read<TodoProvider>().changeTodoStatus(todo.id, value);
      },
    );
  }
}
