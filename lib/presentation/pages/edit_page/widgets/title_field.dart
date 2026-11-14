import 'package:flutter/material.dart';

class TitleField extends StatelessWidget {
  final TextEditingController controller;

  const TitleField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Название задачи',
        hintStyle: TextStyle(fontSize: 22, color: Colors.black),
      ),
    );
  }
}
