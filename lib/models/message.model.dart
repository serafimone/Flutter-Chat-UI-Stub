import 'package:message_vk/models/user.model.dart';

class Message {
  final User sender;
  final String text;
  final bool isRead;
  final String time;

  Message({
    this.sender, 
    this.text, 
    this.isRead,
    this.time
    });
}