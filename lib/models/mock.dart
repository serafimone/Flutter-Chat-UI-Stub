import 'package:message_vk/models/user.model.dart';
import 'message.model.dart';

final User currentUser = User(id: 0, name: "You", imageUrl: "");

final User john = User(id: 1, name: "John", imageUrl: "assets/images/john.jpg");

final User greg = User(id: 2, name: "Greg", imageUrl: "assets/images/greg.jpg");

final User anastasia = User(id: 3, name: "Anastasia", imageUrl: "assets/images/anastasia.jpg");

final User james = User(id: 4, name: "James", imageUrl: "assets/images/james.jpg");

final List<Message> chats = [
  Message(
    sender: john,
    text: "Hello there!",
    time: "16:30",
    isRead: true,
  ),
    Message(
    sender: greg,
    text: "Hello there!",
    time: "16:30",
    isRead: false,
  ),
    Message(
    sender: anastasia,
    text: "Hello there!",
    time: "16:30",
    isRead: false,
  ),
    Message(
    sender: james,
    text: "Hello there!",
    time: "16:30",
    isRead: false,
  ),
];

final List<Message> chat = [
    Message(
      sender: james,
      text: "Hello there!",
      time: "16:30",
      isRead: false,
    ),
    Message(
      sender: currentUser,
      text: "Sup!",
      time: "16:30",
      isRead: false,
    ),
    Message(
      sender: james,
      text: "Hello there!",
      time: "16:30",
      isRead: false,
    ),
    Message(
      sender: currentUser,
      text: "Sup!",
      time: "16:30",
      isRead: false,
    ),
    Message(
      sender: james,
      text: "Hello there!",
      time: "16:30",
      isRead: false,
    ),
    Message(
      sender: currentUser,
      text: "Sup!",
      time: "16:30",
      isRead: false,
    ),
    Message(
      sender: james,
      text: "Hello there!",
      time: "16:30",
      isRead: false,
    ),
];
