import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class Client {
  Client(this.nick, this.channel);
  final String nick;
  final WebSocketChannel channel;
}

class Room {
  final clients = <Client>[];
  final history = <Map<String, dynamic>>[];
  int _counter = 0;

  String nextId() => 'm-${++_counter}';
  List<String> get online => clients.map((c) => c.nick).toList();

  void broadcast(Map<String, dynamic> event, {Client? except}) {
    final text = jsonEncode(event);
    for (final c in clients) {
      if (c != except) c.channel.sink.add(text);
    }
  }
}

final rooms = <String, Room>{};

void main() async {
  final router = Router()
    ..get('/ws/<room>', _wsHandler)
    ..get('/rooms/<room>/messages', _historyHandler);

  final server = await io.serve(router.call, InternetAddress.anyIPv4, 8080);
  print('Сервер запущен: http://localhost:${server.port}');
}

Response _historyHandler(Request request, String room) {
  final history = rooms[room]?.history ?? const [];
  final after = DateTime.tryParse(request.url.queryParameters['after'] ?? '');
  final result = history.where((m) {
    if (after == null) return true;
    return DateTime.parse(m['createdAt'] as String).isAfter(after);
  }).toList();
  return Response.ok(jsonEncode(result), headers: {'content-type': 'application/json'});
}

FutureOr<Response> _wsHandler(Request request, String roomName) {
  final nick = request.url.queryParameters['nick'] ?? 'guest';
  final room = rooms.putIfAbsent(roomName, Room.new);

  return webSocketHandler((WebSocketChannel channel, String? _) {
    final me = Client(nick, channel);
    room.clients.add(me);
    room.broadcast({'type': 'user_joined', 'payload': {'user': nick, 'online': room.online}});

    channel.stream.listen(
      (raw) {
        final json = jsonDecode(raw as String) as Map<String, dynamic>;
        final payload = (json['payload'] as Map?)?.cast<String, dynamic>() ?? {};

        switch (json['type']) {
          case 'message':
            final id = room.nextId();
            final createdAt = DateTime.now().toUtc().toIso8601String();
            final message = {'id': id, 'user': nick, 'text': payload['text'], 'createdAt': createdAt};
            room.history.add(message);

            // 1. Автору: подтверждение
            channel.sink.add(jsonEncode({
              'type': 'ack',
              'payload': {'clientId': payload['clientId'], 'id': id, 'createdAt': createdAt},
            }));
            // 2. Остальным: само сообщение
            room.broadcast({'type': 'message', 'payload': message}, except: me);

          case 'typing':
            room.broadcast({'type': 'typing', 'payload': {'user': nick}}, except: me);
        }
      },
      onDone: () {
        room.clients.remove(me);
        room.broadcast({'type': 'user_left', 'payload': {'user': nick, 'online': room.online}});
      },
    );
  })(request);
}
