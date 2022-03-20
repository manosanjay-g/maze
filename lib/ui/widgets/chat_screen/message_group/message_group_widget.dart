import 'package:flutter/material.dart';
import 'package:maze/models/message_model.dart';
import 'package:maze/ui/widgets/widgets.dart';

class MessageGroup extends StatelessWidget {
  const MessageGroup(
      {Key? key, required this.messageData, required this.messageGroupDate})
      : super(key: key);
  final MessageData messageData;
  final String messageGroupDate;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DateChip(date: messageGroupDate),
        MessageContainer(messageData: messageData, isSenderMessage: true),
        MessageContainer(messageData: messageData, isSenderMessage: false),
      ],
    );
  }
}
