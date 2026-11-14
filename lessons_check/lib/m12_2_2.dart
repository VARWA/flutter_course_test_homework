import 'package:web_socket_channel/status.dart' as ws_status;

await channel.sink.close(ws_status.normalClosure, 'Пользователь вышел');   // код 1000
