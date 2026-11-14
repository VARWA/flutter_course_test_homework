import 'package:flutter/material.dart';
import 'package:todo_app/theme/app_colors.dart';

import '../../../../theme/text_styles.dart';

class TextContent extends StatelessWidget {
  const TextContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
      width: double.infinity,
      child: Center(
        child: Column(
          spacing: 12,
          children: [
            Padding(
              padding: const EdgeInsets.all(2),
              child: Text(
                'Вход в приложение',
                style: TextStyles.title1.copyWith(color: AppColors.totalBlack),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Text('Введите логин и пароль'),
            ),
          ],
        ),
      ),
    );
  }
}
