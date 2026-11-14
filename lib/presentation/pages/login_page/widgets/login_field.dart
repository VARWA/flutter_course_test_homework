import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  final TextEditingController controller;

  const LoginField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 17),
      child: TextField(controller: controller),
    );
  }
}
