import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/creating_todo_model.dart';
import 'package:todo_app/presentation/pages/edit_page/widgets/description_field.dart';
import 'package:todo_app/presentation/pages/edit_page/widgets/title_field.dart';
import 'package:todo_app/providers/todo_provider.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  void _onSubmit() {
    FocusScope.of(context).unfocus();

    if (_titleController.text.trim().isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Введите заголовок')));
      return;
    }

    context.read<TodoProvider>().addTodo(
      CreatingTodo(
        title: _titleController.text.trim(),
        description: _descriptionController.text.trim(),
      ),
    );
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: FilledButton(onPressed: _onSubmit, child: Text('Готово')),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            TitleField(controller: _titleController),
            DescriptionField(controller: _descriptionController),
          ],
        ),
      ),
    );
  }
}
