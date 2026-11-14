import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'work_order_repository_test.mocks.dart';   // сгенерированный файл

@GenerateMocks([WorkOrderRepository])
void main() {
  test('...', () async {
    final repo = MockWorkOrderRepository();
    when(repo.getWorkOrders()).thenAnswer((_) async => []);

    // ...
    verify(repo.getWorkOrders()).called(1);
  });
}
