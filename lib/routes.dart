import 'package:flutter/material.dart';
import 'package:maze/ui/screens/individual_chat_screen.dart';
import 'package:maze/ui/screens/screens.dart';

var routes = <String, WidgetBuilder>{
  '/': (_) => HomeScreen(),
  '/individual_chat': (_) => IndividualChatScreen()
};
