import 'package:flutter/material.dart';
import 'package:maze/routes.dart';

import 'package:maze/theme.dart';
import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      debugShowCheckedModeBanner: false,
      title: 'Chatter',
      initialRoute: '/',
      theme: AppTheme.dark(),
      themeMode: ThemeMode.dark,
    );
  }
}
