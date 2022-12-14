///
/// socket.dart
///
/// Purpose:
///
/// Description:
///
/// History:
///   11/09/2022, Created by andripgbyk
///
/// Copyright (C) 2022 Botika Online. All Rights Reserved.
///

import 'package:socket_io_client/socket_io_client.dart' as socket_io_client;

///
/// `SocketClient` constructor.
///
/// @api public
class SocketClient {
  String baseUrl;
  Map auth;

  /// Constructor
  SocketClient(this.baseUrl, this.auth);

  ///
  /// Subscribe to channel
  ///
  /// @api private
  socket_io_client.Socket channel(String name, [opts]) {
    return socket_io_client.io(
        '$baseUrl/$name',
        socket_io_client.OptionBuilder()
            .setAuth(auth)
            .setTransports(['websocket'])
            .disableForceNew()
            .disableForceNewConnection()
            .enableMultiplex()
            .build());
  }
}
