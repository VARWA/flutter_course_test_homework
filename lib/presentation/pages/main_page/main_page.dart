import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/presentation/pages/main_page/widgets/todo_list_item.dart';
import 'package:todo_app/providers/auth_provider.dart';

import '../../../models/todo_model.dart';
import '../../../providers/todo_provider.dart';
import '../edit_page/edit_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<TodoProvider>().fetchTodos();
    });
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        context.read<TodoProvider>().fetchTodos(loadMore: true);
      }
    });
  }

  Future<void> _onRefresh() async {
    await context.read<TodoProvider>().fetchTodos();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final todoProvider = context.watch<TodoProvider>();
    final List<Todo> todos = todoProvider.todos;
    final bool hasMore = todoProvider.hasMore;

    return Scaffold(
      appBar: AppBar(
        title: Text('Задачи - ${todos.length}'),
        actions: [_LogoutButton()],
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: ListView.separated(
          // Для работы RefreshIndicator
          physics: AlwaysScrollableScrollPhysics(),
          controller: _scrollController,
          itemCount: todos.length + (hasMore ? 1 : 0),
          itemBuilder: (context, index) {
            if (index == todos.length && hasMore) {
              return const Center(child: CircularProgressIndicator());
            }
            return TodoListItem(todo: todos[index]);
          },
          separatorBuilder: (context, _) => _Divider(),
        ),
      ),
      floatingActionButton: _AddTodoFloatingActionButton(),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: const Divider(),
    );
  }
}

class _AddTodoFloatingActionButton extends StatelessWidget {
  const _AddTodoFloatingActionButton();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => EditPage()));
      },
      child: const Icon(Icons.add),
    );
  }
}

class _LogoutButton extends StatelessWidget {
  const _LogoutButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.read<AuthProvider>().logout(),
      icon: Icon(Icons.logout, color: Colors.grey),
    );
  }
}
