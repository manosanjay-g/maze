import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maze/models/message_model.dart';

import '../helpers.dart';
import '../widgets/avatar_widget.dart';

class IndividualChatScreen extends StatelessWidget {
  IndividualChatScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map;

    final MessageData messageData = args['messageData'];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Avatar.small(url: messageData.profilePicture),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  messageData.senderName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Online",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.green),
                ),
              ],
            ),
          ],
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(5),
            child: Icon(
              CupertinoIcons.back,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.phone),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.video_camera),
          ),
        ],
      ),
      body: Center(
        child: Text("Chat Screen"),
      ),
    );
  }
}
