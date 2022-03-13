class MessageData {
  final String senderName;
  final String latestMessage;
  final DateTime latestMessageDate;
  final String dateMessage;
  final String profilePicture;

  MessageData({
    required this.senderName,
    required this.latestMessage,
    required this.latestMessageDate,
    required this.dateMessage,
    required this.profilePicture,
  });
}
