import 'package:web_socket_channel/web_socket_channel.dart';

Future<void> demo() async {
  final channel = WebSocketChannel.connect(Uri.parse('wss://echo.websocket.org'));

  // Ждём, пока завершится handshake (или поймаем ошибку подключения)
  await channel.ready;

  // Отправка
  channel.sink.add('Станок №5: проверка связи');

  // Приём
  channel.stream.listen(
    (message) => print('Получено: $message'),
    onError: (e) => print('Ошибка: $e'),
    onDone: () => print('Закрыто: ${channel.closeCode} ${channel.closeReason}'),
  );
}
