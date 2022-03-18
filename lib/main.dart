import 'dart:html';

import 'package:flutter/material.dart';
import 'package:maze/app.dart';
import 'package:maze/routes.dart';

import 'package:maze/theme.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';
import 'screens/screens.dart';

void main() {
  final client = StreamChatClient(streamKey);
  runApp(MyApp(
    client: client,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.client}) : super(key: key);
  final StreamChatClient client;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      debugShowCheckedModeBanner: false,
      title: 'Chatter',
      builder: (context, child) {
        return StreamChatCore(client: client, child: child!);
      },
      initialRoute: '/',
      theme: AppTheme.dark(),
      themeMode: ThemeMode.dark,
    );
  }
}
