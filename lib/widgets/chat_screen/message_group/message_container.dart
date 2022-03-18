import 'package:flutter/material.dart';
import 'package:maze/models/message_model.dart';
import 'package:maze/theme.dart';

class MessageContainer extends StatelessWidget {
  const MessageContainer(
      {Key? key, required this.messageData, required this.isSenderMessage})
      : super(key: key);
  final MessageData messageData;
  final bool isSenderMessage;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSenderMessage == true
          ? Alignment.centerLeft
          : Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: isSenderMessage == true
              ? AppColors.cardDark
              : AppColors.secondary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
            bottomLeft:
                isSenderMessage == true ? Radius.zero : Radius.circular(20.0),
            bottomRight:
                isSenderMessage == false ? Radius.zero : Radius.circular(20.0),
          ),
        ),
        child: Text(messageData.latestMessage),
      ),
    );
  }
}
