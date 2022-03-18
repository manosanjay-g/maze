import 'package:flutter/material.dart';
import 'package:maze/helpers.dart';
import 'package:maze/models/message_model.dart';
import 'package:maze/theme.dart';
import 'package:maze/widgets/avatar_widget.dart';

class MessagesPage extends StatelessWidget {
  MessagesPage({Key? key}) : super(key: key);
  final List<MessageData> messages = [
    MessageData(
      senderName: "Missi",
      latestMessage: "What you doing?",
      latestMessageDate: DateTime.now(),
      dateMessage: "4 mins ago",
      profilePicture: Helpers.randomPictureUrl(),
    ),
    MessageData(
      senderName: "Sheldon",
      latestMessage: "I hate people",
      latestMessageDate: DateTime.now(),
      dateMessage: "10 mins ago",
      profilePicture: Helpers.randomPictureUrl(),
    ),
    MessageData(
      senderName: "Howard",
      latestMessage: "I hate peanuts",
      latestMessageDate: DateTime.now(),
      dateMessage: "14 mins ago",
      profilePicture: Helpers.randomPictureUrl(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return MesssageItem(
          messageData: messages[index],
        );
      }),
      itemCount: messages.length,
    );
  }
}

class MesssageItem extends StatelessWidget {
  const MesssageItem({
    Key? key,
    required this.messageData,
  }) : super(key: key);
  final MessageData messageData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/individual_chat');
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 15,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Avatar.medium(
                url: messageData.profilePicture,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      messageData.senderName,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        letterSpacing: 0.2,
                        wordSpacing: 1.5,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    child: Text(
                      messageData.latestMessage,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13,
                        color: AppColors.textFaded,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "4 mins ago",
                    style: const TextStyle(
                      fontSize: 11,
                      letterSpacing: -0.2,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textFaded,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 18,
                    height: 18,
                    decoration: const BoxDecoration(
                      color: AppColors.secondary,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        "2",
                        style: TextStyle(
                          fontSize: 10,
                          color: AppColors.textLigth,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
