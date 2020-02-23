import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:message_vk/widgets/category_selector.dart';
import 'package:message_vk/widgets/messages_list.dart';

class ChatMainPage extends StatefulWidget {
  ChatMainPage({Key key}) : super(key: key);

  @override
  _ChatMainPageState createState() => _ChatMainPageState();
}

class _ChatMainPageState extends State<ChatMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          "Chats",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
        ],
      ),
      body: Column(children: <Widget>[
        CategorySelector(),
        MessagesList(),
      ]),
    );
  }
}
