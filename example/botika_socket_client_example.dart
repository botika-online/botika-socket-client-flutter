import 'package:botika_socket_client/botika_socket_client.dart';

void main() {
  var socket = SocketClient('https://socket.example.com', {'token': 'example'});
  var channel = socket.channel('test');
  channel.on('message:create', (data) => print(data));
}
