import 'package:botika_socket_client/botika_socket_client.dart';
import 'package:socket_io_client/socket_io_client.dart' as socket_io_client;
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final socket =
        SocketClient('https://socket.example.com', {'token': 'example'});

    setUp(() {
      // Additional setup goes here.
    });

    test('Return Channel', () {
      expect(socket.channel('test'), isA<socket_io_client.Socket>());
    });
  });
}
