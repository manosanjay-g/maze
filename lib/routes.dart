import 'package:flutter/material.dart';
import 'package:maze/screens/individual_chat_screen.dart';
import 'package:maze/screens/screens.dart';

var routes = <String, WidgetBuilder>{
  '/': (_) => HomeScreen(),
  '/individual_chat': (_) => IndividualChatScreen()
};
