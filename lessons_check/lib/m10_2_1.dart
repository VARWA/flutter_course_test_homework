import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('счётчик деталей растёт после нажатия на кнопку', (tester) async {
    // 1. Показываем виджет
    await tester.pumpWidget(const MaterialApp(home: PartCounterPage()));

    // 2. Исходное состояние
    expect(find.text('0'), findsOneWidget);

    // 3. Нажимаем и ждём перерисовки
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // 4. Проверяем результат
    expect(find.text('1'), findsOneWidget);
    expect(find.text('0'), findsNothing);
  });
}
