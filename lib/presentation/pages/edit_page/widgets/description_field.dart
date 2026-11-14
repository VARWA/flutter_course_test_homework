import 'package:flutter/material.dart';

class DescriptionField extends StatelessWidget {
  final TextEditingController controller;

  const DescriptionField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,

      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Описание',
        hintStyle: TextStyle(fontSize: 18, color: Colors.black54),
      ),
    );
  }
}
