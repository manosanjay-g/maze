import 'package:flutter/material.dart';
import 'package:maze/routes.dart';
import 'package:maze/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      debugShowCheckedModeBanner: false,
      title: 'Maze',
      initialRoute: '/',
      theme: AppTheme.dark(),
      themeMode: ThemeMode.dark,
    );
  }
}
