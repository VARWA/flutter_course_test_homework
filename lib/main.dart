import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/presentation/pages/login_page/login_page.dart';
import 'package:todo_app/presentation/pages/main_page/main_page.dart';
import 'package:todo_app/providers/auth_provider.dart';
import 'package:todo_app/providers/todo_provider.dart';
import 'package:todo_app/repositories/auth_repository.dart';
import 'package:todo_app/repositories/todo_repository.dart';

import 'services/dio_client.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 1. Создаём Dio и репозитории
  final dioClient = DioClient();
  final authRepository = AuthRepository(dioClient.dio);
  final todoRepository = TodoRepository(authRepository, dioClient.dio);

  // 2. Создаём провайдеры
  final authProvider = AuthProvider(authRepository);
  await authProvider.init(); // Проверка токена

  final todoProvider = TodoProvider(todoRepository);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>.value(value: authProvider),
        ChangeNotifierProvider<TodoProvider>.value(value: todoProvider),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final isAuthenticated = context.watch<AuthProvider>().isAuthenticated;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo app',
      home: isAuthenticated ? MainPage() : LoginPage(),
    );
  }
}
