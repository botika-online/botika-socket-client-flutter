///
/// botika_socket_client.dart
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

library botika_socket_client;

import 'src/socket.dart';

export 'src/socket.dart';

SocketClient client(String baseUrl, Map<String, String> auth) =>
    SocketClient(baseUrl, auth);
