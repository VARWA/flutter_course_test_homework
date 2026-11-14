import 'package:fake_async/fake_async.dart';

test('debounce запускает поиск детали через 300 мс после последнего ввода артикула', () {
  fakeAsync((async) {
    var calls = 0;
    final debouncer = Debouncer(const Duration(milliseconds: 300), () => calls++);

    debouncer.run();
    async.elapse(const Duration(milliseconds: 200));
    expect(calls, 0);               // ещё рано

    async.elapse(const Duration(milliseconds: 150));
    expect(calls, 1);               // сработало
  });
});
