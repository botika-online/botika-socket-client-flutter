# Botika Socket Flutter Client

This is the Botika Socket Flutter client.

## Example Application

By cloning this repository you can check the Flutter example application,
a minimal application to connect to a channel and receive events.

- <https://github.com/botika-online/botika-socket-client-flutter/tree/main/example>

## Installation

To integrate the plugin in your Flutter App, you need
to add the plugin to your `pubspec.yaml`:

```yaml
dependencies:
  botika_socket_client: '^1.0.0'
```

## Initialization

```dart
import 'package:botika_socket_client/botika_socket_client.dart' as Socket;

main() {
  var socket = Socket.client('https://socket.example.com', {'token': 'example'}) // or Socket.SocketClient('https://socket.example.com', {'token': 'example'});
  var channel = socket.channel('my-channel');
  channel.on('event', (data) => print(data));
}
```
