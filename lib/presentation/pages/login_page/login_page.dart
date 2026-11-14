import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/presentation/pages/login_page/widgets/login_field.dart';
import 'package:todo_app/presentation/pages/login_page/widgets/password_field.dart';
import 'package:todo_app/presentation/pages/login_page/widgets/text_content.dart';
import '../../../providers/auth_provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _loading = false;
  String? _error;

  Future<void> _handleLogin() async {
    final email = _loginController.text.trim();
    final password = _passwordController.text;

    setState(() {
      _loading = true;
      _error = null;
    });

    final success = await context.read<AuthProvider>().login(email, password);

    if (!success) {
      setState(() {
        _error = 'Ошибка входа. Проверьте логин и пароль.';
        _loading = false;
      });
    }
    // если вход успешен — переход произойдёт автоматически в MyApp
  }

  @override
  void dispose() {
    _loginController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 63),
                    child: TextContent(),
                  ),
                ),
                LoginField(controller: _loginController),
                PasswordField(controller: _passwordController),
                if (_error != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      _error!,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SafeArea(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: FilledButton(
                      onPressed: _loading ? null : _handleLogin,
                      child: _loading
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Text('Войти'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
